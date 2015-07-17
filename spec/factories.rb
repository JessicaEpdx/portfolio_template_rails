FactoryGirl.define do
  factory(:user) do
    name('New User')
    username('NewUsername')
    linkedin('http://www.linkedin.com')
    github('http://www.github.com')
    email('NewUser@somewhere.com')
    description('I love web development!')
    image('profile.jpg')
    password('newuser1')
    password_confirmation('newuser1')
  end

  factory(:skill) do
    name('New Skill')
    description('I get it')
  end

  factory(:project) do
    name('New Project')
    description('It is great')
    url("http://www.google.com")
    skill_id(1)
    image_url("project.jpg")
  end

  factory(:post) do
    title('New post!')
    content('This is information in my new post')
  end
end
