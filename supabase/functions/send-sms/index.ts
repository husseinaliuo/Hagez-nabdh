import { Webhook } from 'https://esm.sh/standardwebhooks@1.0.0'

const OTPIQ_API = 'https://api.otpiq.com/api/sms'

Deno.serve(async (req) => {
  try {
    const payload = await req.text()
    const hookSecret = (Deno.env.get('SEND_SMS_HOOK_SECRET') || '').replace('v1,whsec_', '')
    const headers = Object.fromEntries(req.headers)
    const wh = new Webhook(hookSecret)
    const { user, sms } = wh.verify(payload, headers)

    const phoneNumber = (user.phone || '').replace('+', '')
    const otp = sms?.otp

    if (!phoneNumber || !otp) {
      return new Response(
        JSON.stringify({ error: 'Missing phone or otp' }),
        { status: 400, headers: { 'Content-Type': 'application/json' } }
      )
    }

    const apiKey = Deno.env.get('OTPIQ_API_KEY')
    const provider = Deno.env.get('OTPIQ_PROVIDER') || 'whatsapp-telegram-sms'

    const res = await fetch(OTPIQ_API, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${apiKey}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        phoneNumber,
        smsType: 'verification',
        verificationCode: otp,
        provider,
      }),
    })

    if (!res.ok) {
      const text = await res.text()
      console.error('OTPIQ error:', res.status, text)
      return new Response(
        JSON.stringify({ error: `OTPIQ send failed: ${res.status} ${text}` }),
        { status: 500, headers: { 'Content-Type': 'application/json' } }
      )
    }

    return new Response(JSON.stringify({}), {
      status: 200,
      headers: { 'Content-Type': 'application/json' },
    })
  } catch (error) {
    console.error('send-sms hook error:', error)
    return new Response(
      JSON.stringify({ error: `Failed to process: ${error}` }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    )
  }
})
