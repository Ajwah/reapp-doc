```
  <!-- https://github.com/reapp/kitchen-sink/blob/23e3d4dad2c0406469b840d9c0066ad1c4648de1/app/components/kitchen/DottedViewLists.jsx -->
  <DottedViewList
    scrollToStep={this.state.step}
    <!-- onViewEntered={i => this.props.disableParentViewList(i > 0)}> -->
    <View title={[BackButtonStatic,'One']}>
      <p>
        First
      </p>

      <Button onTap={() => this.setState({ step: 2 })}>
        Go to third step
      </Button>
    </View>

    <View title={[
      <Button chromeless onTap={() => this.setState({ step: 0 })}>One</Button>,
      'Two'
    ]}>
      <p>
        Second
      </p>
    </View>

    <View title={[
      <Button chromeless onTap={() => this.setState({ step: 1 })}>Two</Button>,
      'Three'
    ]}>
      <p>
        Third
      </p>
    </View>

    <View title={[
      <Button chromeless onTap={() => this.setState({ step: 2 })}>Three</Button>,
      'Four'
    ]}>
      <p>
        Fourth
      </p>
    </View>
  </DottedViewList>
```