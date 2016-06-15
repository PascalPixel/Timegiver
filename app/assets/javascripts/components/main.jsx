/*
  App
  <App />
*/
var App = React.createClass({
  getInitialState: function() {
    return {
      usered: {},
      order: {}
    }
  },
  addUser: function(user) {
    var timestamp = (new Date()).getTime();
    this.state.users['user-' + timestamp] = user;
    this.setState({users: this.state.users});
  },
  render: function() {
    return (
      <div className="row">
        <div className="col-sm-4">
          <Header tagline="Remote team management" />
        </div>
        <div className="col-sm-4">
          <Order />
        </div>
        <div className="col-sm-4">
          <Inventory />
        </div>
      </div>
    )
  }
});

/*
  Add User Form
  <AddUserForm />
*/
var AddUserForm = React.createClass({
  createUser: function(event) {
    event.preventDefault();
    var user = {
      name: this.refs.name.value,
      price: this.refs.price.value,
      status: this.refs.status.value,
      desc: this.refs.desc.value,
      image: this.refs.image.value
    }
    console.log(user);
  },
  render: function() {
    return (
      <form className="user-edit" onSubmit={this.createUser}>
        <input className="form-control" type="text" ref="name" placeholder="User Name"/>
        <input className="form-control" type="text" ref="price" placeholder="User Price"/>
        <select className="c-select" ref="status">
          <option value="available">Fresh!</option>
          <option value="unavailable">Sold Out!</option>
        </select>
        <textarea className="form-control" type="text" ref="desc" placeholder="Desc"></textarea>
        <input className="form-control" type="text" ref="image" placeholder="URL to Image"/>
        <button className="btn btn-primary" type="submit">+ Add Item</button>
      </form>
    )
  }
});

/*
  Header
  <Header />
*/
var Header = React.createClass({
  render: function() {
    return (
      <header className="top">
        <h1>Zeitgeber</h1>
        <h3 className="tagline">{this.props.tagline}</h3>
      </header>
    )
  }
});

/*
  Order
  <Order />
*/
var Order = React.createClass({
  render: function() {
    return (
      <p>Order</p>
    )
  }
});

/*
  Inventory
  <Inventory />
*/
var Inventory = React.createClass({
  render: function() {
    return (
      <div>
        <h2>Inventory</h2>

        <AddUserForm addUser={this.addUser}/>
      </div>
    )
  }
});
