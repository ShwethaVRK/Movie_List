
DROP PROCEDURE [dbo].[spGetMovieByID]
GO
DROP PROCEDURE [dbo].[spGetAllYears]
GO
DROP PROCEDURE [dbo].[spGetAllProducers]
GO
DROP PROCEDURE [dbo].[spGetAllMovies]
GO
DROP PROCEDURE [dbo].[spGetAllActors]
GO
DROP PROCEDURE [dbo].[spEditMovie]
GO
DROP PROCEDURE [dbo].[spAddProducer]
GO
DROP PROCEDURE [dbo].[spAddMovie]
GO
DROP PROCEDURE [dbo].[spAddActor]
GO

GO
DROP TYPE [dbo].[ActorType]
GO
CREATE TYPE [dbo].[ActorType] AS TABLE(
	[ActorID] [int] NULL,
	[Name] [nvarchar](300) NULL,
	[DOB] [datetime2](7) NULL,
	[Sex] [nvarchar](30) NULL,
	[Bio] [nvarchar](max) NULL
)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActorMovies](
	[ActorMovieID] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NULL,
	[ActorID] [int] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ActorMovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[ActorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Sex] [nvarchar](20) NULL,
	[Bio] [nvarchar](max) NULL,
	[DOB] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ActorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[YearOfRelease] [nvarchar](100) NULL,
	[Plot] [nvarchar](max) NULL,
	[Poster] [nvarchar](500) NULL,
	[ProducerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[ProducerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Sex] [nvarchar](20) NULL,
	[Bio] [nvarchar](max) NULL,
	[DOB] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Years](
	[YearID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[YearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actors] ON 
GO
INSERT [dbo].[Actors] ([ActorID], [Name], [Sex], [Bio], [DOB]) VALUES (1, N'Tom Cruise', N'Male', N'In 1976, if you had told fourteen year-old Franciscan seminary student Thomas Cruise Mapother IV that one day in the not too distant future he would be Tom Cruise, one of the top 100 movie stars of all time, he would have probably grinned and told you that his ambition was to join the priesthood.', NULL)
GO
INSERT [dbo].[Actors] ([ActorID], [Name], [Sex], [Bio], [DOB]) VALUES (2, N'Michelle Monaghan', N'Female', N'Michelle Lynn Monaghan was born on March 23, 1976, in Winthrop, Iowa. She is the youngest of three children and the only daughter of Sharon (Hamel), who ran a day care center, and Robert L. Monaghan, a factory worker and farmer. She is of mostly Irish and German descent.', NULL)
GO
INSERT [dbo].[Actors] ([ActorID], [Name], [Sex], [Bio], [DOB]) VALUES (3, N'Mike Vogel', N'Male', N'Mike Vogel was born on July 17, 1979 in Abington, Pennsylvania, USA as Michael James Vogel. He is an actor and producer, known for The Help (2011), Cloverfield (2008) and She''s Out of My League (2010). He has been married to Courtney Renee Raborg since January 4, 2003. They have three children.', NULL)
GO
INSERT [dbo].[Actors] ([ActorID], [Name], [Sex], [Bio], [DOB]) VALUES (4, N'Jessica Lucas', N'Female', N'Jessica Lucas (born September 24th, 1985) is a Canadian actress and singer. She is known for her roles in television, such as Edgemont, Melrose Place (1992) and Cult, and in the films The Covenant (2006), Cloverfield (2008) and 2013''s Evil Dead (2013). She also starred in the music video for Coldplay''s 2014 single "True Love".', NULL)
GO
INSERT [dbo].[Actors] ([ActorID], [Name], [Sex], [Bio], [DOB]) VALUES (5, N'Huge Jackman', N'Male', N'Huge jackman is an actor.', CAST(N'1965-04-04T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Actors] OFF
GO
SET IDENTITY_INSERT [dbo].[Producers] ON 
GO
INSERT [dbo].[Producers] ([ProducerID], [Name], [Sex], [Bio], [DOB]) VALUES (1, N'J. J. Abrams', N'Male', N'Jeffrey Jacob Abrams (born June 27, 1966) is an American film director, producer, screenwriter, actor, and composer. He is known for work in the genres of action, drama, and science fiction. Abrams wrote or produced such films as Regarding Henry (1991), Forever Young (1992), Armageddon (1998), Cloverfield (2008), Star Trek (2009), Star Wars: The Force Awakens (2015), and the upcoming Star Wars: Episode IX (2019).', NULL)
GO
INSERT [dbo].[Producers] ([ProducerID], [Name], [Sex], [Bio], [DOB]) VALUES (2, N'Judd Apatow', N'Male', N'Judd Apatow (born December 6, 1967) is an American producer, writer, director, stand-up comedian and actor. He is the founder of Apatow Productions, through which he produced and developed the television series Freaks and Geeks, Undeclared, Girls, Love, and Crashing and directed the films The 40-Year-Old Virgin (2005), Knocked Up (2007), Funny People (2009), This Is 40 (2012), and Trainwreck (2015).', NULL)
GO
INSERT [dbo].[Producers] ([ProducerID], [Name], [Sex], [Bio], [DOB]) VALUES (3, N'Avi Arad', N'Male', N'Avi Arad (born August 1, 1948) is an Israeli-American businessman. He became the CEO of the company Toy Biz in the 1990s, and soon afterward became the chief creative officer of Marvel Entertainment, a Marvel director, and the chairman, CEO, and founder of Marvel Studios.[1]', NULL)
GO
INSERT [dbo].[Producers] ([ProducerID], [Name], [Sex], [Bio], [DOB]) VALUES (4, N'Lawrence Bender', N'Male', N'Lawrence Bender (born October 17, 1957) is an American film producer. He rose to fame by producing Reservoir Dogs in 1992 and has since produced all of Quentin Tarantino''s films with the exception of Death Proof, Django Unchained and The Hateful Eight. He also produces documentary films, most notably An Inconvenient Truth (2006).', NULL)
GO
INSERT [dbo].[Producers] ([ProducerID], [Name], [Sex], [Bio], [DOB]) VALUES (5, N'Albert R. Broccoli', N'Male', N'Albert Romolo Broccoli (April 5, 1909 – June 27, 1996), nicknamed "Cubby", was an American film producer who made more than 40 motion pictures throughout his career. Most of the films were made in the United Kingdom and often filmed at Pinewood Studios. Co-founder of Danjaq, LLC and Eon Productions, Broccoli is most notable as the producer of many of the James Bond films. He and Harry Saltzman saw the films develop from relatively low-budget origins to large-budget, high-grossing extravaganzas, and Broccoli''s heirs continue to produce new Bond films.', NULL)
GO
INSERT [dbo].[Producers] ([ProducerID], [Name], [Sex], [Bio], [DOB]) VALUES (6, N'Sandra Bullock', N'Female', N'Sandra Annette Bullock (born July 26, 1964)[1] is an American actress, producer, and philanthropist. She made her acting debut with a minor role in the 1987 thriller Hangmen, and made her television debut in the film Bionic Showdown: The Six Million Dollar Man and the Bionic Woman (1989), and played the lead role in the short-lived NBC sitcom Working Girl. Her breakthrough role was in the film Demolition Man (1993). She subsequently starred in several successful films including Speed (1994), While You Were Sleeping (1995), The Net (1995), A Time to Kill (1996), Hope Floats (1998), and Practical Magic (1998).', NULL)
GO
INSERT [dbo].[Producers] ([ProducerID], [Name], [Sex], [Bio], [DOB]) VALUES (7, N'Tim Burton', N'Male', N'Timothy Walter Burton[1] (born August 25, 1958) is an American film director, producer, artist, writer, and animator. He is known for his dark, gothic, and eccentric horror and fantasy films such as Beetlejuice (1988), Edward Scissorhands (1990), The Nightmare Before Christmas (1993), Ed Wood (1994), Sleepy Hollow (1999), Corpse Bride (2005), Sweeney Todd: The Demon Barber of Fleet Street (2007), Dark Shadows (2012), and Frankenweenie (2012). He is also known for blockbusters such as the adventure comedy Pee-wees Big Adventure (1985), the superhero films Batman (1989) and its first sequel Batman Returns (1992), the sci-fi film Planet of the Apes (2001), the fantasy drama Big Fish (2003), the musical adventure film Charlie and the Chocolate Factory (2005), and the fantasy film Alice in Wonderland (2010).', NULL)
GO
INSERT [dbo].[Producers] ([ProducerID], [Name], [Sex], [Bio], [DOB]) VALUES (8, N'Frank Capra', N'Male', N'Frank Russell Capra (born Francesco Rosario Capra; May 18, 1897 – September 3, 1991) was an Italian-American film director, producer and writer who became the creative force behind some of the major award-winning films of the 1930s and 1940s. Born in Italy and raised in Los Angeles from the age of five, his rags-to-riches story has led film historians such as Ian Freer to consider him the "American dream personified', NULL)
GO
SET IDENTITY_INSERT [dbo].[Producers] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (2, N'Mission: Impossible III', N'1991', N'Mission: Impossible III (stylized as M:i:III) is a 2006 American action spy film co-written and directed by J. J. Abrams in his directorial debut and starring Tom Cruise, who also served as a producer, in the role of IMF agent Ethan Hunt. It is the third installment in the Mission: Impossible film series. In the film, Ethan Hunt (Cruise) has retired from field work for the Impossible Missions Force (IMF) and trains new recruits. However, he is sent back into action to track down the elusive arms dealer Owen Davian (Philip Seymour Hoffman).', N'/Assets/220px-Mission_Impossible_III.jpg', 1)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (3, N'Cloverfield', N'1992', N'Cloverfield is a 2008 American found footage science fiction horror film directed by Matt Reeves, produced by J. J. Abrams and Bryan Burk, and written by Drew Goddard. The film, which is presented as found footage shot with a home camcorder, follows six young New York City residents fleeing from a gigantic monster and various other smaller creatures that attack the city while they are having a farewell party. ', N'/Assets/220px-Cloverfield_theatrical_poster.jpg', 1)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (4, N'The Cable Guy', N'1992', N'The Cable Guy is a 1996 American comedy thriller film directed by Ben Stiller, starring Jim Carrey and Matthew Broderick. It was released in the United States on June 14, 1996. The film co stars Leslie Mann, Jack Black, George Segal, Diane Baker, Eric Roberts, Owen Wilson, Janeane Garofalo, David Cross, Andy Dick, Amy Stiller, and Bob Odenkirk', N'/Assets/TheCableGuy.jpg', 2)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (5, N'Anchorman: The Legend of Ron Burgundy', N'1992', N'Anchorman: The Legend of Ron Burgundy is a 2004 American comedy film directed by Adam McKay, produced by Judd Apatow, starring Will Ferrell, and written by McKay and Ferrell. The film is a tongue-in-cheek take on the culture of the 1970s, particularly the new Action News format. It portrays a San Diego TV station where Ferrell''s title character clashes with his new female counterpart. This film is number 100 on Bravo''s 100 funniest movies, number 6 on TimeOut''s top 100 comedy films of all time and 113 on Empire''s 500 Greatest Movies of All Time.', N'/Assets/Movie_poster_Anchorman_The_Legend_of_Ron_Burgundy.jpg', 2)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (6, N'Spider-Man', N'2002', N'Spider-Man is a 2002 American superhero film directed by Sam Raimi and based on the Marvel Comics character of the same name. The film stars Tobey Maguire as Peter Parker, a high school student living in New York City, who turns to crimefighting after developing spider-like super powers. Spider-Man also stars Kirsten Dunst as Peter''s love interest Mary Jane Watson, Willem Dafoe as Norman Osborn/Green Goblin, Rosemary Harris and Cliff Robertson as Aunt May and Uncle Ben, and James Franco as his best friend Harry Osborn.', N'/Assets/220px-Spider-Man2002Poster.jpg', 3)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (7, N'Blade', N'1998', N'The Blade films are based on the fictional Marvel Comics character of the same name, portrayed by Wesley Snipes. They were written by David S. Goyer, based on the comics by Marv Wolfman, and Gene Colan. The three films were directed by Stephen Norrington, Guillermo del Toro and Goyer respectively, and distributed by New Line Cinema.', N'/Assets/220px-Blade_movie.jpg', 3)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (8, N'Kill Bill: Volume 1', N'2003', N'ill Bill: Volume 1 is a 2003 American martial arts film written and directed by Quentin Tarantino. It stars Uma Thurman as the Bride, who swears revenge on a team of assassins (Lucy Liu, Michael Madsen, Daryl Hannah, and Vivica A. Fox) and their leader Bill (David Carradine) after they try to kill her and her unborn child. Her journey takes her to Japan, where she battles the Tokyo yakuza.', N'/Assets/220px-Kill_Bill_Volume_1.png', 4)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (9, N'Good Will Hunting', N'1997', N'Good Will Hunting is a 1997 American drama film, directed by Gus Van Sant, and starring Robin Williams, Matt Damon, Ben Affleck, Minnie Driver and Stellan Skarsgård. Written by Affleck and Damon (and with Damon in the title role), the film follows 20-year-old South Boston laborer Will Hunting, an unrecognized genius who, as part of a deferred prosecution agreement after assaulting a police officer, becomes a client of a therapist and studies advanced mathematics with a renowned professor. Through his therapy sessions, Will re-evaluates his relationships with his best friend, his girlfriend and himself, facing the significant task of confronting his past and thinking about his future.', N'/Assets/220px-Good_Will_Hunting_theatrical_poster.jpg', 4)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (10, N'For Your Eyes Only', N'1981', N'For Your Eyes Only is a 1981 spy film and the twelfth in the James Bond series to be produced by Eon Productions, and the fifth to star Roger Moore as the fictional MI6 agent James Bond. It marked the directorial debut of John Glen, who had worked as editor and second unit director in three other Bond films.', N'/Assets/220px-For_Your_Eyes_Only_-_UK_cinema_poster.jpg', 5)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (11, N'Hope Floats', N'1998', N'Hope Floats is a 1998 American romance comedy-drama film directed by Forest Whitaker and starring Sandra Bullock, Harry Connick Jr., and Gena Rowlands.Birdee (Bullock) is an unassuming housewife whose life is disrupted when her husband (Michael Paré) reveals his infidelity to her on a Ricki Lake-style talk show. She and her young daughter Bernice go back home to her mother (Rowlands) and the small town in which she grew up in, where everyone knows of her televised marital collapse. Meanwhile, an old friend of hers, Justin (Connick, Jr.), has entered her life, sparking a romance. While Justin''s intentions are clear and good, Birdee struggles with the decision to let him fully into her life.', N'/Assets/220px-Hope_Floats.jpg', 6)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (12, N'Cabin Boy', N'1994', N'Cabin Boy is a 1994 fantasy comedy film directed by Adam Resnick and co-produced by Tim Burton, which starred comedian Chris Elliott. Elliott co-wrote the film with Resnick. Both Elliott and Resnick worked for Late Night with David Letterman in the 1980s, as well as co-creating the short-lived FOX sitcom Get a Life in the early 1990s.', N'/Assets/220px-Cabinboyposter.jpg', 7)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (13, N'It''s a Wonderful Life', N'1946', N'It''s a Wonderful Life is a 1946 American Christmas fantasy comedy-drama film produced and directed by Frank Capra, based on the short story and booklet The Greatest Gift, which Philip Van Doren Stern wrote in 1939 and published privately in 1945.The film stars James Stewart as George Bailey, a man who has given up his dreams in order to help others, and whose imminent suicide on Christmas Eve brings about the intervention of his guardian angel, Clarence Odbody (Henry Travers). Clarence shows George all the lives he has touched and how different life in his community of Bedford Falls would be like if he had never been born.', N'/Assets/Its_A_Wonderful_Life_Movie_Poster.jpg', 8)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (14, N'Mission: Impossible ', N'2001', N'Mission: Impossible ', N'/Assets/Images/Avatar-Teaser-Poster.jpg', 3)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (24, N'abc', NULL, N'28', NULL, 1)
GO
INSERT [dbo].[Movies] ([MovieID], [Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) VALUES (26, N'The INSERT statement conflicted with the FOREIGN KEY constraint "FK__Movies__Producer__6EF57B66". The conflict occurred in database "db31d6c04ce90a4e0287c3a882012ed979", table "dbo.Producers", column ''ProducerID''.', NULL, N'28', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[ActorMovies] ON 
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (1, 2, 1, 0)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (2, 2, 2, 0)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (3, 3, 3, 1)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (4, 3, 4, 1)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (5, 2, 1, 1)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (6, 4, 1, 0)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (7, 4, 1, 0)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (8, 4, 1, 0)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (9, 4, 1, 1)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (10, 4, 5, 1)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (11, 14, 5, 1)
GO
INSERT [dbo].[ActorMovies] ([ActorMovieID], [MovieID], [ActorID], [Status]) VALUES (12, 5, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[ActorMovies] OFF
GO

GO
SET IDENTITY_INSERT [dbo].[Years] ON 
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (1, N'1920')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (2, N'1921')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (3, N'1922')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (4, N'1923')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (5, N'1924')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (6, N'1925')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (7, N'1926')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (8, N'1927')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (9, N'1928')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (10, N'1929')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (11, N'1930')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (12, N'1931')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (13, N'1932')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (14, N'1933')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (15, N'1934')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (16, N'1935')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (17, N'1936')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (18, N'1937')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (19, N'1938')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (20, N'1939')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (21, N'1940')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (22, N'1941')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (23, N'1942')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (24, N'1943')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (25, N'1944')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (26, N'1945')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (27, N'1946')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (28, N'1947')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (29, N'1948')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (30, N'1949')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (31, N'1950')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (32, N'1951')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (33, N'1952')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (34, N'1953')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (35, N'1954')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (36, N'1955')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (37, N'1956')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (38, N'1957')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (39, N'1958')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (40, N'1959')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (41, N'1960')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (42, N'1961')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (43, N'1962')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (44, N'1963')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (45, N'1964')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (46, N'1965')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (47, N'1966')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (48, N'1967')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (49, N'1968')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (50, N'1969')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (51, N'1970')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (52, N'1971')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (53, N'1972')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (54, N'1973')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (55, N'1974')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (56, N'1975')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (57, N'1976')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (58, N'1977')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (59, N'1978')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (60, N'1979')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (61, N'1980')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (62, N'1981')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (63, N'1982')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (64, N'1983')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (65, N'1984')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (66, N'1985')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (67, N'1986')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (68, N'1987')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (69, N'1988')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (70, N'1989')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (71, N'1990')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (72, N'1991')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (73, N'1992')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (74, N'1993')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (75, N'1994')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (76, N'1995')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (77, N'1996')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (78, N'1997')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (79, N'1998')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (80, N'1999')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (81, N'2000')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (82, N'2001')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (83, N'2002')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (84, N'2003')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (85, N'2004')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (86, N'2005')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (87, N'2006')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (88, N'2007')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (89, N'2008')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (90, N'2009')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (91, N'2010')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (92, N'2011')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (93, N'2012')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (94, N'2013')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (95, N'2014')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (96, N'2015')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (97, N'2016')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (98, N'2017')
GO
INSERT [dbo].[Years] ([YearID], [Value]) VALUES (99, N'2018')
GO
SET IDENTITY_INSERT [dbo].[Years] OFF
GO
ALTER TABLE [dbo].[ActorMovies]  WITH CHECK ADD FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actors] ([ActorID])
GO
ALTER TABLE [dbo].[ActorMovies]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([MovieID])
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producers] ([ProducerID])
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name> select * from Actors
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spAddActor] 
	-- Add the parameters for the stored procedure here
	@ActorID INT OUT,
	@Name nvarchar(600),
	@Sex nvarchar(100),
	@DOB datetime2(7),
	@Bio nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here select * from Actors alter table Actors Add DOB datetime2
	BEGIN TRY

		
		INSERT INTO Actors (Name,Sex,DOB,Bio)
		         values(@Name,@Sex,@DOB,@Bio)

		SET @ActorID = SCOPE_IDENTITY();
	END TRY

	BEGIN CATCH

	END CATCH
	
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============================================= select * from Movies alter table Movies Alter column Name nvarchar(max)
-- Author:		<Author,,Name> select * from ActorMovies 
-- Create date: <Create Date,,> delete from ActorMovies where ActorMovieID>4 
-- Description:	<Description,,> delete from Movies where MovieID>22
-- =============================================
CREATE PROCEDURE [dbo].[spAddMovie]
	-- Add the parameters for the stored procedure here
	@MovieID  INT OUT,
	@Name nvarchar(max),
	@YearOfRelease nvarchar(max),
	@Plot nvarchar(max),
	@Poster nvarchar(max),
	@ProducerID INT
	,@Actors dbo.ActorType READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--BEGIN TRANSACTION;
    -- Insert statements for procedure here
	--declare @DBMovieID INT
	declare @ActorID INT;

	BEGIN TRY

	INSERT [dbo].[Movies] ([Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) 
	VALUES (@Name, @YearOfRelease, @Plot, @Poster, @ProducerID) 

	SET @MovieID = SCOPE_IDENTITY();

	

	DECLARE ActorCursor CURSOR
	FOR 
    Select ActorID from @Actors

	OPEN ActorCursor
	FETCH NEXT FROM ActorCursor INTO @ActorID

	WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO ActorMovies (MovieID,ActorID,status) Values (@MovieID,@ActorID,1)
		FETCH NEXT FROM ActorCursor INTO @ActorID
	END
	
	CLOSE ActorCursor;  
	DEALLOCATE ActorCursor;
	--COMMIT TRANSACTION 
	END TRY
	BEGIN CATCH
	    INSERT [dbo].[Movies] ([Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) 
		VALUES (ERROR_MESSAGE(), null, ERROR_LINE(), null, 1) 
		--IF @@TRANCOUNT > 0 select *  from movies alter table movies alter column name nvarchar(max)
  --      BEGIN
  --          ROLLBACK TRANSACTION;
  --      END
	END CATCH

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spAddProducer] 
	-- Add the parameters for the stored procedure here
	@ProducerID INT OUT,
	@Name nvarchar(600),
	@Sex nvarchar(100),
	@DOB datetime2(7),
	@Bio nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here select * from Producers alter table Actors Add DOB datetime2
	BEGIN TRY

		
		INSERT INTO Producers(Name,Sex,DOB,Bio)
		         values(@Name,@Sex,@DOB,@Bio)

		SET @ProducerID = SCOPE_IDENTITY();
	END TRY

	BEGIN CATCH

	END CATCH
	
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ============================================= select * from Movies alter table Movies Alter column Name nvarchar(max)
-- Author:		<Author,,Name> select * from ActorMovies where MovieID=4
-- Create date: <Create Date,,> delete from ActorMovies where ActorMovieID>4 
-- Description:	<Description,,> delete from Movies where MovieID>22
-- =============================================
CREATE PROCEDURE [dbo].[spEditMovie]
	-- Add the parameters for the stored procedure here
	@MovieID  INT OUT,
	@Name nvarchar(max),
	@YearOfRelease nvarchar(max),
	@Plot nvarchar(max),
	@Poster nvarchar(max),
	@ProducerID INT
	,@Actors dbo.ActorType READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--BEGIN TRANSACTION;
    -- Insert statements for procedure here
	--declare @DBMovieID INT
	declare @ActorID INT;
	declare @AName nvarchar(700);
	declare @Sex nvarchar(20);
	declare @DOB DAtetime2;
	declare @Bio nvarchar(max);

	BEGIN TRY

	update ActorMovies set status=0 where MovieID=@MovieID
	Update [Movies] set [Name]=@Name,[YearOfRelease]=@YearOfRelease,Plot=@Plot,Poster=@Poster,ProducerID=@ProducerID
	where MovieID=@MovieID

	
	

	DECLARE ActorCursor CURSOR
	FOR 
    Select ActorID from @Actors

	OPEN ActorCursor
	FETCH NEXT FROM ActorCursor INTO @ActorID

	WHILE @@FETCH_STATUS = 0
	BEGIN
	--select * from ActorMovies where movieid=2
		--Update Actors Set Name=@AName,Sex=@Sex,Bio=@Bio,DOB=@DOB where ActorID=@ActorID
		
		INSERT INTO ActorMovies (MovieID,ActorID,status) Values (@MovieID,@ActorID,1)
		FETCH NEXT FROM ActorCursor INTO @ActorID
	END
	
	CLOSE ActorCursor;  
	DEALLOCATE ActorCursor;
	--COMMIT TRANSACTION 
	END TRY
	BEGIN CATCH
	 --   INSERT [dbo].[Movies] ([Name], [YearOfRelease], [Plot], [Poster], [ProducerID]) 
		--VALUES (ERROR_MESSAGE(), null, ERROR_LINE(), null, 1) 
		--IF @@TRANCOUNT > 0
  --      BEGIN
  --          ROLLBACK TRANSACTION;
  --      END
	END CATCH

END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Get All Movies>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllActors] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements. select * from Movies
	SET NOCOUNT ON;

    -- Insert statements for procedure here select * from ActorMovies
	--SELECT M.MovieID,M.Name,YearOfRelease,Plot,Poster,M.ProducerID,P.ProducerID,P.Name,P.Sex,P.Bio,A.ActorID,A.Name,A.Sex,A.Bio
	--from Movies M left join Producers P on M.ProducerID=P.ProducerID
	--left join ActorMovies AM on AM.MovieID=AM.MovieID
	--left join Actors A on A.ActorID=AM.ActorID

	select ActorID,UPPER(Name) Name,Sex,Bio,DOB From Actors
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Get All Movies>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllMovies] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here select * from ActorMovies
	--SELECT M.MovieID,M.Name,YearOfRelease,Plot,Poster,M.ProducerID,P.ProducerID,P.Name,P.Sex,P.Bio,A.ActorID,A.Name,A.Sex,A.Bio
	--from Movies M left join Producers P on M.ProducerID=P.ProducerID
	--left join ActorMovies AM on AM.MovieID=AM.MovieID
	--left join Actors A on A.ActorID=AM.ActorID

	select M.MovieID,M.Name,YearOfRelease,Plot,Poster,M.ProducerID,P.ProducerID,P.Name,P.Sex,P.Bio,A.ActorID,A.Name,A.Sex,A.Bio
	from Movies M left join ActorMovies AM on M.MovieID=AM.MovieID and AM.status=1
	left join Actors A on A.ActorID=AM.ActorID
	left join Producers P on P.ProducerID = M.ProducerID
	 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Get All Movies>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllProducers] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements. select * from Movies
	SET NOCOUNT ON;

    -- Insert statements for procedure here select * from ActorMovies
	--SELECT M.MovieID,M.Name,YearOfRelease,Plot,Poster,M.ProducerID,P.ProducerID,P.Name,P.Sex,P.Bio,A.ActorID,A.Name,A.Sex,A.Bio
	--from Movies M left join Producers P on M.ProducerID=P.ProducerID
	--left join ActorMovies AM on AM.MovieID=AM.MovieID
	--left join Actors A on A.ActorID=AM.ActorID

	select ProducerID,UPPER(Name) Name,Sex,DOB,Bio From Producers
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Get All Movies>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllYears] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here select * from ActorMovies
	--SELECT M.MovieID,M.Name,YearOfRelease,Plot,Poster,M.ProducerID,P.ProducerID,P.Name,P.Sex,P.Bio,A.ActorID,A.Name,A.Sex,A.Bio
	--from Movies M left join Producers P on M.ProducerID=P.ProducerID
	--left join ActorMovies AM on AM.MovieID=AM.MovieID
	--left join Actors A on A.ActorID=AM.ActorID

	select * From Years
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Description:	<Get All Movies> [dbo].[spGetMovieByID] 4
-- =============================================
CREATE PROCEDURE [dbo].[spGetMovieByID] 
	-- Add the parameters for the stored procedure here
	@ID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here select * from ActorMovies
	--SELECT M.MovieID,M.Name,YearOfRelease,Plot,Poster,M.ProducerID,P.ProducerID,P.Name,P.Sex,P.Bio,A.ActorID,A.Name,A.Sex,A.Bio
	--from Movies M left join Producers P on M.ProducerID=P.ProducerID
	--left join ActorMovies AM on AM.MovieID=AM.MovieID
	--left join Actors A on A.ActorID=AM.ActorID

	select M.MovieID,M.Name,YearOfRelease,Plot,Poster,M.ProducerID,P.ProducerID,P.Name,P.Sex,P.Bio,A.ActorID,A.Name,A.Sex,A.Bio
	from Movies M left join ActorMovies AM on M.MovieID=AM.MovieID and AM.status=1
	left join Actors A on A.ActorID=AM.ActorID
	left join Producers P on P.ProducerID = M.ProducerID where M.MovieID=@ID
	
END
GO
