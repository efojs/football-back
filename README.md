# Test task
- Make API with Devise authentication
- Return articles in JSON format via ajax-datatables-rails

## Tech stack
- Ruby 2.5.5
- Rails 6.0
- Devise
- Devise::JWT
- AjaxDatatablesRails

## API endpoints
- Sign in: `/api/v1/users/sign_in`
- Get all articles: `/api/v1/articles`

## Live demo
https://efojs-football.herokuapp.com/

### Sign in (get token) and request articles (use token)
```
const axios = require('axios')

axios.post('https://efojs-football.herokuapp.com/api/v1/users/sign_in', {
  user: {email: "test@example.com", password: "password"},
  headers: {
    'Content-Type:': 'application/json',
  }
})
.then((resp) => {
  axios.get('https://efojs-football.herokuapp.com/api/v1/articles', {
    headers: {
      'Authorization': resp.headers.authorization,
    }
  })
  .then(res => console.log(res.data))
})
.catch(e => console.error(e))
```
