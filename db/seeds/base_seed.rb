# frozen_string_literal: true

Article.create!([
                  { title: 'Brownies Should Be Banned', text: '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"' }
                ])
Blog.create!([
               { title: 'Why I cannot count', author: nil, text: "lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." },
               { title: ' Apples < Oranges', author: nil, text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum' },
               { title: "Flying and why it's bad", author: nil, text: 'Lorium Ipsum' },
               { title: "I can't see and so should you", author: nil, text: '"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."' },
               { title: "The Universe and why it's bad", author: nil, text: '"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."' },
               { title: 'Why we should all turn into bird people', author: nil, text: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."' },
               { title: 'We should all be ants', author: nil, text: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."' },
               { title: "Walking and it's dangers", author: nil, text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." },
               { title: 'Missing meals and other health tips', author: nil, text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)." },
               { title: "Using laptops as hats, how you're doing it wrong", author: nil, text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc." },
               { title: 'Cables and me', author: nil, text: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.' }
             ])
BlogComment.create!([
                      { commenter: 'Frank Applebottom', body: 't was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', blog_id: 1 }
                    ])
Recipe.create!([
                 { title: 'Scrambled Eggs', author: 'William', ingredient: "Eggs\r\nMilk\r\nPepper\r\nOil", method: 'Whisk the eggs until beaten and then fry on a pan, while cutting it up with a spatualla' }
               ])
Theirrecipe.create!([
                      { name: 'Acorn squash caramelized onion goat cheese pizza' },
                      { name: 'Asparagus avocado sushi' },
                      { name: 'Bacon egg and spinach fried rice' },
                      { name: 'Bacon herb and cheese star bread' },
                      { name: 'Baked potatoes' },
                      { name: 'Baked scotch eggs' },
                      { name: 'Beef stew in red wine sauce' },
                      { name: 'Beef stew with dumplings' },
                      { name: 'Beef tenderloin steaks with celert root gratin' },
                      { name: 'Bibimbap' },
                      { name: 'Blueberry vanilla cake' },
                      { name: 'Bouillabaisse' },
                      { name: 'Braised lamb with herb scented jus' },
                      { name: 'Caramel cookies' },
                      { name: 'Caramelised onions' },
                      { name: 'Cassoulet with duck confit' },
                      { name: 'Chicken pesto pene with bacon and feta' },
                      { name: 'Cheese and ham omelette' },
                      { name: 'Chicken noodle soup' },
                      { name: 'Chocolate cake' },
                      { name: 'Chocolate macarons' },
                      { name: 'Cream cheese and jalapeno stuffed chicken breast' },
                      { name: 'Creamy scallop fettuccine with lemon and capers' },
                      { name: 'Creamy tomato soup' },
                      { name: 'Devonshire honey cake' },
                      { name: 'Dinner rolls' },
                      { name: 'Firecracker shrimp' },
                      { name: 'Fruit clafoutis' },
                      { name: 'Garlic butter steak and potatoes' },
                      { name: 'Grilled chicken salad with cabbage' },
                      { name: 'Grilled oysters' },
                      { name: 'Honey and mustard roast gammon' },
                      { name: 'Honey mustard chicken thighs with argula' },
                      { name: 'Honey tamarind baby back ribs' },
                      { name: 'Hunters sausage and sauerkraut stew' },
                      { name: 'Injera' },
                      { name: 'Lembas bread' },
                      { name: 'Lemon pie' },
                      { name: 'Mars bar cake' },
                      { name: 'Marshmallow crispie bars' },
                      { name: 'Moroccan braised chicken' },
                      { name: 'Mussels and clams in a spicy tomato broth' },
                      { name: 'Over the top mushroom quiche' },
                      { name: 'Paella' },
                      { name: 'Pan roast salmon with tomato viniagrette' },
                      { name: 'Pancakes' },
                      { name: 'Parmesan and garlic crusted potato wedges' },
                      { name: 'Potato gnocchi with mushroom ragu' },
                      { name: 'Potato wedges' },
                      { name: 'Pull apart flauta ring' },
                      { name: 'Roast chicken with aromatic jus' },
                      { name: 'Roast leg of lamb' },
                      { name: 'Russian honey cake' },
                      { name: 'Samoa cookie inspired iced coffee' },
                      { name: 'Seared scallops in a cream lemon caper sauce' },
                      { name: 'Slow roasted pork loin with molasses and balsamic glaze' },
                      { name: 'Spicy italian pizza' },
                      { name: 'Spinache and artichoke dip stuffed garlic bread' },
                      { name: 'Trout with garlic lemon butter herb sauce' },
                      { name: 'Welsh rarebit' }
                    ])
