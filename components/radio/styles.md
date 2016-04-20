```
    var { iconProps, defaultChecked, checked, onChange, ...props } = this.props;

    return (
      <Tappable {...this.componentProps()} onTap={this.handleChange} stopPropagation>
        <input
          {...this.componentProps('input')}
          {...props}
          checked={this.state.checked}
        />
        <Icon
          file={require('../assets/icons/check.svg')}
          size={24}
          color={this.getConstant(this.state.checked ? 'active' : 'inactive')}
          styles={{ self: { margin: 'auto' } }}
          {...iconProps}
        />
      </Tappable>
    );
  ```