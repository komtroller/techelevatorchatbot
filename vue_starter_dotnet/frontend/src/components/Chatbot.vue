<template>
  <section class="chat-box">
    <div v- class="title">{{name}}</div>
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
      <input type="text" v-model="message" @keyup.enter="sendMessage" />
      <button @click="sendMessage">Send</button>
    </div>
  </section>
</template>

<script>
import { createWriteStream } from "fs";
export default {
  name: "Chatbot",

  data: () => ({
    message: "",
    messages: [{ text: "Hello, What is your name?", author: "server" }],
    name: "Chattio"
  }),
  methods: {
    sendMessage() {
      const message = this.message;
      this.messages.push({
        text: message,
        author: "client"
      });
      this.message = "";
      // this.$axios.get(https://localhost:44392/api/chat/${message})
      // .then(res => {
      // this.messages.push({
      // text: res.data.output,
      // author: 'server'
      // })
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
  font-size: 30px;
  font-weight: bold;
  transition: {
    property: font-size;
    duration: 4s;
    delay: 2s;
  }
}

.chat-box,
.chat-box-list {
  background-color: white !important;
  display: flex;
  flex-direction: column;
  list-style-type: none;
}
.chat-box-list-container {
  background-color: white !important;
  overflow: scroll;
  margin-bottom: 1px;
}
.chat-box-list {
  padding-left: 10px;
  padding-right: 10px;
  span {
    padding: 8px;
    color: white;
    border-radius: 4px;
  }
  .server {
    span {
      background: #99cc00;
    }
    p {
      float: right;
    }
  }
  .client {
    span {
      background: #0070c8;
    }
    p {
      float: left;
    }
  }
}
.chat-box {
  margin: 10px;
  border: 1px solid #999;
  width: 50vw;
  height: 50vh;
  border-radius: 4px;
  margin-left: auto;
  margin-right: auto;
  align-items: space-between;
  justify-content: space-between;
}
.chat-inputs {
  display: flex;

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