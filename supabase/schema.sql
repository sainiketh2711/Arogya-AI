create extension if not exists pgcrypto;
create table if not exists public.wellness_checkins(
 id uuid primary key default gen_random_uuid(),user_id uuid not null references auth.users(id) on delete cascade,
 checkin_date date not null default current_date,mood integer not null check(mood between 1 and 5),
 sleep_hours numeric(4,1) not null check(sleep_hours between 0 and 24),
 water_glasses integer not null default 0 check(water_glasses between 0 and 30),
 movement_minutes integer not null default 0 check(movement_minutes between 0 and 1440),
 note text default '',created_at timestamptz not null default now()
);
create table if not exists public.wellness_messages(
 id uuid primary key default gen_random_uuid(),user_id uuid not null references auth.users(id) on delete cascade,
 role text not null check(role in ('user','assistant')),content text not null,created_at timestamptz not null default now()
);
alter table public.wellness_checkins enable row level security;
alter table public.wellness_messages enable row level security;
create policy "own checkins" on public.wellness_checkins for all using(auth.uid()=user_id) with check(auth.uid()=user_id);
create policy "own messages" on public.wellness_messages for all using(auth.uid()=user_id) with check(auth.uid()=user_id);
