//
//  quotes.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import Foundation

// Models
//
//struct APIResponse: Codable {
//    let quotes: [Quote]
//}
//
//struct Quote: Codable {
//    let quote: String?
//    let author: String?
//    let category: String?
//}

let JSON = """
  [
  {
    "text": "Genius is one percent inspiration and ninety-nine percent perspiration.",
    "author": "Thomas Edison"
  },
  {
    "text": "You can observe a lot just by watching.",
    "author": "Yogi Berra"
  },
  {
    "text": "A house divided against itself cannot stand.",
    "author": "Abraham Lincoln"
  },
  {
    "text": "Difficulties increase the nearer we get to the goal.",
    "author": "Johann Wolfgang von Goethe"
  },
  {
    "text": "Fate is in your hands and no one elses",
    "author": "Byron Pulsifer"
  },
  {
    "text": "Be the chief but never the lord.",
    "author": "Lao Tzu"
  },
  {
    "text": "Nothing happens unless first we dream.",
    "author": "Carl Sandburg"
  },
  {
    "text": "Well begun is half done.",
    "author": "Aristotle"
  },
  {
    "text": "Life is a learning experience, only if you learn.",
    "author": "Yogi Berra"
  },
  {
    "text": "Self-complacency is fatal to progress.",
    "author": "Margaret Sangster"
  },
  {
    "text": "Peace comes from within. Do not seek it without.",
    "author": "Buddha"
  },
  {
    "text": "What you give is what you get.",
    "author": "Byron Pulsifer"
  },
  {
    "text": "We can only learn to love by loving.",
    "author": "Iris Murdoch"
  },
  {
    "text": "Life is change. Growth is optional. Choose wisely.",
    "author": "Karen Clark"
  },
  {
    "text": "You'll see it when you believe it.",
    "author": "Wayne Dyer"
  },
  {
    "text": "Today is the tomorrow we worried about yesterday.",
    "author": null
  },
  {
    "text": "It's easier to see the mistakes on someone else's paper.",
    "author": null
  },
  {
    "text": "Every man dies. Not every man really lives.",
    "author": null
  },
  {
    "text": "To lead people walk behind them.",
    "author": "Lao Tzu"
  },
  {
    "text": "Having nothing, nothing can he lose.",
    "author": "William Shakespeare"
  },
  {
    "text": "Trouble is only opportunity in work clothes.",
    "author": "Henry J. Kaiser"
  },
  {
    "text": "A rolling stone gathers no moss.",
    "author": "Publilius Syrus"
  },
  {
    "text": "Ideas are the beginning points of all fortunes.",
    "author": "Napoleon Hill"
  },
  {
    "text": "Everything in life is luck.",
    "author": "Donald Trump"
  },
  {
    "text": "Doing nothing is better than being busy doing nothing.",
    "author": "Lao Tzu"
  },
  {
    "text": "Trust yourself. You know more than you think you do.",
    "author": "Benjamin Spock"
  },
  {
    "text": "Study the past, if you would divine the future.",
    "author": "Confucius"
  },
  {
    "text": "The day is already blessed, find peace within it.",
    "author": null
  },
  {
    "text": "From error to error one discovers the entire truth.",
    "author": "Sigmund Freud"
  },
  {
    "text": "Well done is better than well said.",
    "author": "Benjamin Franklin"
  },
  {
    "text": "Bite off more than you can chew, then chew it.",
    "author": "Ella Williams"
  },
  {
    "text": "Work out your own salvation. Do not depend on others.",
    "author": "Buddha"
  },
  {
    "text": "One today is worth two tomorrows.",
    "author": "Benjamin Franklin"
  },
  {
    "text": "Once you choose hope, anythings possible.",
    "author": "Christopher Reeve"
  },
  {
    "text": "God always takes the simplest way.",
    "author": "Albert Einstein"
  },
  {
    "text": "One fails forward toward success.",
    "author": "Charles Kettering"
  },
  {
    "text": "From small beginnings come great things.",
    "author": null
  },
  {
    "text": "Learning is a treasure that will follow its owner everywhere",
    "author": "Chinese proverb"
  },
  {
    "text": "Be as you wish to seem.",
    "author": "Socrates"
  },
  {
    "text": "The world is always in movement.",
    "author": "V. Naipaul"
  },
  {
    "text": "Never mistake activity for achievement.",
    "author": "John Wooden"
  },
  {
    "text": "What worries you masters you.",
    "author": "Haddon Robinson"
  },
  {
    "text": "One faces the future with ones past.",
    "author": "Pearl Buck"
  },
  {
    "text": "Goals are the fuel in the furnace of achievement.",
    "author": "Brian Tracy"
  },
  {
    "text": "Who sows virtue reaps honour.",
    "author": "Leonardo da Vinci"
  },
  {
    "text": "Be kind whenever possible. It is always possible.",
    "author": "Dalai Lama"
  },
  {
    "text": "Talk doesn't cook rice.",
    "author": "Chinese proverb"
  },
  {
    "text": "He is able who thinks he is able.",
    "author": "Buddha"
  },
 
  {
    "text": "Never put off till tomorrow what you can do today.",
    "author": "Thomas Jefferson"
  },
  {
    "text": "Minds are like parachutes. They only function when open.",
    "author": "Thomas Dewar"
  },
  {
    "text": "If a man does his best, what else is there?",
    "author": "George Patton"
  },
  {
    "text": "The secret of success is constancy to purpose.",
    "author": "Benjamin Disraeli"
  },
  
  {
    "text": "Wicked people are always surprised to find ability in those that are good.",
    "author": "Marquis Vauvenargues"
  },
  {
    "text": "Life is so constructed that an event does not, cannot, will not, match the expectation.",
    "author": "Charlotte Bronte"
  },
  {
    "text": "If you change the way you look at things, the things you look at change.",
    "author": "Wayne Dyer"
  },
  {
    "text": "No man can succeed in a line of endeavor which he does not like.",
    "author": "Napoleon Hill"
  },
  {
    "text": "You will not be punished for your anger, you will be punished by your anger.",
    "author": "Buddha"
  },
  {
    "text": "Don't judge each day by the harvest you reap but by the seeds you plant.",
    "author": "Robert Stevenson"
  },
  {
    "text": "They say that time changes things, but you actually have to change them yourself.",
    "author": "Andy Warhol"
  },
  {
    "text": "Never apologize for showing feelings. When you do so, you apologize for the truth.",
    "author": "Benjamin Disraeli"
  },
  {
    "text": "The truth you believe and cling to makes you unavailable to hear anything new.",
    "author": "Pema Chodron"
  },
  {
    "text": "Adversity has the effect of eliciting talents, which in prosperous circumstances would have lain dormant.",
    "author": "Horace"
  },
  {
    "text": "If you spend your whole life waiting for the storm, you'll never enjoy the sunshine.",
    "author": "Morris West"
  },
  {
    "text": "The only limit to our realization of tomorrow will be our doubts of today.",
    "author": "Franklin Roosevelt"
  },
  {
    "text": "Every action of our lives touches on some chord that will vibrate in eternity.",
    "author": "Edwin Chapin"
  },
  {
    "text": "Shoot for the moon. Even if you miss, you'll land among the stars.",
    "author": "Les Brown"
  },
  {
    "text": "It does not matter how slowly you go as long as you do not stop.",
    "author": "Confucius"
  },
  {
    "text": "Every day may not be good, but there's something good in every day.",
    "author": null
  },
  {
    "text": "Most folks are about as happy as they make up their minds to be.",
    "author": "Abraham Lincoln"
  },
  {
    "text": "If you would take, you must first give, this is the beginning of intelligence.",
    "author": "Lao Tzu"
  },
  {
    "text": "Some people think it's holding that makes one strong sometimes it's letting go.",
    "author": null
  },
  {
    "text": "It is on our failures that we base a new and different and better success.",
    "author": "Havelock Ellis"
  },
  {
    "text": "Quality is never an accident; it is always the result of intelligent effort.",
    "author": "John Ruskin"
  },
  {
    "text": "To study and not think is a waste. To think and not study is dangerous.",
    "author": "Confucius"
  },
  {
    "text": "Life is a succession of lessons, which must be lived to be understood.",
    "author": "Ralph Emerson"
  },
  {
    "text": "Time changes everything except something within us which is always surprised by change.",
    "author": "Thomas Hardy"
  },
  {
    "text": "You are important enough to ask and you are blessed enough to receive back.",
    "author": "Wayne Dyer"
  },
  {
    "text": "If you cannot do great things, do small things in a great way.",
    "author": "Napoleon Hill"
  },
  {
    "text": "If you want your life to be more rewarding, you have to change the way you think.",
    "author": "Oprah Winfrey"
  },
  {
    "text": "Transformation doesn't take place with a vacuum; instead, it occurs when we are indirectly and directly connected to all those around us.",
    "author": "Byron Pulsifer"
  },
  {
    "text": "The only difference between your abilities and others is the ability to put yourself in their shoes and actually try.",
    "author": "Leonardo Ruiz"
  },
  {
    "text": "The free man is he who does not fear to go to the end of his thought.",
    "author": "Leon Blum"
  },
  {
    "text": "Great are they who see that spiritual is stronger than any material force, that thoughts rule the world.",
    "author": "Ralph Emerson"
  },
  {
    "text": "A life spent making mistakes is not only more honourable but more useful than a life spent in doing nothing.",
    "author": "Bernard Shaw"
  },
  {
    "text": "The wise man does not lay up his own treasures. The more he gives to others, the more he has for his own.",
    "author": "Lao Tzu"
  },
  {
    "text": "Don't leave a stone unturned. It's always something, to know you have done the most you could.",
    "author": "Charles Dickens"
  },
  {
    "text": "By going beyond your own problems and taking care of others, you gain inner strength, self-confidence, courage, and a greater sense of calm.",
    "author": "Dalai Lama"
  },
  {
    "text": "We come to love not by finding a perfect person, but by learning to see an imperfect person perfectly.",
    "author": "Sam Keen"
  },
  {
    "text": "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
    "author": "Walt Emerson"
  },
  {
    "text": "There are things so deep and complex that only intuition can reach it in our stage of development as human beings.",
    "author": "John Astin"
  },
  {
    "text": "A little more persistence, a little more effort, and what seemed hopeless failure may turn to glorious success.",
    "author": "Elbert Hubbard"
  },
  {
    "text": "There is no retirement for an artist, it's your way of living so there is no end to it.",
    "author": "Henry Moore"
  },
  {
    "text": "I will not be concerned at other men is not knowing me;I will be concerned at my own want of ability.",
    "author": "Confucius"
  },
  {
    "text": "Why worry about things you cannot control when you can keep yourself busy controlling the things that depend on you?",
    "author": null
  }
  ]

"""

struct Quote: Decodable {
    let text: String
    let author: String
    //let category: String
}

let jsonData = JSON.data(using: .utf8)!
let result: [Quote] = try! JSONDecoder().decode([Quote].self, from: jsonData)

