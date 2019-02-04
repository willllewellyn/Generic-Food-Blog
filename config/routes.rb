# frozen_string_literal: true

Rails.application.routes.draw do
  resources :about
  get 'about/contacts'
  get 'about/analytics'
  get 'about/health_and_safety'

  get 'homepage/index'

  resources :articles do
    resources :article_comments
  end

  resources :blogs do
    resources :blog_comments
  end

  resources :blog_views

  resources :recipes do
    resources :recipe_comments
  end

  resources :their_recipes

  resources :visitors

  root 'homepage#index'

  get 'their_recipes/acorn_squash_caramelized_onion_goat_cheese_pizza'
  get 'their_recipes/asparagus_avocado_sushi'
  get 'their_recipes/bacon_egg_and_spinach_fried_rice'
  get 'their_recipes/bacon_herb_and_cheese_star_bread'
  get 'their_recipes/baked_potatoes'
  get 'their_recipes/baked_scotch_eggs'
  get 'their_recipes/beef_stew_in_red_wine_sauce'
  get 'their_recipes/beef_stew_with_dumplings'
  get 'their_recipes/beef_tenderloin_steaks_with_celert_root_gratin'
  get 'their_recipes/bibimbap'
  get 'their_recipes/blueberry_vanilla_cake'
  get 'their_recipes/bouillabaisse'
  get 'their_recipes/braised_lamb_with_herb_scented_jus'
  get 'their_recipes/caramel_cookies'
  get 'their_recipes/caramelised_onions'
  get 'their_recipes/cassoulet_with_duck_confit'
  get 'their_recipes/chicken_pesto_pene_with_bacon_and_feta'
  get 'their_recipes/cheese_and_ham_omelette'
  get 'their_recipes/chicken_noodle_soup'
  get 'their_recipes/chocolate_cake'
  get 'their_recipes/chocolate_macarons'
  get 'their_recipes/cream_cheese_and_jalapeno_stuffed_chicken_breast'
  get 'their_recipes/creamy_scallop_fettuccine_with_lemon_and_capers'
  get 'their_recipes/creamy_tomato_soup'
  get 'their_recipes/devonshire_honey_cake'
  get 'their_recipes/dinner_rolls'
  get 'their_recipes/firecracker_shrimp'
  get 'their_recipes/fruit_clafoutis'
  get 'their_recipes/garlic_butter_steak_and_potatoes'
  get 'their_recipes/grilled_chicken_salad_with_cabbage'
  get 'their_recipes/grilled_oysters'
  get 'their_recipes/honey_and_mustard_roast_gammon'
  get 'their_recipes/honey_mustard_chicken_thighs_with_argula'
  get 'their_recipes/honey_tamarind_baby_back_ribs'
  get 'their_recipes/hunters_sausage_and_sauerkraut_stew'
  get 'their_recipes/injera'
  get 'their_recipes/lembas_bread'
  get 'their_recipes/lemon_pie'
  get 'their_recipes/mars_bar_cake'
  get 'their_recipes/marshmallow_crispie_bars'
  get 'their_recipes/moroccan_braised_chicken'
  get 'their_recipes/mussels_and_clams_in_a_spicy_tomato_broth'
  get 'their_recipes/over_the_top_mushroom_quiche'
  get 'their_recipes/paella'
  get 'their_recipes/pan_roast_salmon_with_tomato_viniagrette'
  get 'their_recipes/pancakes'
  get 'their_recipes/parmesan_and_garlic_crusted_potato_wedges'
  get 'their_recipes/potato_gnocchi_with_mushroom_ragu'
  get 'their_recipes/potato_wedges'
  get 'their_recipes/pull_apart_flauta_ring'
  get 'their_recipes/roast_chicken_with_aromatic_jus'
  get 'their_recipes/roast_leg_of_lamb'
  get 'their_recipes/russian_honey_cake'
  get 'their_recipes/samoa_cookie_inspired_iced_coffee'
  get 'their_recipes/seared_scallops_in_a_cream_lemon_caper_sauce'
  get 'their_recipes/slow_roasted_pork_loin_with_molasses_and_balsamic_glaze'
  get 'their_recipes/spicy_italian_pizza'
  get 'their_recipes/spinache_and_artichoke_dip_stuffed_garlic_bread'
  get 'their_recipes/trout_with_garlic_lemon_butter_herb_sauce'
  get 'their_recipes/welsh_rarebit'
  get 'their_recipes/template'
  get 'their_recipes/pasta_dishes'
  get 'their_recipes/potato_dishes'
  get 'their_recipes/seasonal'
  get 'their_recipes/drinks'
  get 'their_recipes/baking'
  get 'their_recipes/healthy'
  get 'their_recipes/easy'
  get 'their_recipes/asian'
end
