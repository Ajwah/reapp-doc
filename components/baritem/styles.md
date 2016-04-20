```
    var {
      icon,
      children,
      display,
      iconProps,
      active,
      ...props } = this.props;

    this.addStyles(display);

    if (active)
      this.addStyles('active');

    if (typeof icon === 'string')
      icon = (
        <Icon
          color={this.getConstant(active ? 'barColorActive' : 'barColor')}
          fill={this.getConstant(active ? 'barColorActive' : 'barColor')}
          size={(display === 'icon-text-right') ? 24 : 32}
          file={icon}
          styles={this.getStyles('icon')}
          svgProps={{style: { margin: 'auto' }}}
          {...iconProps}
        />
      );

    return (
      <div {...this.tappableProps()} {...this.componentProps()} {...props}>
        {display != 'text' && this.makeSection('icon', icon)}
        {display != 'icon' && this.makeSection('text', children)}
      </div>
    );
  ```