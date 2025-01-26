SELECT genre , MAX((Rating + MetaCritic/10.0)/2) as weighted_rating
FROM imdb as i 
LEFT JOIN genre as g
ON i.movie_id = g.movie_id 
WHERE i.title LIKE '%2014%'
AND genre IS NOT NULL 
AND rating IS NOT NULL 
AND MetaCritic IS NOT NULL 
GROUP BY genre
ORDER BY genre ASC ;


-- Table 1 - earning (Movie_id, Domestic, Worldwide)
                    --  ('28910', 45055776, 88346473.0);
-- Table 2 - genre (Movie_id, genre)
                --    ('30114', 'Adventure')
-- Table 3 - IMDB (Movie_id, Title, Rating, TotalVotes, MetaCritic, Budget, Runtime, CVotes10, CVotes09, CVotes08, CVotes07, CVotes06, CVotes05, CVotes04, CVotes03, CVotes02, CVotes01, CVotesMale, CVotesFemale, CVotesU18, CVotesU18M, CVotesU18F, CVotes1829, CVotes1829M, CVotes1829F, CVotes3044, CVotes3044M, CVotes3044F, CVotes45A, CVotes45AM, CVotes45AF, CVotes1000, CVotesUS, CVotesnUS, VotesM, VotesF, VotesU18, VotesU18M, VotesU18F, Votes1829, Votes1829M, Votes1829F, Votes3044, Votes3044M, Votes3044F, Votes45A, Votes45AM, Votes45AF, VotesIMDB, Votes1000, VotesUS, VotesnUS)
                --   ('35004', 'The Wolf of Wall Street (2013)', 8.2, 881984, 75, 100000000., '180 min', '171660', '236650', '250667', '129164', '46715', '18682', '8674', '5854', '4258', '9689', '559564', '123698', '3622', '2842', '757', '360841', '286627', '70874', '227096', '189110', '34712', '39996', '32676', '6629', '730', '89006', '366829.0', '8.2', '7.8', '8.6', '8.7', '8.0', '8.4', '8.5', '7.9', '8.0', '8.1', '7.7', '7.6', '7.6', '7.5', '7.8', '7.8', '8.1', '8.1');
