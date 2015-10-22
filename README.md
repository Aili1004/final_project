# We-r-gettingMarried

### This is a wedding invitation webapp to invite guests through emails. Guests will have to fill out the registration form to confirm the attendance. Couples who are getting married are able to see the total number of guests attending as well as greetings from each guest.

[Github](https://github.com/Aili1004/final_project)
[Heroku](https://we-r-getting-married.herokuapp.com/)

--------------------------------------------------------

## **Models**
- Email
- Guest
- Image
- User
- Wedding

## **Associations**
- Email: belongs to one wedding.
- Guest: has many and belongs to wedding.
- Image: belongs to one wedding.
- User: belongs to one wedding.
- Wedding: has many emails; has many images; belongs to one user; has many and belongs to guest.

## **Extra Gems**
- gem'bootstrap-sass'
- gem 'gon'
- gem 'geocoder'
- gem 'rails_12factor', group: :production
- gem 'cloudinary'
- gem "figaro"

## **Javascript Files**
- place.js: used for google map
- wedding.js: event handlers (e.g. click on a div)

--------------------------------------------------------

## **Main Functionalities**
- A _guest_ receives an invitation email. By clicking the link, it directs the guest to the 'create guest' page.
- After filling in the registration form, the guest can view the gallery, location and see who else are coming. However, the guest is not able to see what other guests' greetings are.
- A _user_ has to have an account to create a new wedding. Otherwise, the user is only able to view other weddings including galleries, but cannot modify anything.
- A _user_ can only invite guests if the user is the owner of the wedding (who created that wedding in the beginning). 
- A _user_ can click guest's name on 'Guests List' and modify.

--------------------------------------------------------

## **Things could have done better/ Bugs**
- If the user does not have the guest's email address, the user should be able to send text message for the invitation as well.
- When the user change one of the guest's 'is_attending' from true to false, the guest will disappear from the user side, but it is still showing in the list from the guest side. 
- Lack of handling edge cases: the app will throw an error if the guest is trying to enter a huge number in the 'number of extra people' field. 
- The guests should be able to change their minds(change from attending to not_attending). As at the moment, only the wedding owner can go to guests list and update.
- Designs: nearly designed all the elements manualy(e.g. position: absolute; margin-left: 10em), which means if the text length changes, the style may break.


