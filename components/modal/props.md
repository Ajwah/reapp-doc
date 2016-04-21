```{
    open: React.PropTypes.bool,
    type: React.PropTypes.oneOf([
      'alert', // OK
      'confirm', // Cancel | OK
      'custom'  // Not present in old documentation
    ]),
    animationDuration: React.PropTypes.number,
    animations: React.PropTypes.object,
    onConfirm: React.PropTypes.func,
    onCancel: React.PropTypes.func,
    onClose: React.PropTypes.func,
    bgTapClose: React.PropTypes.bool // Not present in old documentation
  }```