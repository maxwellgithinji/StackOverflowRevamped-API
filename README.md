# StackOverflow Revamped

* ### StackOverflowRevamped is a platform where people can ask questions and provide answers. 

## Required Features
- Users can create an account and log in.
- Users can post questions.
- Users can delete the questions they post.
- Users can post answers.
- Users can view the answers to questions.
- Users can accept an answer out of all the answers to his/her question as the preferred answer. 
- Users can upvote or downvote an answer.
- Users can comment on an answer.
- Users can fetch all questions he/she has ever asked on the platform
- Users can search for questions on the platform
- Users can view questions with the most answers.

## API endpoints
- `POST /auth/signup`
- `POST /auth/login`
- `GET /questions`
- `GET /questions/<userId>`
- `GET /questions/<questionId>`
- `POST /questions`
- `Delete /questions/<questionId>`
- `POST /questions/<questionId>/answers`
- `PUT /questions/<questionId>/answers/<answerId>`
- `POST /questions/<questionId>/answers/<answerId>/comment`
