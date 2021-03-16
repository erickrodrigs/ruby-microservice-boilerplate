max_threads = 5
min_threads = 1

threads min_threads, max_threads

port ENV.fetch('PORT', 3000)
environment ENV.fetch('SINATRA_ENV', 'development')
set_default_host ENV.fetch('HOST', 'localhost')
