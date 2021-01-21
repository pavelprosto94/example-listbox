import random
txt = [
  "To live is to risk it all. -Rick",
  "What, so everyone’s supposed to sleep every single night now? You realize that nighttime makes up half of all time? – Rick Sanchez",
  "If I let you make me nervous, then we can’t get schwifty -Rick",
  "That’s planning for failure Morty. Even dumber than regular planning. – Rick ",
  "Nobody exists on purpose- Morty",
  "Don’t make the same mistakes I made. Don’t deify the people who leave you. – Beth ",
  "Sometimes science is more art than science. -Morty ",
  "Wubba lubba dub dub."
]

def speak():
    img="../src/img/"+str(random.randint(0,18))+".png"
    text=txt[random.randint(0,len(txt))]
    return [img,text]
