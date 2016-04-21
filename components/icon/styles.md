```{  ????????
    var {
      isInTitleBar,
      isInViewList,
      ...props
    } = this.props;

    const shouldUpdate = isInViewList ? !this.isAnimating('viewList') : true;

    this.addStyles({
      width: this.props.size,
      height: this.props.size
    });

    const color = this.props.color ||
      this.getConstant(isInTitleBar ? 'iconColorTitleBar' : 'iconColor');

    if (isInTitleBar)
      this.addStyles('isInTitleBar');

    return (
      <div {...this.componentProps()}>
        <StaticContainer update={shouldUpdate}>
          <SVG {...props} color={color} />
        </StaticContainer>
      </div>
    );
  }```