# Users
[
  {
    first_name: 'Pascal',
    last_name: 'Pencil',
    email: 'pascal@superpencil.com',
    password: 'password',
    password_confirmation: 'password',
    time_zone: 'Tokyo'
  },
  {
    first_name: 'Clara',
    last_name: 'Nitsch',
    email: 'clara@superpencil.com',
    password: 'password',
    password_confirmation: 'password',
    time_zone: 'Brisbane'
  },
  {
    first_name: 'Marc',
    last_name: 'van Eyken',
    email: 'marc@superpencil.com',
    password: 'password',
    password_confirmation: 'password',
    time_zone: 'Eastern Time (US & Canada)'
  },
  {
    first_name: 'Chris',
    last_name: 'Favreau',
    email: 'chris@superpencil.com',
    password: 'password',
    password_confirmation: 'password',
    time_zone: 'Eastern Time (US & Canada)'
  }
].each do |u|
  user = User.find_by_email(u[:email])
  unless user
    User.create(u)
  end
end

# Teams
[
  {
    description: "Amazingly fishy folks!",
    team_name: "Salmon, Inc.",
    street_address_1: "Fishlane 88",
    street_address_2: "Aquarium 1",
    postal: "121212",
    city: "Tunaberg",
    country: "Sardinia",
    color: "FC7F6F"
  },
  {
    description: "Remote design and development agency!",
    team_name: "Superpencil",
    street_address_1: "1A Monkeyroad",
    street_address_2: "",
    postal: "2323-BA",
    city: "Partytown",
    country: "Mexapan",
    color: "FCE400"
  }
].each do |t|
  team = Team.find_by_team_name(t[:team_name])
  unless team
    Team.create(t)
  end
end

# Team User
[
  {
    email: 'pascal@superpencil.com',
    team_name: 'Superpencil',
    admin: true
  },
  {
    email: 'clara@superpencil.com',
    team_name: 'Superpencil',
    admin: false
  },
  {
    email: 'marc@superpencil.com',
    team_name: 'Superpencil',
    admin: false
  },
  {
    email: 'chris@superpencil.com',
    team_name: 'Superpencil',
    admin: false
  },
  {
    email: 'pascal@superpencil.com',
    team_name: 'Salmon, Inc.',
    admin: true
  }
].each do |tu|
  user = User.find_by_email(tu[:email])
  team = Team.find_by_team_name(tu[:team_name])
  if user && team
    team.team_users.create({user: user, admin: tu[:admin]})
  end
end
