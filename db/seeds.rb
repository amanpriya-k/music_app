# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Album.destroy_all
Band.destroy_all
Track.destroy_all
Note.destroy_all

od = Band.create(name: 'One Direction')
be = Band.create(name: 'The Beatles')
ar = Band.create(name: 'Ariana Grande')

u1 = User.create(email: 'riya', password: '123456')
u2 = User.create(email: 'elliot', password: '123456')
u3 = User.create(email: 'brett', password: '123456')
u4 = User.create(email: 'harry', password: '123456')
u5 = User.create(email: 'ron', password: '123456')

a1 = Album.create(title: 'Made in the AM', year: 2015, band_id: od.id, studio_recorded: true)
a = Track.create(album_id: a1.id, title: 'Perfect', ord: 1, regular: true, lyrics: "I might never be your knight in shining armor
I might never be the one you take home to mother
And I might never be the one who brings you flowers
But I can be the one, be the one tonight
When I first saw you
From across the room
I could tell that you were curious (oh, yeah)
Girl, I hope you’re sure
What you're looking for
'Cause I'm not good at making promises
But if you like causing trouble up in hotel rooms
And if you like having secret little rendezvous
If you like to do the things you know that we shouldn’t do
Then baby, I'm perfect
Baby, I'm perfect for you
And if you like midnight driving with the windows down
And if you like going places we can’t even pronounce
If you like to do whatever you've been dreaming about
Baby, you're perfect
Baby, you're…")

Note.create(user_id: u1.id, track_id: a.id, body: "this is my fav song!")
Note.create(user_id: u2.id, track_id: a.id, body: "i saw this live two years ago it was sickk")


b = Track.create(album_id: a1.id, title: 'Drag Me Down', ord: 2, regular: true, lyrics: "I've got fire for a heart
I'm not scared of the dark
You've never seen it look so easy
I got a river for a soul
And baby you're a boat
Baby, you're my only reason
If I didn't have you, there would be nothing left
The shell of a man that could never be his best
If I didn't have you, I'd never see the sun
You taught me how to be someone, yeah
All my life
You stood by me
When no one else was ever behind me
All these lights
They can't blind me
With your love, nobody can drag me down
All my life
You stood by me
When no one else was ever behind me
All these lights
They can't blind me
With your love, nobody can drag me down
Nobody, nobody
Nobody can drag me down
Nobody, nobody
Nobody can drag me down
I got a fire for a heart
I'm not scared of the dark
You've never…")

Note.create(user_id: u3.id, track_id: b.id, body: "i always do this at karaoke")



c = Track.create(album_id: a1.id, title: 'Girl Almighty', ord: 3, regular: false, lyrics: "Her light is as loud as as many ambulances
As it takes to save a savior (whoa whoa whoa)
She floats through the room on a big balloon
Some say, 'She's such a fake'
That her love is made up
No, no, no, no
Let's have another toast to the girl almighty
Let's pray we stay young
Stay made of lightning
Am I the only
Only believer?
There's something happening here
The only
Only believer
I get down, I get down, I get down
On my knees for ya
I get down, I get down, I get down
On my knees
I get down on my knees for you
Her light is as loud as as many ambulances
As it takes to save a savior (whoa whoa whoa)
She floats through the room on a big balloon
Some say, 'She's such a fake'
That her love is made up
No, no,…")

Note.create(user_id: u1.id, track_id: c.id, body: "i have this tattoo omg")
Note.create(user_id: u5.id, track_id: c.id, body: "i always blast this lol")


a2 = Album.create(title: 'Four', year: 2016, band_id: od.id, studio_recorded: true)
d = Track.create(album_id: a2.id, title: 'Steal My Girl', ord: 1, regular: true, lyrics: "She be my queen
Since we were sixteen
We want the same things
We dream the same dreams
Alright (alright)
I got it all
'Cause she is the one
Her mum calls me love
Her dad calls me son
Alright (alright)
I know, I know, I know for sure
Everybody wanna steal my girl
Everybody wanna take her heart away
Couple billion in the whole wide world
Find another one 'cause she belongs to me
Everybody wanna steal my girl
Everybody wanna take her heart away
Couple billion in the whole wide world
Find another one 'cause she belongs to me
Na na na na na na (oh, yeah)
Na na na na na na (alright)
Na na na na na na
Na na, she belongs to me")
Note.create(user_id: u4.id, track_id: d.id, body: "amazinggg")
Note.create(user_id: u1.id, track_id: d.id, body: "classic tbh")
Note.create(user_id: u2.id, track_id: d.id, body: "not my favorite honestly")


e = Track.create(album_id: a2.id, title: 'Night Change', ord: 2, regular: true, lyrics: "Going out tonight
Changes into something red
Her mother doesn't like that kind of dress
Everything she never had she's showing off
Driving too fast
Moon is breaking through her hair
She said it was something that she won't forget
Having no regrets is all that she really wants
We're only getting older baby
And I've been thinking about it lately
Does it ever drive you crazy
Just how fast the night changes?
Everything that you've ever dreamed of
Disappearing when you wake up
But there's nothing to be afraid of
Even when the night changes
It will never change me and you
Chasing it tonight,
Doubts are running ‘round her head
He's waiting, hides behind a cigarette
Heart is beating loud, she doesn't want it to stop
Moving too fast
Moon is lighting up her skin
She's…")
Note.create(user_id: u5.id, track_id: e.id, body: "sang this in shower yesterday")
Note.create(user_id: u3.id, track_id: e.id, body: "i miss u zayn")
Note.create(user_id: u2.id, track_id: e.id, body: "fav song ever")

a3 = Album.create(title: 'Abbey Road', year: 1969, band_id: be.id, studio_recorded: false)
f = Track.create(album_id: a3.id, title: 'Come Together', ord: 1, regular: true, lyrics: "Here come old flat top
He come groovin' up slowly
He got joo joo eyeballs
He one holy roller
He got hair down to his knee
Got to be a joker
He just do what he please
He wear no shoeshine
He got toe jam football
He got monkey finger
He shoot Coca-Cola
He say I know you, you know me
One thing I can tell you is
You got to be free
Come together, right now
Over me
He bad production
He got walrus gumboot
He got Ono sideboard
He one spinal cracker
He got feet down below his knee
Hold you in his armchair
You can feel his disease
Come together, right now
Over me
He roller coaster
He got early warning
He got muddy water
He one Mojo filter
He say…")
Note.create(user_id: u4.id, track_id: e.id, body: "THE classic ")

g = Track.create(album_id: a3.id, title: 'Let it Be', ord: 2, regular: true, lyrics: "When I find myself in times of trouble, Mother Mary comes to me
Speaking words of wisdom, let it be
And in my hour of darkness she is standing right in front of me
Speaking words of wisdom, let it be
Let it be, let it be, let it be, let it be
Whisper words of wisdom, let it be
And when the broken hearted people living in the world agree
There will be an answer, let it be
For though they may be parted, there is still a chance that they will see
There will be an answer, let it be
Let it be, let it be, let it be, let it be
There will be an answer, let it be
Let it be, let it be, let it be, let it be
Whisper words of wisdom, let it be
Let it be, let it be, let it be, let it be
Whisper words of wisdom, let it be
And when the night is cloudy there is still a light that shines on me
Shine until tomorrow, let it be
I wake up to the sound of music, Mother Mary comes to me
Speaking words of wisdom, let it be
Let it be, let it be, let it be, yeah, let it be
There will be an answer, let it be
Let it be, let it be, let it be, yeah, let it be
Whisper words of wisdom, let it be
")

Note.create(user_id: u3.id, track_id: g.id, body: "makes me nostalgic omg")
Note.create(user_id: u5.id, track_id: g.id, body: "amazing tune")


a4 = Album.create(title: 'Sgt. Peppers Lonely Heart', year: 1967, band_id: be.id, studio_recorded: true)
h = Track.create(album_id: a4.id, title: 'Lucy in the Sky', ord: 1, regular: false, lyrics: "Picture yourself in a boat on a river
With tangerine trees and marmalade skies
Somebody calls you, you answer quite slowly
A girl with kaleidoscope eyes
Cellophane flowers of yellow and green
Towering over your head
Look for the girl with the sun in her eyes
And she's gone
Lucy in the sky with diamonds
Lucy in the sky with diamonds
Lucy in the sky with diamonds
Ah
Follow her down to a bridge by a fountain
Where rocking horse people eat marshmallow pies
Everyone smiles as you drift past the flowers
That grow so incredibly high
Newspaper taxis appear on the shore
Waiting to take you away
Climb in the back with your head in the clouds
And you're gone
Lucy in the sky with diamonds
Lucy in the sky with diamonds
Lucy in the sky with diamonds
Ah
Picture yourself…")
Note.create(user_id: u1.id, track_id: d.id, body: "gorgeous")
Note.create(user_id: u2.id, track_id: d.id, body: "we all know what this song means lol")

a5 = Album.create(title: 'Sweetener', year: 2018, band_id: ar.id, studio_recorded: true)
i = Track.create(album_id: a5.id, title: 'God is a Woman', ord: 1, regular: true, lyrics: "You, you love it how I move you
You love it how I touch you
My one, when all is said and done
You'll believe God is a woman
And I, I feel it after midnight
A feeling that you can't fight
My one, it lingers when we're done
You'll believe God is a woman

I don't wanna waste no time, yeah
You ain't got a one-track mind, yeah
Have it any way you like, yeah
And I can tell that you know I know how I want it
Ain't nobody else can relate
Boy, I like that you ain't afraid
Baby, lay me down and let's pray
I'm tellin' you the way I like it, how I want it

(Yeah)
And I can be all the things you told me not to be
(Yeah)
When you try to come for me, I keep on flourishing
(Yeah)
And he see the universe when I'm in company
It's all in me")
Note.create(user_id: u4.id, track_id: h.id, body: "ariana is my god")
Note.create(user_id: u2.id, track_id: h.id, body: "my favorite song ever")

j = Track.create(album_id: a5.id, title: 'No Tears Left to Cry', ord: 2, regular: true, lyrics: "Right now, I'm in a state of mind
I wanna be in like all the time
Ain't got no tears left to cry
So I'm pickin' it up, pickin' it up
I'm lovin', I'm livin', I'm pickin' it up
I'm pickin' it up, pickin' it up
I'm lovin', I'm livin', I'm pickin' it up (oh, yeah)
I'm pickin' it up (yeah), pickin' it up (yeah)
Lovin', I'm livin', so we turnin' up
Yeah, we turnin' it up
Ain't got no tears in my body
I ran out, but boy, I like it, I like it, I like it
Don't matter how, what, where, who tries it
We're out here vibin', we vibin', we vibin'
Comin' out, even when it's rainin' down
Can't stop now, can't stop so shut your mouth
Shut your mouth, and if you don't know
Then now you know it, babe
Know it, babe, yeah
Right now, I'm in a state of mind
I wanna…")
Note.create(user_id: u4.id, track_id: i.id, body: "what a BOP")
Note.create(user_id: u1.id, track_id: i.id, body: "gonna go down in history tbh")
Note.create(user_id: u2.id, track_id: i.id, body: "have yall seen the music vid??")

a6 = Album.create(title: 'Dangerous Woman', year: 2016, band_id: ar.id, studio_recorded: true)
l = Track.create(album_id: a6.id, title: 'Dangerous Woman', ord: 1, regular: true, lyrics: "Oh yeah
Don't need permission
Made my decision to test my limits
'Cause it's my business
God as my witness
Start what I finished
Don't need no hold up
Taking control of this kind of moment
I'm locked and loaded
Completely focused my mind is open
All that you got, skin to skin, oh my God
Don't ya stop, boy
Somethin' 'bout you makes me feel like a dangerous woman
Somethin' 'bout, somethin' 'bout, somethin' 'bout you
Makes me wanna do things that I shouldn't
Somethin' 'bout, somethin' 'bout, somethin' 'bout
Nothing to prove and I'm bulletproof and
Know what I'm doing
The way we're movin' like introducing
Us to a create thing
I wanna savor, save it for later
The taste of flavor, 'cause I'm a taker
'Cause I'm a giver, it's only nature
I live for danger
All that…")
Note.create(user_id: u5.id, track_id: i.id, body: "makes me feel dangerous")
Note.create(user_id: u3.id, track_id: i.id, body: "this jam omg")

m = Track.create(album_id: a6.id, title: 'Greedy', ord: 2, regular: true, lyrics: "Greedy
You know that I'm greedy for love
Boy, you give me feelings, never felt before
I'm making it obvious by knocking at your door
I know that I'm coming tonight
You know I'm coming tonight
Don't want to deny it anymore
Been in this state of mind
Been in this state of mind
Been in this state of mind, oh yeah
Baby, you got lucky cause you're rocking with the best
And I'm greedy
'Cause I'm so greedy
'Cause I'm so
I ain't talking money, I'm just physically obsessed
And I'm greedy
'Cause I'm so greedy
'Cause I'm so greedy, ooh
You know that I'm greedy for love
You know that I'm greedy for love
'Cause I'm so greedy, ooh
You know that I'm greedy for love
You know that I'm greedy for love
'Cause I'm so
I don't need a phone call
Got nothing to say
I'ma tell…")

Note.create(user_id: u1.id, track_id: i.id, body: "i sang this in acappella omg")
Note.create(user_id: u2.id, track_id: i.id, body: "badass!!!")
