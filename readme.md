# Reapp Documentation

In order to improve the existing documentation, every component is provided with:
  * a description(which is mainly limited to description of old documentation),
  * a code example(taken from some examples in kitchen-sink but majority are own
examples),
  * separate specification of the `propTypes` and
  * styles applicable.

The `propTypes` have been collected by combing through the source code and wherever
there was a lack of certain props not being mentioned under `propTypes`, these have
been added accordingly.

In order to run the example code, it suffices to create a new reapp-app and under `Home`,
the exmplified component is to be added to the render method.


###Examples:

For the `Alert` component, following code example is provided:
```
  <Alert styles={{self: {background: 'red'} }}>
    this is an alert
  </Alert>
```
which is to be added as:

```
  import { Reapp, React, Alert } from 'reapp-kit';

  class Home extends React.Component {
    render() {
      return (
        <Alert styles={{self: {background: 'red'} }}>
          this is an alert
        </Alert>
      );
    }
  }

  export default Reapp(Home);
```

For other components, more detail is provided such as for `Modal` which can be used as follows:
```
  import { Reapp, React, Modal, Button } from 'reapp-kit';

  class Home extends React.Component {
    constructor() {
      super();
      this.state = { modal: false };
    }

    toggleModal(type) {
      this.setState({ modal: type });
    }

    render() {
      return (
        <div>
          { this.state.modal &&
            <Modal styles={{inner: {background: 'blue'},
                            text: {background: 'yellow'},
                            title: {background: 'red'},
                            buttons: {background: 'green'}}}
              title="Hello"
              children={["Something", "Another"]}
              type={this.state.modal}
              onClose={this.toggleModal.bind(this, false)}
            />
          }

          <Button onTap={this.toggleModal.bind(this, 'confirm')}>Confirm</Button>
        </div>
      );
    }
  }

  export default Reapp(Home);
```

### TODO
Some of the code examples are not in operational order:
  * components/chatitem/code.md:TODO: `propTypes` name and date appear not to be working.
  * components/drawer/code.md:TODO: Not functional as yet
  * components/input/code.md:TODO: styles are currently not having any effect.
  * components/textarea/code.md:TODO: demonstrate how to change styling of label
  * components/typeahead/code.md:TODO: Code dependency not working
  * components/list/code.md:Todo: demonstrate usage of type-inset styling.
  * components/listitem/code.md:Todo: demonstrate usage of type-inset styling.

Some of the components have no code example:
  * components/layoutleftnav/code.md

Some of the props are unclear as to of what type they should be.
  * components/bar/props.md:TODO: add `children: React.`PropTypes`.node` in source code
  * components/cardlist/props.md:TODO: Lack of `propTypes` because CardList is still a work in progress.
  * components/drawer/props.md:TODO: determine what are `animatedProps` and `scroller`
  * components/gallery/props.md:TODO: Determine `closeIconProps`
  * components/input/props.md:TODO: Determine `labelProps`
  * components/layoutleftnav/props.md:TODO: determine what `side` is
  * components/view/props.md:TODO: Determine: `width, height, viewList, titleBarHeight, onScrollStart, onScrollEnd`