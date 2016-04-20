```
    var {
      left,
      right,
      children,
      height,
      transparent,
      attach,
      ...props } = this.props;

    var l, m, r;

    // allow shorthand array entry
    if (!left && !right && Array.isArray(children)) {
      l = children[0];
      m = children[1];
      r = children[2];
    }
    else {
      l = left;
      m = children;
      r = right;
    }

    const statusBarHeight = this.getConstant('statusBarHeight');
    if (statusBarHeight)
      this.addStyles({
        height: height + statusBarHeight,
        paddingTop: statusBarHeight
      });
    else if (height)
      this.addStyles({ height });

    if (transparent)
      this.addStyles('transparent');

    if (attach)
      this.addStyles(`attach-${attach}`);

    return (
      <div
        {...this.componentProps()}
        {...this.multiTap(2, this.handleDoubleTap)}
        {...props}>
        {l &&
          <div {...this.componentProps('left')}>
            {this.addTitleBarProps(l)}
          </div>
        }
        <div {...this.componentProps('mid')}>
          {m}
        </div>
        {r &&
          <div {...this.componentProps('right')}>
            {this.addTitleBarProps(r)}
          </div>
        }
      </div>
    );
  ```