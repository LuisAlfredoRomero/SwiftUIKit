import UIKit

class TodoCell: UITableViewCell {
    
    //MARK: Properties
    
    var todoItem: TodoItem? {
        didSet {
            titleLabel.text = todoItem?.title
            
            if let isComplete = todoItem?.isComplete, isComplete {
                statusLabel.text = "Status: Complete"
                statusLabel.textColor = .systemGreen
            }else{
                statusLabel.text = "Status: Incomplete"
                statusLabel.textColor = .systemRed
                
            }
        }
        
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 24)
        label.textColor = .white
        label.text = "Title label"
        return label
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = .white
        label.text = "Status: Incomplete"
        return label
    }()
    
    //MARK: Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        
        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, left: leftAnchor, paddingTop: 4, paddingLeft: 8)
        
        addSubview(statusLabel)
        statusLabel.anchor(top: titleLabel.bottomAnchor, left: leftAnchor, paddingTop: 4, paddingLeft: 8)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    
    
    //MARK: Helpers
    

    
    
}
