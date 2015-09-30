
  var Say = React.createClass({
    handleSubmit: function(e) {
      e.preventDefault();
      console.log($("#sayinput").val());
      //send the stuff down the channel.
    },
    render: function() {
      return (
        <div>
          <form onSubmit={this.handleSubmit}>
            <input id="sayinput" />
            <button>Say it</button>
          </form>
        </div>
      );
    }
  });
  
  React.render(<Say />, $("#say-container")[0] );


