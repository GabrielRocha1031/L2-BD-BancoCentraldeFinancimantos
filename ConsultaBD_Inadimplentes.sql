SELECT p.nome as NOME, day(q.dt_pagamento) as DIA_MES, r.valor_parcela as VALOR_PARCELA
FROM pessoas p LEFT JOIN pagamentos q ON p.id=q.pessoa_id
LEFT JOIN contratos r ON p.CONTRATO_ID=r.id
WHERE p.INADIMPLENTE='S' ORDER by 1
 
