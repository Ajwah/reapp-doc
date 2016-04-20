```
    if (this.state.checked) {
      this.addStyles('toggle', 'toggleIsChecked');
      this.addStyles('toggleSwitch', 'toggleSwitchIsChecked');
    }

    if (this.enableAnimations) {
      this.addStyles('toggle', 'animate');
      this.addStyles('toggleSwitch', 'animate');
    }

    var { onChange, defaultChecked, checked, ...props } = this.props;

    return (
      <Tappable {...this.componentProps()} onTap={this.handleChange} stopPropagation>
        <input
          {...this.componentProps('input')}
          {...props}
          defaultChecked={this.state.checked}
        />
        <span {...this.componentProps('toggle')}>
          <span {...this.componentProps('toggleSwitch')} />
        </span>
      </Tappable>
    );
  ```