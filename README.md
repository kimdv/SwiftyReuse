# SwiftyReuse

##### A micro framework that makes it more pretty to register and dequeue cells in `UITableView` and `UICollectionView`. 


## Introduction 

The `UIKit` way of registering `UITableView` or `UICollectionView` cells is not that sweet 🙈🙈🙈
```swift
self.tableView.register(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: "CellIdentifier")
```

And dequeue 

```swift
return tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath) as! CustomCell
```

Let's do that better with the power of Swift ! 🚀🚀🚀

```swift
class ViewController {
    func viewDidLoad() {
        self.collectionView.register(Cell.self)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeue(Cell.self, for: indexPath)
    }   
}
```

And that's it! 😱😱😱
