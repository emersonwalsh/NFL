import Vue from 'vue'
import Vuex from 'vuex';
import App from './App.vue'
import initialState from './initialState';
import "./plugins/echarts";

Vue.use(Vuex);
Vue.config.productionTip = false;

const store = new Vuex.Store({
  state: initialState(),
  getters: {
    state: state => state,
    nfl: state => state.nfl,
    activeTeam: state => state.activeTeam,
  },
  mutations: {
    setActiveTeam: (state, payload) => {
      state.activeTeam = payload;
    },
  },
});

new Vue({
  el: '#app',
  store: store,
  render: h => h(App)
});