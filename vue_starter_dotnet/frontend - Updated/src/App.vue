
<template>
  <div id="app">
    <ChatBot msg="Welcome to Your Vue.js App"/>
  </div>
</template>

<script>
import ChatBot from './components/Chatbot.vue'

export default {
  name: 'app',
  components: {
    ChatBot
  }
}
</script>

<style>
#app {
  font-family: 'Roboto', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: left; 
  color: #2c3e50;
  margin-top: 4vh;
  margin-bottom: 4vh;
  
}
</style>