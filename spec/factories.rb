FactoryGirl.define do
  factory(:profile) do
    name('New User')
    linkedin('http://www.linkedin.com')
    github('http://www.github.com')
    email('NewUser@somewhere.com')
    description('I love web development!')
    image('profile.jpg')
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
end
