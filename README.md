# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Rails Blog ](#-rails-blog-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Testing](#testing)
  - [👤 Authors ](#-authors-)
  - [✅ Key Features ](#-key-features-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

# 📖 Rails Blog <a name="about-project"></a>

**Rails Blog**, is a Rails based app that allows users to create posts and comment on them. It uses Postgresql for the database and PGCrypto to generate encrypted uuids for all the tables.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

Ruby on Rails
PGCrypto
Rubocop
Bundler

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

GIT | Terminal | Ruby

### Setup

Clone this repository to your desired folder:

  `git clone git@github.com:wickathou/rails-blog.git`

### Install
`bundle install`
### Usage

First create the database by running the command
`rails db:create`
Then run the migrations by setting up the db
`rails db:setup`
Now seed the database with some data
`rails db:seed`
To run the project, use the command
`rails s`
Open your browser and go to
`http://localhost:3000/`

### Testing

To run the tests, run the command
`bundle exec rspec spec`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👤 Authors <a name="author"></a>

**Javier Hernandez**

- GitHub: [@wickathou](https://github.com/wickathou)
- LinkedIn: [@javierjhm](https://linkedin.com/in/javierjhm)
- Portfolio: [End Design Co.](https://works.enddesign.co/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ✅ Key Features <a name="current-features"></a>

- [Done] **[db schema migrations created]**
- [Done] **[Added pictures as standalone table]**
- [Done] **[Added models and validations]**
- [Done] **[Added unit tests]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Add views for app]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Feel free to check the [issues page](https://github.com/wickathou/rails-blog/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project feel free to fork it or star it

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Thanks Microverse, learn how to code > [Join Microverse](https://www.microverse.org/?grsf=9m3hq6)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>