SELECT p.nome as NOME, r.valor_parcela*r.parcelas as VALOR_TOTAL
FROM pessoas p LEFT JOIN contratos r ON p.contrato_id=r.id
WHERE p.INADIMPLENTE='N' ORDER by 1