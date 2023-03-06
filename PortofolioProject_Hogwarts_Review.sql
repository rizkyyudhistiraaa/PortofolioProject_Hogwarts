-- Melihat data 
select * from hogwarts_legacy_reviews$ order by [index]

-- Menghitung data Positive vs playtime nya
select Playtime, feedback, count(feedback) as Banyak_Feedback_Positive from hogwarts_legacy_reviews$
where feedback like '%Positive'
group by feedback, playtime
order by playtime

-- Menghitung Jumlah Feedback Positive
select feedback, count(feedback) as Banyak_Feedback_Negative from hogwarts_legacy_reviews$
where feedback like '%Positive'
group by feedback

-- menghitung data Negative vs playtime nya
select Playtime, feedback, count(feedback) as Banyak_Feedback_Negative from hogwarts_legacy_reviews$
where feedback like '%Negative'
group by feedback, playtime
order by playtime


-- Menghitung Jumlah Negative
select feedback, count(feedback) as Banyak_Feedback_Negative from hogwarts_legacy_reviews$
where feedback like '%Negative'
group by feedback


