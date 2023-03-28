select * from invoices  inner join clients  on invoices.idcliente=clients.numerocliente;
select count(clients) from clients where nome ='Daniele' ;

select nome , cognome from clients where EXTRACT('year' from datadinascita ) = 1982;
select count (invoices) from invoices where iva=20;
select datafattura,  sum(importo) from invoices group by datafattura;
select * from products where EXTRACT('year' from dataattivazione) = 1989 and (inproduzione= true or incommercio=true);
select count(invoices),EXTRACT('year' from datafattura) from invoices where iva=20 group by EXTRACT('year' from datafattura);
select EXTRACT('year' from datafattura) from invoices where  tipologia='a' group by datafattura having count(invoices)>2;
select numerofattura, importo, iva, datafattura  from invoices inner join fornitori on fornitori.numerofornitore=invoices.numerofornitore;