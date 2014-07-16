# == Route Map
#
#                            Prefix Verb   URI Pattern                                                            Controller#Action
#        company_job_subcontractors POST   /company/jobs/:job_id/subcontractors(.:format)                         subcontractors#create
#    new_company_job_subcontractors GET    /company/jobs/:job_id/subcontractors/new(.:format)                     subcontractors#new
#   edit_company_job_subcontractors GET    /company/jobs/:job_id/subcontractors/edit(.:format)                    subcontractors#edit
#                                   GET    /company/jobs/:job_id/subcontractors(.:format)                         subcontractors#show
#                                   PATCH  /company/jobs/:job_id/subcontractors(.:format)                         subcontractors#update
#                                   PUT    /company/jobs/:job_id/subcontractors(.:format)                         subcontractors#update
#                                   DELETE /company/jobs/:job_id/subcontractors(.:format)                         subcontractors#destroy
#     company_job_entry_attachments GET    /company/jobs/:job_id/entries/:entry_id/attachments(.:format)          attachments#index
#                                   POST   /company/jobs/:job_id/entries/:entry_id/attachments(.:format)          attachments#create
#  new_company_job_entry_attachment GET    /company/jobs/:job_id/entries/:entry_id/attachments/new(.:format)      attachments#new
# edit_company_job_entry_attachment GET    /company/jobs/:job_id/entries/:entry_id/attachments/:id/edit(.:format) attachments#edit
#      company_job_entry_attachment GET    /company/jobs/:job_id/entries/:entry_id/attachments/:id(.:format)      attachments#show
#                                   PATCH  /company/jobs/:job_id/entries/:entry_id/attachments/:id(.:format)      attachments#update
#                                   PUT    /company/jobs/:job_id/entries/:entry_id/attachments/:id(.:format)      attachments#update
#                                   DELETE /company/jobs/:job_id/entries/:entry_id/attachments/:id(.:format)      attachments#destroy
#               company_job_entries GET    /company/jobs/:job_id/entries(.:format)                                entries#index
#                                   POST   /company/jobs/:job_id/entries(.:format)                                entries#create
#             new_company_job_entry GET    /company/jobs/:job_id/entries/new(.:format)                            entries#new
#            edit_company_job_entry GET    /company/jobs/:job_id/entries/:id/edit(.:format)                       entries#edit
#                 company_job_entry GET    /company/jobs/:job_id/entries/:id(.:format)                            entries#show
#                                   PATCH  /company/jobs/:job_id/entries/:id(.:format)                            entries#update
#                                   PUT    /company/jobs/:job_id/entries/:id(.:format)                            entries#update
#                                   DELETE /company/jobs/:job_id/entries/:id(.:format)                            entries#destroy
#                      company_jobs GET    /company/jobs(.:format)                                                jobs#index
#                                   POST   /company/jobs(.:format)                                                jobs#create
#                   new_company_job GET    /company/jobs/new(.:format)                                            jobs#new
#                  edit_company_job GET    /company/jobs/:id/edit(.:format)                                       jobs#edit
#                       company_job GET    /company/jobs/:id(.:format)                                            jobs#show
#                                   PATCH  /company/jobs/:id(.:format)                                            jobs#update
#                                   PUT    /company/jobs/:id(.:format)                                            jobs#update
#                                   DELETE /company/jobs/:id(.:format)                                            jobs#destroy
#                   company_persons POST   /company/persons(.:format)                                             persons#create
#               new_company_persons GET    /company/persons/new(.:format)                                         persons#new
#              edit_company_persons GET    /company/persons/edit(.:format)                                        persons#edit
#                                   GET    /company/persons(.:format)                                             persons#show
#                                   PATCH  /company/persons(.:format)                                             persons#update
#                                   PUT    /company/persons(.:format)                                             persons#update
#                                   DELETE /company/persons(.:format)                                             persons#destroy
#                                   POST   /company/customers_clients(.:format)                                   persons#create
#                                   GET    /company/customers_clients/new(.:format)                               persons#new
#                                   GET    /company/customers_clients/edit(.:format)                              persons#edit
#                                   GET    /company/customers_clients(.:format)                                   persons#show
#                                   PATCH  /company/customers_clients(.:format)                                   persons#update
#                                   PUT    /company/customers_clients(.:format)                                   persons#update
#                                   DELETE /company/customers_clients(.:format)                                   persons#destroy
#                 company_companies POST   /company/subcontractors(.:format)                                      companies#create
#             new_company_companies GET    /company/subcontractors/new(.:format)                                  companies#new
#            edit_company_companies GET    /company/subcontractors/edit(.:format)                                 companies#edit
#                                   GET    /company/subcontractors(.:format)                                      companies#show
#                                   PATCH  /company/subcontractors(.:format)                                      companies#update
#                                   PUT    /company/subcontractors(.:format)                                      companies#update
#                                   DELETE /company/subcontractors(.:format)                                      companies#destroy
#                                   POST   /company/company_clients(.:format)                                     companies#create
#                                   GET    /company/company_clients/new(.:format)                                 companies#new
#                                   GET    /company/company_clients/edit(.:format)                                companies#edit
#                                   GET    /company/company_clients(.:format)                                     companies#show
#                                   PATCH  /company/company_clients(.:format)                                     companies#update
#                                   PUT    /company/company_clients(.:format)                                     companies#update
#                                   DELETE /company/company_clients(.:format)                                     companies#destroy
#                           company POST   /company(.:format)                                                     companies#create
#                       new_company GET    /company/new(.:format)                                                 companies#new
#                      edit_company GET    /company/edit(.:format)                                                companies#edit
#                                   GET    /company(.:format)                                                     companies#show
#                                   PATCH  /company(.:format)                                                     companies#update
#                                   PUT    /company(.:format)                                                     companies#update
#                                   DELETE /company(.:format)                                                     companies#destroy
#                       attachments GET    /attachments(.:format)                                                 attachments#index
#                                   POST   /attachments(.:format)                                                 attachments#create
#                    new_attachment GET    /attachments/new(.:format)                                             attachments#new
#                   edit_attachment GET    /attachments/:id/edit(.:format)                                        attachments#edit
#                        attachment GET    /attachments/:id(.:format)                                             attachments#show
#                                   PATCH  /attachments/:id(.:format)                                             attachments#update
#                                   PUT    /attachments/:id(.:format)                                             attachments#update
#                                   DELETE /attachments/:id(.:format)                                             attachments#destroy
#                 new_admin_session GET    /admin/sign_in(.:format)                                               devise/sessions#new
#                     admin_session POST   /admin/sign_in(.:format)                                               devise/sessions#create
#             destroy_admin_session DELETE /admin/sign_out(.:format)                                              devise/sessions#destroy
#                    admin_password POST   /admin/password(.:format)                                              devise/passwords#create
#                new_admin_password GET    /admin/password/new(.:format)                                          devise/passwords#new
#               edit_admin_password GET    /admin/password/edit(.:format)                                         devise/passwords#edit
#                                   PATCH  /admin/password(.:format)                                              devise/passwords#update
#                                   PUT    /admin/password(.:format)                                              devise/passwords#update
#         cancel_admin_registration GET    /admin/cancel(.:format)                                                devise/registrations#cancel
#                admin_registration POST   /admin(.:format)                                                       devise/registrations#create
#            new_admin_registration GET    /admin/sign_up(.:format)                                               devise/registrations#new
#           edit_admin_registration GET    /admin/edit(.:format)                                                  devise/registrations#edit
#                                   PATCH  /admin(.:format)                                                       devise/registrations#update
#                                   PUT    /admin(.:format)                                                       devise/registrations#update
#                                   DELETE /admin(.:format)                                                       devise/registrations#destroy
#                              root GET    /                                                                      welcome#splash
#                        admin_root GET    /company(.:format)                                                     company#show
#

Rails.application.routes.draw do

  # resource :admin
  
  
  resource :company do
    resources :jobs do
      resource :subcontractors#, path: :subcontractors
      resources :entries do
        resources :attachments
      end
    end

    
    resource :persons
    resource :persons, path: :customers_clients

    resource :companies, path: :subcontractors
    resource :companies, path: :company_clients
  end

  # temp while testing carrierwave
  resources :attachments
  
  
  devise_for :admin
    root to: 'welcome#splash'
    get 'company', to: 'company#show', as: :admin_root
  

  # admin_root to: 'company_path'
  # admin_root to: company_path
  # divise_root to: company_path


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
