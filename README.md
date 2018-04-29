Hi and welcome to my Rails Twitter clone! 😀

This application lets you follow users, post tweets and comment on tweets! There are existing seeds of users and tweets to make the application feel more lively! When you will be logged in, you will see a link to "suggested users to follow" where you can follow existing (fake) users, and see their tweets on your timeline!

Here are the instructions to make it run on your machine:

1. Download the project on your machine.
2. Open your terminal to the correct filepath where the file was saved.
3. Run these three commands:
    - "bundle install"
    - "rails db:migrate"
    - "rails db:seed" (if this step doesn't work, run "rails db:reset")
4. After that, run "rails s" to start a local server on your machine.
5. In a separate terminal window, run "mailcatcher". This will be needed as the application will require you to confirm your email after sign up. The email will arrive through mailcatcher, which you will have open in a separate tab of your browser.
6. You should be all set! Launch your browser and go to http://localhost:3000/ for the application. For the confirmation email, go to http://localhost:1080/ in a separate tab. 
7. Enjoy! 😀

Here is a detailed list of features:

- A user can sign up to the service with an email, password, and unique username
- Users need to verify their email before being able to access the rest of the website
- A user can edit his/her profile 
- A user can post a “tweet” no more than 140 characters
- A user can “follow” and “unfollow” another user
- A user can list the latest “tweets” from followed users
- A tweet displays username, avatar of user (both linking to user's profile)
- A user can comment on a “tweet” with another “tweet” of no more than 140 characters
- A user can access the comments from a “tweet”
