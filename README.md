# KidSpeak

Laguage-learning mobile app aimed at helping immigrant children learn the local language through a variety of games.

<p>www.kidspeak.me</p>

## Tech Stack

This Project was built using Ruby on Rails 7.0.5.

**Client:** HTML, SCSS, Bootstrap, JavaScript ES6

**Server:** Ruby

## Run Locally

Clone the project

```bash
  git clone https://github.com/annarussi/ToolKids
```

Go to the project directory

```bash
  cd ToolKids
```

Install dependencies

```bash
  yarn install
```

Install Ruby Gems

```bash
  bundle install
```

Create DB

```bash
  bin/rails db:create
  bin/rails db:migrate
  bin/rails db:seed
```

Create .env file. Inside, insert Cloudinary Key

```bash
  CLOUDINARY_URL=cloudinary://321796341113655:eMgcJFMGohYSjeu-6ZNWTtXmN1o@dhku8hlz9
```

Start the server with

```bash
  rails server
```
or
```bash
  dev
```
and open it on your browser
```bash
  http://[::1]:3000/
```

To log-in use

```bash
user: lishina@gmail.com
```
```bash
password: 123123
```

## User Journey

1. Create new user.
2. Choose an avatar.
3. In the "Map" section, choose the first treasure chest (the one flashing).
4. Go through the lecture.
5. Play the game by choosing the correct option.

## Display

Unfortunately KidSpeak is not yet a fully polished product. **Thus, for the time being, the app can be better seen in a mobile format (particularly Iphone 12 Pro, using Chrome's inspect tool)**. For more, please check the video with instructions below:

https://github.com/annarussi/ToolKids/assets/130978987/8d11c662-05c8-4d3c-b436-d4158c8afffc


## Why?

During the final two weeks of the nine-week Le Wagon Bootcamp, our group embarked on an ambitious project to develop a laguage-learning mobile app aimed at helping immigrant children learn the local language through a variety of games.

The core objective of KidSpeak was to make language learning fun and accessible. The idea is to engage young learners with
interactive games, visual aids, and audio pronunciation guides. By making the learning process interactive and entertaining, we aimed to foster a positive attitude towards language acquisition and encourage regular practice.

## User Journey video

https://github.com/annarussi/ToolKids/assets/130978987/fa9f49d1-af71-42d1-9d74-a09c7bbaec3a
