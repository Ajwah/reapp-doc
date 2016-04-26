```
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
            children=["Something", 'Another']
            type={this.state.modal}
            onClose={this.toggleModal.bind(this, false)}
          />
        }

        <Button onTap={this.toggleModal.bind(this, 'confirm')}>Confirm</Button>
      </div>
    );
  }
```