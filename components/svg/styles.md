```
    var {
      size,
      file,
      color,
      stroke,
      shapeRendering,
      viewBox,
      crisp,
      ...props
    } = this.props;

    if (!file)
      return null;

    this.addStyles({
      shapeRendering: shapeRendering ? shapeRendering : 'initial',
      fill: color
    });

    if (crisp)
      shapeRendering = 'crispEdges';

    if (stroke)
      Object.assign(props, {
        stroke: color,
        strokeWidth: stroke * 2, // were scaling down from 64 / 2
        strokeLinecap: 'round'
      });

    // center icon
    props.style = Object.assign({
      margin: 'auto',
    }, props.style);

    return (
      <svg viewBox={viewBox} {...this.componentProps()} {...props}>
        <g dangerouslySetInnerHTML={{__html: file }} />
      </svg>
    );
  ```