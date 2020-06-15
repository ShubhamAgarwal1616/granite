import React from 'react';
import * as Routes from "../../utils/Routes"

class Navbarin extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <nav className="navbar navbar-dark bg-primary">
          <a
            className="navbar-brand">
            Granite
          </a>
          <a
            className="navbar-brand"
            href={Routes.new_user_path()}>
            SignUp
          </a>
        </nav>
      </div>
    );
  }
}

export default Navbarin;