<template>
  <section class="chat-box">
    <img src= "../Logo.png" height="50px" padding-top="15px" >
    <div class="title">{{name}}</div>
    <div class="botinformation">{{Information}}</div>
    <div class="chat-box-list-container" ref="chatbox">
      <ul class="chat-box-list">
        <li class="message" v-for="(message, idx) in messages" :key="idx" :class="message.author">
          <p>
            <span v-html="message.text"></span>
          </p>
        
        </li>
      </ul>
    </div>
    <div class="chat-inputs">
      <input id='chat-input' type="text"  maxlength='100' placeholder='Type a message' v-model="message" @keyup.enter="sendMessage"/>
      <button @click="sendMessage">Send</button>
    </div>
  </section>
</template>

<script>
export default {
  name: "Chatbot",

  data: () => ({
    message: "",
    messages: [{ text: "Hello, What is your name?", author: "server" }],
    name: "Chattio",
    Information: "Tech Elevator Student Bot"
  }),
  methods: {
    sendMessage() {
      let query = this.message;

      if (query.includes("#")) {
        query = this.message.replace("#", "$");
      }
      if (query.includes("/")) {
        query = this.message.replace("/", "~");
      }
      const message = query;
      this.messages.push({
        text: this.message,
        author: "client"
      });
      this.message = "";
    
      let arrayLength = this.messages.length;
      console.log(arrayLength);
      if (arrayLength < 3) {
        this.messages.push({
          text: "Hello " + message + ", what can I do for you? ",
          author: "server"
        });
      } else {
        fetch(`https://localhost:44392/api/chat/${message}`, {
          method: "GET"
        })
          .then(response => {
            return response.text();
          })
          .then(data => {
            let responseArray = data.split("&&&");
            responseArray.map(response => {
              this.messages.push({
                text: response,
                author: "server"
              });
            });
          // nextTick: execute a function after the data has been set, and the DOM has been updated.
            this.$nextTick(() => {
              this.$refs.chatbox.scrollTop = this.$refs.chatbox.scrollHeight;
            });
          });
      }
    }
  }
};
</script>

<style scoped lang="scss">
.title { 
  font-family: "Arial";
  font-size: 40px;
  font-weight: bold;
  width: 55px;
  transition: {
    property: font-size;
    duration: 4s;
    delay: 2s;
  }

}
.chat-box-list {
  background-color: white;
  display: flex;
  flex-direction: column;
  list-style-type: none;
  word-wrap: break-word;
}
.chat-box-list-container {
  background-color: whitesmoke !important;
  overflow: scroll;
  margin-bottom: 5px;
}
.chat-box-list {
  padding-left: 10px;
  padding-right: 10px;
  .span {
    padding: 3px;
    color: white;
    border-radius: 4px;
    box-shadow: 3px 3px 3px green;
  
  }
  .server {
    .span {
      background: #99cc00;
      box-shadow: 3px 3px 3px green;
    }
    p {
      float: right;
    }
  }
  .client {
    .span {
      background: #0070c8;
      box-shadow: 3px 3px 3px blue;
    }
    p {
      float: left;
    }
  }
}
.chat-box {
  margin: 50px;
  border: 1px solid #999;
  width: 50vw;
  height: 50vh;
  border-radius: 6px;
  padding-left:6px;
  padding-top:6px;
  padding-bottom: 3px;
  margin-left: auto;
  margin-right: auto;
  align-items: space-between;
  justify-content: space-between;
 
  
}
.chat-inputs {
  display: flex;
    ::placeholder{
    font-size: 1em; 
    color: gray; 
    }

  input {
    line-height: 3;
    width: 100%;
    border: 1px solid #999;
    border-left: none;
    border-bottom: none;
    border-right: none;
    border-bottom-left-radius: 4px;
    padding-left: 15px;
  }
  button {
    width: 145px;
    color: white;
    background: rgb(185, 204, 18);
    border-color: #999;
    border-bottom: none;
    border-right: none;
    border-bottom-right-radius: 4px;
  }
}
</style>