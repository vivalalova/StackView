
import SnapKit
import UIKit

@IBDesignable
class StackView: UIStackView {
    @IBInspectable var isAutoAxis: Bool = false
    @IBInspectable var bgColor: UIColor?

    private let bgView = UIView()

    override func awakeFromNib() {
        super.awakeFromNib()

        self.setup()
    }

    init() {
        super.init(frame: .zero)
        self.setup()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }

    func setup() {
        self.setBgColor()
    }
}

extension StackView {
    private func setBgColor() {
        if let bgColor = self.bgColor {
            self.insertSubview(self.bgView, at: 0)

            self.bgView.backgroundColor = bgColor
            self.bgView.snp.remakeConstraints {
                $0.leading.top.trailing.bottom.equalToSuperview()
            }
        }
    }

    func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        guard self.isAutoAxis == true else {
            return
        }
        if self.traitCollection.verticalSizeClass == .compact {
            self.axis = .horizontal
        } else if self.traitCollection.verticalSizeClass == .regular {
            self.axis = .vertical
        }
    }
}
