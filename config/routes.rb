SchneierOnSecurity::Application.routes.draw do
  resources                     :users
  root					'static_pages#blog'
  match		'/newsletter',      to: 	'static_pages#newsletter', 	via: 	'get'
  match		'/books',	        to: 	'static_pages#books', 		via: 	'get'
  match		'/essays',	        to: 	'static_pages#essays', 		via: 	'get'
  match		'/news',		        to: 	'static_pages#news', 		via: 	'get'
  match		'/schedule',	        to: 	'static_pages#schedule', 	via: 	'get'
  match		'/crypto',	        to: 	'static_pages#crypto', 		via: 	'get'
  match		'/about',	        to: 	'static_pages#about', 		via: 	'get'
  match 	'/registration',     to: 	'users#new',            		via: 	'get'
end
