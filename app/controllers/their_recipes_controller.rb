# frozen_string_literal: true

class TheirRecipesController < ApplicationController
  def index
    GeneralPageService.record_views('Their Recipes')
  end

  def acorn_squash_caramelized_onion_goat_cheese_pizza
    TheirRecipesService.record_views(session.id, 1, 'Acorn squash caramelized onion goat cheese pizza')
  end

  def asparagus_avocado_sushi
    TheirRecipesService.record_views(session.id, 2, 'Asparagus avocado sushi')
  end

  def bacon_egg_and_spinach_fried_rice
    TheirRecipesService.record_views(session.id, 3, 'Bacon egg and spinach fried rice')
  end

  def bacon_herb_and_cheese_star_bread
    TheirRecipesService.record_views(session.id, 4, 'Bacon herb and cheese star bread')
  end

  def baked_potatoes
    TheirRecipesService.record_views(session.id, 5, 'Baked potatoes')
  end

  def baked_scotch_eggs
    TheirRecipesService.record_views(session.id, 6, 'Baked scotch eggs')
  end

  def beef_stew_in_red_wine_sauce
    TheirRecipesService.record_views(session.id, 7, 'Beef stew in red wine sauce')
  end

  def beef_stew_with_dumplings
    TheirRecipesService.record_views(session.id, 8, 'Beef stew with dumplings')
  end

  def beef_tenderloin_steaks_with_celert_root_gratin
    TheirRecipesService.record_views(session.id, 9, 'Beef tenderloin steaks with celert root gratin')
  end

  def bibimbap
    TheirRecipesService.record_views(session.id, 10, 'Bibimbap')
  end

  def blueberry_vanilla_cake
    TheirRecipesService.record_views(session.id, 11, 'Blueberry vanilla cake')
  end

  def bouillabaisse
    TheirRecipesService.record_views(session.id, 12, 'Bouillabaisse')
  end

  def braised_lamb_with_herb_scented_jus
    TheirRecipesService.record_views(session.id, 13, 'Braised lamb with herb scented jus')
  end

  def caramel_cookies
    TheirRecipesService.record_views(session.id, 14, 'Caramel cookies')
  end

  def caramelised_onions
    TheirRecipesService.record_views(session.id, 15, 'Caramelised onions')
  end

  def cassoulet_with_duck_confit
    TheirRecipesService.record_views(session.id, 16, 'Cassoulet with duck confit')
  end

  def chicken_pesto_pene_with_bacon_and_feta
    TheirRecipesService.record_views(session.id, 17, 'Chicken pesto pene with bacon and feta')
  end

  def cheese_and_ham_omelette
    TheirRecipesService.record_views(session.id, 18, 'Cheese and ham omelette')
  end

  def chicken_noodle_soup
    TheirRecipesService.record_views(session.id, 19, 'Chicken noodle soup')
  end

  def chocolate_cake
    TheirRecipesService.record_views(session.id, 20, 'Chocolate cake')
  end

  def chocolate_macarons
    TheirRecipesService.record_views(session.id, 21, 'Chocolate macarons')
  end

  def cream_cheese_and_jalapeno_stuffed_chicken_breast
    TheirRecipesService.record_views(session.id, 22, 'Cream cheese and jalapeno stuffed chicken breast')
  end

  def creamy_scallop_fettuccine_with_lemon_and_capers
    TheirRecipesService.record_views(session.id, 23, 'Creamy scallop fettuccine with lemon and capers')
  end

  def creamy_tomato_soup
    TheirRecipesService.record_views(session.id, 24, 'Creamy tomato soup')
  end

  def devonshire_honey_cake
    TheirRecipesService.record_views(session.id, 25, 'Devonshire honey cake')
  end

  def dinner_rolls
    TheirRecipesService.record_views(session.id, 26, 'Dinner rolls')
  end

  def firecracker_shrimp
    TheirRecipesService.record_views(session.id, 27, 'Firecracker shrimp')
  end

  def fruit_clafoutis
    TheirRecipesService.record_views(session.id, 28, 'Fruit clafoutis')
  end

  def garlic_butter_steak_and_potatoes
    TheirRecipesService.record_views(session.id, 29, 'Garlic butter steak and potatoes')
  end

  def grilled_chicken_salad_with_cabbage
    TheirRecipesService.record_views(session.id, 30, 'Grilled chicken salad with cabbage')
  end

  def grilled_oysters
    TheirRecipesService.record_views(session.id, 31, 'Grilled oysters')
  end

  def honey_and_mustard_roast_gammon
    TheirRecipesService.record_views(session.id, 32, 'Honey and mustard roast gammon')
  end

  def honey_mustard_chicken_thighs_with_argula
    TheirRecipesService.record_views(session.id, 33, 'Honey mustard chicken thighs with argula')
  end

  def honey_tamarind_baby_back_ribs
    TheirRecipesService.record_views(session.id, 34, 'Honey tamarind baby back ribs')
  end

  def hunters_sausage_and_sauerkraut_stew
    TheirRecipesService.record_views(session.id, 35, 'Hunters sausage and sauerkraut stew')
  end

  def injera
    TheirRecipesService.record_views(session.id, 36, 'Injera')
  end

  def lembas_bread
    TheirRecipesService.record_views(session.id, 37, 'Lembas bread')
  end

  def lemon_pie
    TheirRecipesService.record_views(session.id, 38, 'Lemon pie')
  end

  def mars_bar_cake
    TheirRecipesService.record_views(session.id, 39, 'Mars bar cake')
  end

  def marshmallow_crispie_bars
    TheirRecipesService.record_views(session.id, 40, 'Marshmallow crispie bars')
  end

  def moroccan_braised_chicken
    TheirRecipesService.record_views(session.id, 41, 'Moroccan braised chicken')
  end

  def mussels_and_clams_in_a_spicy_tomato_broth
    TheirRecipesService.record_views(session.id, 42, 'Mussels and clams in a spicy tomato broth')
  end

  def over_the_top_mushroom_quiche
    TheirRecipesService.record_views(session.id, 43, 'Over the top mushroom quiche')
  end

  def paella
    TheirRecipesService.record_views(session.id, 44, 'Paella')
  end

  def pan_roast_salmon_with_tomato_viniagrette
    TheirRecipesService.record_views(session.id, 45, 'Pan roast salmon with tomato viniagrette')
  end

  def pancakes
    TheirRecipesService.record_views(session.id, 46, 'Pancakes')
  end

  def parmesan_and_garlic_crusted_potato_wedges
    TheirRecipesService.record_views(session.id, 47, 'Parmesan and garlic crusted potato wedges')
  end

  def potato_gnocchi_with_mushroom_ragu
    TheirRecipesService.record_views(session.id, 48, 'Potato gnocchi with mushroom ragu')
  end

  def potato_wedges
    TheirRecipesService.record_views(session.id, 49, 'Potato wedges')
  end

  def pull_apart_flauta_ring
    TheirRecipesService.record_views(session.id, 50, 'Pull apart flauta ring')
  end

  def roast_chicken_with_aromatic_jus
    TheirRecipesService.record_views(session.id, 51, 'Roast chicken with aromatic jus')
  end

  def roast_leg_of_lamb
    TheirRecipesService.record_views(session.id, 52, 'Roast leg of lamb')
  end

  def russian_honey_cake
    TheirRecipesService.record_views(session.id, 53, 'Russian honey cake')
  end

  def samoa_cookie_inspired_iced_coffee
    TheirRecipesService.record_views(session.id, 54, 'Samoa cookie inspired iced coffee')
  end

  def seared_scallops_in_a_cream_lemon_caper_sauce
    TheirRecipesService.record_views(session.id, 55, 'Seared scallops in a cream lemon caper sauce')
  end

  def slow_roasted_pork_loin_with_molasses_and_balsamic_glaze
    TheirRecipesService.record_views(session.id, 56, 'Slow roasted pork loin with molasses and balsamic glaze')
  end

  def spicy_italian_pizza
    TheirRecipesService.record_views(session.id, 57, 'Spicy italian pizza')
  end

  def spinache_and_artichoke_dip_stuffed_garlic_bread
    TheirRecipesService.record_views(session.id, 58, 'Spinache and artichoke dip stuffed garlic bread')
  end

  def trout_with_garlic_lemon_butter_herb_sauce
    TheirRecipesService.record_views(session.id, 59, 'Trout with garlic lemon butter herb sauce')
  end

  def welsh_rarebit
    TheirRecipesService.record_views(session.id, 60, 'Welsh rarebit')
  end

  def asian; end

  def baking; end

  def drinks; end

  def easy; end

  def healthy; end

  def pasta_dishes; end

  def potato_dishes; end

  def seasonal; end
end
