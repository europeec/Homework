
# Первая версия приложения 

### TableView
<img src="gifs/tableView.GIF" alt="Table View Gif" width="310" height="551">

### ScrollView
<img src="gifs/scrollView.GIF" alt="Scroll View Gif" width="310" height="551">

### Tap Animation
<img src="gifs/tapAnimation.GIF" alt="Tap Animation Gif" width="310" height="551">

При тапе анимация расширения графа, если можно так назвать + вибрация. При открытии средняя вибрация + alert показывается. При закрытии мягкая вибрация, и с задержкой 0.1 с. возвращение к изначальному размеру

 `Спасибо FeedbackGenerator за приятные вибрации (см. ниже)`
```swift
let generator = UIImpactFeedbackGenerator(style: UIImpactFeedbackGenerator.FeedbackStyle)
generator.impactOccurred()
```
