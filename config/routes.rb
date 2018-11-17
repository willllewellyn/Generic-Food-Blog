# frozen_string_literal: true

Rails.application.routes.draw do
  get 'their_recipes/acorn_squash_caramelized_onion_goat_cheese_pizza'
  get 'their_recipes/asparagus_avocado_sushi'
  get 'their_recipes/baked_potatoes'
  get 'their_recipes/baked_scotch_eggs'
  get 'their_recipes/beef_stew_in_red_wine_sauce'
  get 'their_recipes/beef_tenderloin_steaks_with_celert_root_gratin'
  get 'their_recipes/bibimbap'
  get 'their_recipes/blueberry_vanilla_cake'
  get 'their_recipes/bouillabaisse'
  get 'their_recipes/braised_lamb_with_herb_scented_jus'
  get 'their_recipes/cassoulet_with_duck_confit'
  get 'their_recipes/chicken_noodle_soup'
  get 'their_recipes/chocolate_cake'
  get 'their_recipes/chocolate_macarons'
  get 'their_recipes/cream_cheese_and_jalapeno_stuffed_chicken_breast'
  get 'their_recipes/dinner_rolls'
  get 'their_recipes/fruit_clafoutis'
  get 'their_recipes/grilled_oysters'
  get 'their_recipes/honey_tamarind_baby_back_ribs'
  get 'their_recipes/injera'
  get 'their_recipes/mar_bar_cake'
  get 'their_recipes/over_the_top_mushroom_quiche'
  get 'their_recipes/paella'
  get 'their_recipes/pan_roast_salmon_with_tomato_viniagrette'
  get 'their_recipes/potato_gnocchi_with_mushroom_ragu'
  get 'their_recipes/pull_apart_flauta_ring'
  get 'their_recipes/roast_chicken_with_aromatic_jus'
  get 'their_recipes/roast_leg_of_lamb'
  get 'their_recipes/slow_roasted_pork_loin_with_molasses_and_balsamic_glaze'
  get 'their_recipes/spicy_italian_pizza'
  get 'their_recipes/template'
  get 'legal/privacy_policy'
  get 'legal/terms_of_use'
  get 'about/contacts'
  get 'about/other_contacts'
  get 'about/health_and_safety'
  get 'homepage/index'

  resources :articles do
    resources :article_comments
  end

  resources :recipes do
    resources :recipe_comments
  end

  resources :their_recipes

  resources :blogs do
    resources :blog_comments
  end

  resources :about

  root 'homepage#index'
end
