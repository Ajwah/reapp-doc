# Reapp Documentation

In order to improve the existing documentation, for every component is provided
a description(which is mainly limited to description of old documentation), a
code example(taken from some examples in kitchen-sink but majority are own
examples) together with separate specification of the propTypes and styles applicable.

The propTypes have been collected by combing through the source code and wherever
there was a lack of certain props not being mentioned under propTypes, these have
been added accordingly.

In order to run the example code, create a new reapp-app, and under Home, add the component
to the render method.

### TODO
Some of the code examples are not in operational order:
  *components/chatitem/code.md:TODO: propTypes name and date appear not to be working.
  *components/drawer/code.md:TODO: Not functional as yet
  *components/input/code.md:TODO: styles are currently not having any effect.
  *components/textarea/code.md:TODO: demonstrate how to change styling of label
  *components/typeahead/code.md:TODO: Code dependency not working
  *components/list/code.md:Todo: demonstrate usage of type-inset styling.
  *components/listitem/code.md:Todo: demonstrate usage of type-inset styling.

Some of the props are unclear as to what type they should be.
  *components/bar/props.md:TODO: add `children: React.PropTypes.node` in source code
  *components/cardlist/props.md:TODO: Lack of propTypes because CardList is still a work in progress.
  *components/drawer/props.md:TODO: determine what are `animatedProps` and `scroller`
  *components/gallery/props.md:TODO: Determine `closeIconProps`
  *components/input/props.md:TODO: Determine `labelProps`
  *components/layoutleftnav/props.md:TODO: determine what `side` is
  *components/view/props.md:TODO: Determine: `width, height, viewList, titleBarHeight, onScrollStart, onScrollEnd`