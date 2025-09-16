-- Adiciona coluna projeto_id à tabela orcamentos
ALTER TABLE orcamentos ADD COLUMN projeto_id INTEGER REFERENCES projetos(id);

-- Opcional: ao aprovar orçamento, atualize projeto_id com o id do projeto criado
-- No Supabase, isso pode ser feito via trigger ou na aplicação JS

-- Exemplo de trigger (PostgreSQL):
-- Cria projeto automaticamente ao aprovar orçamento
-- (Necessita função customizada, pois Supabase não faz insert cross-table por trigger nativa)

-- Recomendo fazer o relacionamento e criação do projeto via código JS, assim:
-- 1. Ao aprovar orçamento, cria projeto
-- 2. Atualiza orcamento.projeto_id com o id do novo projeto

-- No JS (orcamentos.html):
// ...após inserir projeto...
const { data: [novoProjeto] } = await supabase.from('projetos').select('id').order('id', { ascending: false }).limit(1);
if (novoProjeto) {
  await supabase.from('orcamentos').update({ projeto_id: novoProjeto.id, aprovado: true }).eq('id', id);
}
