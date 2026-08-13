-- Bayou Detail Co. — booking form schema
-- Run this in the Supabase SQL editor for a new project.

create table if not exists public.bookings (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  name text not null,
  vehicle text not null,
  zip text not null,
  service text not null,
  time_slot text not null
);

-- Allow the public anon key to insert new bookings (the form only ever
-- writes, it never reads other people's bookings back).
alter table public.bookings enable row level security;

create policy "Anyone can submit a booking"
  on public.bookings
  for insert
  to anon
  with check (true);

-- No select/update/delete policy is created for anon, so the public key
-- can only write rows, not read or modify existing ones.
