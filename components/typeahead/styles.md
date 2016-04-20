```
    // Nothing has been entered into the textbox
    if (!this.state.defaultValue || this.state.defaultValue == this.props.defaultValue) {
      return "";
    }

    // Something was just selected
    if (this.state.selection) {
      return "";
    }

    // There are no typeahead / autocomplete suggestions
    if (!this.state.visible.length && !(this.props.allowCustomValues)) {
      return "";
    }

    if (this._hasCustomValue()) {
      return (
        <TypeaheadSelector
          ref="sel" options={this.state.visible}
          optionStyles={this.props.optionStyles}
          customValue={this._getCustomValue()}
          listStyles={this.props.listStyles}
          onOptionSelected={this._onOptionSelected}
          customClasses={this.props.customClasses} />
      );
    }

    return (
      <TypeaheadSelector
        ref="sel" options={ this.state.visible }
        optionStyles={this.props.optionStyles}
        listStyles={this.props.listStyles}
        onOptionSelected={ this._onOptionSelected }
        customClasses={this.props.customClasses}/>
    );
  ```