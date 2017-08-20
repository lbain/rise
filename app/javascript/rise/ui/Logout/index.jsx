import * as React from 'react';

export class Logout extends React.Component {
  render() {
    return (
      <button onClick={this.props.onClick}>Log out</button>
    );
  }
}