```
    var {
      children,
      name,
      date,
      image,
      own,
      plain,
      ...props } = this.props;

    if (own) {
      this.addStyles('own');
      this.addStyles('arrow', 'arrowOwn');
      this.addClass('own');
    }
    else {
      this.addClass('them');
    }

    var tapProps;
    if (this.props.onTap) {
      tapProps = this.tappableProps();
      this.addClass(tapProps.className);
    }

    return (
      <div {...tapProps} {...props} {...this.componentProps()}>
        <p {...this.componentProps('inner')}>
          {children}
        </p>
        {!plain &&
          <div {...this.componentProps('arrow')} />
        }
      </div>
    );
  ```