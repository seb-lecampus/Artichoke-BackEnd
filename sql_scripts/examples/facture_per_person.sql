USE artichoke;
SELECT * FROM facture f INNER JOIN user u ON (f.id_user = u.id_user) WHERE state_facture = 'Paid';