-- ============================================
-- À COPIER-COLLER DANS : Supabase > SQL Editor > New query
-- Puis cliquer sur "Run"
-- ============================================

create table products (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) not null,
  name text not null,
  description text,
  created_at timestamp with time zone default now()
);

-- Active la sécurité au niveau des lignes : chaque utilisateur
-- ne voit que SES propres produits, jamais ceux des autres.
alter table products enable row level security;

create policy "Les utilisateurs voient leurs propres produits"
  on products for select
  using (auth.uid() = user_id);

create policy "Les utilisateurs ajoutent leurs propres produits"
  on products for insert
  with check (auth.uid() = user_id);

create policy "Les utilisateurs modifient leurs propres produits"
  on products for update
  using (auth.uid() = user_id);

create policy "Les utilisateurs suppriment leurs propres produits"
  on products for delete
  using (auth.uid() = user_id);
