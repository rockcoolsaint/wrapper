# README

There are two solutions presented in the application as contained in two separate branches.
- `solution-1`
- `solution-2`

The following steps will guide you in running the two solutions:

* Clone the repo and `cd` into the application root directory and do the following
* Fetch all the branches available `git fetch`
- For solution-1:
- - `git checkout solution-1`
- - run the rails server `rails s` then launch your browser and interact with the application on the root path `/`
- to execute tests for `solution-1` branch, execute `rails test`

- For solution-2:
- - `git checkout solution-2`
- - run `rails console` and do the following as a sample case
- - `wrapper = Wrapper.new`
- - ` wrapper.wrap("one two three four five six seven eight nine", 4)`
- to execute tests for branch `solution-2`, execute ` ruby test/controllers/wrapper_controller_test.rb`
