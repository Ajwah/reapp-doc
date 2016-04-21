```{
  icon: React.PropTypes.oneOfType([
    React.PropTypes.string,
    React.PropTypes.element
  ]),
  iconProps: React.PropTypes.object,
  children: React.PropTypes.node,
  display: React.PropTypes.oneOf([
    'text', 'icon', 'icon-text', 'icon-text-right'
  ]),
  active: React.PropTypes.bool
}```