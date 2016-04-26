Todo: Is not in working order as yet.
working version: http://kitchen.reapp.io/view-lists
```
  constructor() {
    super();
    this.state = { step: 0 };
  }

  render() {
    return (
      <div>
        <NestedViewList
          scrollToStep={this.state.step}
          onViewEntered={i => this.props.disableParentViewList(i > 0)}>
          <View
            title={[
            'One',
            <Button chromeless onTap={() => this.setState({ step: 1 })}>Two</Button>
          ]}>
            <p>
              Nested View lists mimic views that overlap or contain each other.
              They are the equivalent of an iOS deeper view transition.
            </p>

            <p>
              You can swipe on the edges of the screen to transition between them.
            </p>

            <Button
              onTap={() => this.setState({ step: 1 })}>
              Next View
            </Button>
          </View>

          <View title={[
            <Button chromeless onTap={() => this.setState({ step: 0 })}>One</Button>,
            'Two',
            <Button chromeless onTap={() => this.setState({ step: 2 })}>Three</Button>
          ]}>
            <p>
              Middle view. Swipe left or right edge to move.
            </p>
          </View>

          <View title="Final View">
            <p>
              Final View. Don't forget you can swipe from the edges to go between views.
            </p>

            <Button
              onTap={() => this.setState({ step: 0 })}>
              Back to the beginning.
            </Button>
          </View>
        </NestedViewList>
      </div>
    );
  }
```