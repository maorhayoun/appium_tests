cucumber:
	bundle exec rake cucumber

cucumber_sauce:
	ENV=production bundle exec rake cucumber

.PHONY: deploy cucumber cucumber_sauce
