# Задание 

Сделать сколл с любыми данными и заблюрить верх и низ скролла. При этом заблюриная область должна быть тактильной(что бы в этой области можно было использовать скролл). Сделать отступ внутри скролла не менее 1/3 высоты экрана. При этом скролл должен быть во всю высоту.

# Решение 

Инициализируем массив с **Color** граничные значения которого должны быть с модификатором **.opacity(0)**.

```swift

var colors: [Color] = [.black.opacity(0), .black, .black.opacity(0)]

```

Создаем скролл с данными и добавляем внутри **Spacer** со минимальным значением 1/3 высоты экрана

```swift

ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 16) {
                Spacer(minLength: UIScreen.main.bounds.height / 3)
                
                ForEach(0...30, id: \.self) { item in
                    Text("item \(item)")
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .font(.title)
                }
                
                Spacer(minLength: UIScreen.main.bounds.height / 3)
            }
        }

```

После добавляем модификатор **.mask** в него добавляем **LinearGradient**. Вставляем в **LinearGradient** ранее инициализированный массив с цветом и выбираем необходимое направленение градиента.

```swift

.mask {
            LinearGradient(
                colors: colors,
                startPoint: .top,
                endPoint: .bottom
            )
        }

```