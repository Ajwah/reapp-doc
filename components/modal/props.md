```
  propTypes: {
    open: React.PropTypes.bool,
    type: React.PropTypes.oneOf([
      'alert', // OK
      'confirm', // Cancel | OK
      'custom'  // Not present in old documentation
    ]),
    animationDuration: React.PropTypes.number,

    // example: {modal: ['fade', 'scaleDown'], bg: 'fade'}
    animations: React.PropTypes.object,

    onConfirm: React.PropTypes.func,
    onCancel: React.PropTypes.func,
    onClose: React.PropTypes.func,
    bgTapClose: React.PropTypes.bool,

    children: React.PropTypes.node,
    modalProps: React.PropTypes.object,
    title: React.PropTypes.string
  }
```