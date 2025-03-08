db-setup:
	rails db:drop
	rails db:create
	rails db:migrate
	rails db:seed
