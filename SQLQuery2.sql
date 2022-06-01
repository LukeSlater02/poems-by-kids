--select * from Grade;
--select * from Emotion;
--select count(Poem.Id) as 'Poem Count' from Poem;

--SELECT TOP 76
--	Author.Name 'Author Name',
--	Grade.Name 'Grade Name',
--	Gender.Name 'Gender'
--FROM Author
--	JOIN Grade on Author.GradeId = Grade.Id
--	JOIN Gender on Author.GenderId = Gender.Id
--ORDER BY Author.Name;

--SELECT
--	SUM(WordCount) 'Total Poem Words' FROM Poem;

--SELECT
--	TOP 1
--	Title, CharCount FROM Poem
--	ORDER BY Poem.CharCount;

--SELECT
--	Count(Author.Id) '3rd Grade Authors'
--	FROM Author
--	JOIN Grade ON Author.GradeId = Grade.Id
--	WHERE
--	Grade.Name = '3rd Grade'
--	or Grade.Name = '1st Grade'
--	or Grade.name = '2nd Grade';

--SELECT COUNT(p.Id) '4th Grade Poems'
--	FROM Poem p
--	JOIN Author a ON a.Id = p.AuthorId
--	JOIN Grade g ON g.Id = a.GradeId
--	WHERE g.Name = '4th Grade';

--SELECT g.Name 'Grade', COUNT(p.Id) '# Of Poems' 
--FROM Poem p
--JOIN Author a ON a.Id = p.AuthorId
--JOIN Grade g ON g.Id = a.GradeId
--GROUP BY g.Name;

--SELECT g.Name 'Grade', Count(g.id) '# of Authors'
--	FROM Author a
--	JOIN Grade g ON a.GradeId = g.Id
--	GROUP BY g.Name;

--SELECT TOP 1 Title, WordCount
--	FROM Poem
--	ORDER BY WordCount DESC;

--SELECT COUNT(a.Id) '# Of Poems' , a.Name, a.Id
--	FROM poem p
--	JOIN author a ON p.AuthorId = a.Id
--	GROUP BY a.Id, a.Name
--	ORDER BY COUNT(a.Id) desc;

--SELECT COUNT(PoemEmotion.Id) '# of Sad Poems'
--	FROM PoemEmotion
--	JOIN Emotion ON Emotion.Id = PoemEmotion.EmotionId
--	WHERE Emotion.Name = 'Sadness';

--SELECT COUNT(Poem.Id) '# of Poems With No Emotion'
--	FROM PoemEmotion
--	RIGHT JOIN Poem on PoemEmotion.PoemId = Poem.Id
--	WHERE PoemEmotion.PoemId is NULL;

--SELECT COUNT(PoemEmotion.PoemId), Emotion.Name
--	FROM PoemEmotion
--	JOIN Emotion ON PoemEmotion.EmotionId = Emotion.Id
--	GROUP BY Emotion.Name;

--SELECT COUNT(Poem.Id), Grade.Name
--	FROM PoemEmotion
--	JOIN Emotion ON Emotion.Id = PoemEmotion.EmotionId
--	JOIN Poem ON PoemEmotion.PoemId = Poem.Id
--	JOIN Author ON Poem.AuthorId = Author.Id
--	JOIN Grade on Author.GradeId = Grade.Id
--	WHERE Emotion.Name = 'Joy'
--	GROUP BY Grade.Name
--	ORDER BY Grade.Name DESC;

--SELECT COUNT(Poem.Id), Grade.Name
--	FROM PoemEmotion
--	JOIN Emotion ON Emotion.Id = PoemEmotion.EmotionId
--	JOIN Poem ON PoemEmotion.PoemId = Poem.Id
--	JOIN Author ON Poem.AuthorId = Author.Id
--	JOIN Grade on Author.GradeId = Grade.Id
--	WHERE Emotion.Name = 'Joy'
--	GROUP BY Grade.Name
--	ORDER BY Grade.Name DESC;

--SELECT Gender.name, COUNT(Poem.Id)
--	FROM PoemEmotion
--	JOIN Emotion ON Emotion.Id = PoemEmotion.EmotionId
--	JOIN Poem ON PoemEmotion.PoemId = Poem.Id
--	JOIN Author ON Poem.AuthorId = Author.Id
--	JOIN Gender ON Author.GenderId = Gender.Id
--	WHERE Emotion.Name = 'Fear'
--	GROUP BY Gender.Name
--	ORDER BY COUNT(Poem.Id) desc;