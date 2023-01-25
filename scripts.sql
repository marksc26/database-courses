insert into users(
id,
name,
email,
"password",
'age'
) values(
'1b8550eb-eb99-4611-8474-4651cd28163e',
'Marcos',
'marcos@academlo.com',
'1234',
30
),(
 '83441f8b-e200-46e1-8a89-c5085d2554d1',
 'Christian',
 'christian@gmail.com',
 '6789',
 18
);

insert into courses(
id,
title,
"level",
teacher 
) values(
'bb33aae7-2578-4fbe-9a4c-b3a5f5cd614a',
'Advanced C Programming Masterclass',
'Advanced',
'Blad Butnisky'
),(
'ca17a994-71ea-42d9-b10f-3be2e77e1d64',
'The Python Megacourse',
'intermediate',
'Ardit Pulce'
);

insert into course_video (
id,
title,
url,
course_id 
) values(
'5cdd849f-19b1-483f-972f-3038154b571c',
'Printf and Scanf',
'https://www.udemy.com/watch?v=KJgsSFOQv',
'bb33aae7-2578-4fbe-9a4c-b3a5f5cd614a'
),(
'0ac1e0ae-dcf8-44c6-941f-befbb92f1171', 
'Python programming paradigms', 
'https://www.udemy.com/watch?v=KJgsKPULjs',
'ca17a994-71ea-42d9-b10f-3be2e77e1d64'
);

insert into categories (
id,
name,
course_id 
) values(
'cfd53500-9bf0-4cc4-aa83-f3042c99a29a',
'C Programming language',
'bb33aae7-2578-4fbe-9a4c-b3a5f5cd614a'
),(
'83a49317-76e5-40f2-b6e5-4b08f17d1010',
'Python',
'ca17a994-71ea-42d9-b10f-3be2e77e1d64'
)

insert into course_user ( 
id,
user_id,
course_id 
) values( 
	'05770a8f-71e9-4b7e-b4ab-bb8818b3ef20',
	'1b8550eb-eb99-4611-8474-4651cd28163e',
	'bb33aae7-2578-4fbe-9a4c-b3a5f5cd614a'
),( 
 'b3533a2c-75a7-4679-a299-10058835e6e4',
 '83441f8b-e200-46e1-8a89-c5085d2554d1',
 'ca17a994-71ea-42d9-b10f-3be2e77e1d64'
);
