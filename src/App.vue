<template>
    <div id="app">
        <TopBar :team="activeTeam" />
        <div v-if="!activeTeam">
            <Content />
        </div>
        <div v-else>
            <Navigation />
            <DashboardContainer :team="activeTeam" />
        </div>
    </div>
</template>

<script>
import TopBar from './components/TopBar.vue';
import Content from './components/Content.vue';
import DashboardContainer from './components/DashboardContainer.vue';
import Navigation from './components/Navigation.vue';

export default {
    computed: {
        activeTeam: function() {
            return this.$store.getters.activeTeam;
        }
    },
    components: {
        TopBar,
        Content,
        DashboardContainer,
        Navigation,
    },
    name: 'app'
}
</script>

<style lang="scss">
#app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    font-size: 16px;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    overflow: auto;
}
</style>
