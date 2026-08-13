Bayou Detail Co. — Booking Form

A mobile booking form for Bayou Detail Co., a two-van car detailing business in Houston. Built as part of a Zapp Studios take-home assignment.

Customers enter their name, vehicle, zip code, service, and preferred time slot. Submissions are checked against Bayou Detail's actual service area before they're allowed to book, and go straight into a Supabase table.

What it does
Collects the five required fields: name, vehicle, zip, service, time slot
Validates every field before submission, including a required 5-digit zip
Blocks bookings from zip codes outside Bayou Detail's service area, with an inline error explaining why
Writes each booking straight to a Supabase table
Shows a clear success or error message after submitting, no page reload
Why the service area is what it is

The allowed zip codes aren't guessed. They're pulled directly from Bayou Detail's actual June 2026 job log and Meta lead data, the same zips their two techs already service:

Inner Loop: 77005, 77006, 77007, 77008, 77019, 77024, 77025, 77027, 77030, 77056, 77098
Bellaire / inner-adjacent: 77401
Kingwood: 77339
Katy / Energy Corridor: 77450, 77494
Pearland / Friendswood / League City: 77546, 77573, 77584

That list lives as a hardcoded allowlist in index.html for now.

Tech stack
Frontend: plain HTML, CSS, and JavaScript. No framework, no build step, no bundler. One file.
Backend: Supabase (Postgres + auto-generated REST API), accessed via the @supabase/supabase-js client loaded from a CDN.
Fonts: Google Fonts (Fraunces for headings, IBM Plex Sans for body text).

Kept deliberately simple. The brief asked for a booking form, not a framework demo, so the fastest honest path was one HTML file plus a database, with no npm install and nothing to compile.
