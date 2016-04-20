```
    var { children, open, ...props } = this.props;

    if (open) {
      this.addClass('open');
      this.addStyles('open');
    }

    this.addPositionStyles();

    var linkStyles = this.getStyles('link');

    return (
      <div {...this.componentProps()} {...props}>
        <Tappable
          {...this.componentProps('bg')}
          onTap={this.handlePopoverSelect}
          stopPropagation
        />
        <div {...this.componentProps('popover')}>
          <div {...this.componentProps('arrow')}>
            <div {...this.componentProps('arrowInner')} />
          </div>
          <div {...this.componentProps('list')}>
            {React.Children.map(children, (li, i) => (
              <div key={i} styles={this.getStyles('item', i)}>
                <Tappable
                  onTap={this.handlePopoverSelect.bind(this, li.props.onClick)}>
                  {clone(li, { styles: linkStyles }, true)}
                </Tappable>
              </div>
            ))}
          </div>
        </div>
      </div>
    );
  ```