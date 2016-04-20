```
    var {
      modalProps,
      title,
      type,
      children,
      open,
      ...props } = this.props;

    if (open) {
      this.addClass('open');
      this.addStyles('open');
    }

    if (modalProps)
      this.addStyles('modal', modalProps.styles);

    var buttons;
    switch (type) {
      case 'alert':
        buttons = [
          <ModalButton confirm onTap={this.handleConfirm} stopPropagation>OK</ModalButton>
        ];
        break;
      case 'confirm':
        buttons = [
          <ModalButton styles={{ self: { borderLeft: 'none' } }} onTap={this.handleCancel} stopPropagation>Cancel</ModalButton>,
          <ModalButton confirm onTap={this.handleConfirm} stopPropagation>OK</ModalButton>
        ];
        break;
      case 'custom':
        buttons = [];
        break;
    }

    var buttonWidth = (100 / buttons.length) + '%';
    var style = {
      flexBasis: buttonWidth,
      WebkitFlexBasis: buttonWidth,
      maxWidth: buttonWidth
    };

    return (
      <div {...this.componentProps()} {...props}>
        <Tappable
          {...this.componentProps('bg')}
          onTap={this.handleBgClose}
          stopPropagation/>
        <div {...this.componentProps('modal')}>
          <div {...this.componentProps('inner')}>
            {title &&
              <div {...this.componentProps('title')}>
                {title}
              </div>
            }
            <div {...this.componentProps('text')}>
              {children}
            </div>
          </div>
          <div {...this.componentProps('buttons')}>
            {clone(buttons, (props, index) => {
              return { index, style };
            }, true)}
          </div>
        </div>
      </div>
    );
  ```