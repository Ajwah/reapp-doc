```
    var {
      children,
      title,
      titleAfter,
      titleSub,
      before,
      after,
      wrapper,
      icon,
      nopad,
      index,
      fulltext,
      ...props } = this.props;

    if (index === 0) {
      this.addStyles('content', 'borderless');
      this.addStyles('after', 'borderless');
    }

    if (fulltext)
      this.addStyles('children', 'fulltext');

    // make a top level link into a wrapper so it can take up the whole item
    if (!wrapper && this.hasLinkAsChild(children)) {
      wrapper = children;
      children = wrapper.props.children;
    }

    if (!this.getStyleVal('children', 'color'))
      this.addStyles('children', {
        color: this.getConstant(title ? 'listItemChildrenColor' : 'listItemColor')
      });

    if (wrapper) {
      var hasLinkIcon = this.isLink(wrapper) || icon;

      wrapper = clone(wrapper, {
        children: hasLinkIcon ?
          this.getIcon() :
          null,
        style: this.getStyles('wrapper')[0]
      });

      // pad out right side if it has a wrapper
      if (hasLinkIcon)
        this.addStyles({ paddingRight: 20 });
    }
    else if (icon) {
      wrapper = this.getIcon();
    }

    var hasTitle = (title || titleAfter);

    if (!hasTitle)
      this.addStyles('children', 'childrenNoTitle');

    if (nopad || children && children.type && children.type.liNoPad)
      this.addStyles('content', 'contentNoPad');

    var section = this.makeSection;
    var content = [
      section('wrapper', wrapper),
      section('before', before),
      section('content', [
        hasTitle && section('titleTop', [
          section('title', title),
          section('titleAfter', titleAfter)
        ]),
        section('titleSub', titleSub),
        section('children', children)
      ]),
      section('after', after),
    ];

    var tapProps;
    if (this.props.onTap)
      tapProps = this.tappableProps();

    if (this.state.tapActive)
      this.addStyles('tapActive');

    return (
      <div {...tapProps} {...props} {...this.componentProps()}>
        {content}
      </div>
    );
  ```