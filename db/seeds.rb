User.destroy_all
Project.destroy_all
Pledge.destroy_all


10.times do |i|
	x = i + 1
	User.create!({
	email: "user#{x}@user#{x}.com",
	name: "User #{x}",
	password: "user#{x}",
	password_confirmation: "user#{x}",
	})
end

User.create!({
	email: "admin@admin.com",
	name: "Administrator",
	password: "administrator",
	password_confirmation: "administrator",
	admin: true,
	})

10.times do |i|
	x = i + 1
	Project.create!({
	  :name => "Project #{x}",
	  :description => "description #{x}",
	  :start_at => DateTime.now,
	  :end_at => 10.days.from_now,
	  :funding_goal => 50000,
	  :user_id => x,
	})
	
		
	Reward.create!({
	  :name => "Reward 1",
	  :description => "Description 1",
	  :backer_limit => 100,
	  :project_id => x,
	})

	Reward.create!({
	  :name => "Reward 2",
	  :description => "Description 2",
	  :backer_limit => 200,
	  :project_id => x,
	})

	Reward.create!({
	  :name => "Reward 3",
	  :description => "Description 3",
	  :backer_limit => 300,
	  :project_id => x,
	})


end

Pledge.create!({
	:user_id => 1,
	:reward_id => 1,
	})

Pledge.create!({
	:user_id => 2,
	:reward_id => 2,
	})

Pledge.create!({
	:user_id => 3,
	:reward_id => 3,
	})

Pledge.create!({
	:user_id => 1,
	:reward_id => 4,
	})

Pledge.create!({
	:user_id => 2,
	:reward_id => 5,
	})

Pledge.create!({
	:user_id => 3,
	:reward_id => 6,
	})

Pledge.create!({
	:user_id => 1,
	:reward_id => 7,
	})

Pledge.create!({
	:user_id => 2,
	:reward_id => 8,
	})

Pledge.create!({
	:user_id => 3,
	:reward_id => 9,
	})

Pledge.create!({
	:user_id => 1,
	:reward_id => 10,
	})

Pledge.create!({
	:user_id => 2,
	:reward_id => 11,
	})

Pledge.create!({
	:user_id => 3,
	:reward_id => 12,
	})
