--Linguagens de Programação
--Fernando Noleto
reverter :: [a] -> [a]
reverter [] = []
reverter [a] = [a]
reverter xs = last xs : reverter (init xs)
