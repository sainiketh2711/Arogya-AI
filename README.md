# Arogya AI — Wellness Companion

A wellness-focused dashboard and chat companion. It is not a medical diagnostic tool and does not replace a clinician.

## Features
- Supabase sign up/sign in
- Daily wellbeing check-ins (mood, sleep, water, movement)
- Personal wellness history
- Chat-style wellness companion with demo responses
- Gentle habit suggestions and emergency guidance
- RLS-protected personal records

## Setup
1. Create a Supabase project.
2. Run `supabase/schema.sql` in the Supabase SQL Editor.
3. Copy `.env.example` to `.env`; fill Supabase URL and publishable key.
4. Run `npm install` and `npm run dev`.
5. Deploy to Netlify with build `npm run build`, publish directory `dist`, and the Supabase environment variables.

## AI
The included chat uses a transparent demo response engine and is not a real generative AI model. For real AI, add a server-side function/API integration and store the provider key in server environment variables only. Never expose private keys in frontend code.

## Safety
Arogya offers general wellness education, not diagnosis or treatment. For severe or urgent symptoms, seek emergency care. Do not rely on the app for emergencies.
