# README

A rails API to return a JSON object with an array of blog posts.

* Fixed some bugs and improved the testing part in the second version.
* Added caching using MemCacheStore in the third version.
* To run the app:
  1)bundle install
  2)rails db:seed
  3)brew services start memcached
  4)rails server
