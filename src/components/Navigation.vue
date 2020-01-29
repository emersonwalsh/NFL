<template>
<div class="navigation">
    <img src="./../assets/left-arrow.png"
        v-on:click="navigateHome()">
    <div class="navigation__text"
        v-on:click="navigateHome()">
        All Teams
    </div>
</div>
</template>

<script>

export default {
    methods: {
        navigateHome() {
            this.$store.commit('setActiveTeam', false);
        }
    }
};
</script>

<style scoped lang="scss">
.navigation {
    position: fixed;
    width: 100%;
    top: 150px;
    left: 0;
    height: 20px;
    padding-left: 1rem;
    z-index: 2;
    background-color: white;
    user-select: none;
    &__text {
        float: left;
        font-size: 18px;
        line-height: 20px;
        color: #4b4b4b;
        padding-left: 4px;
        cursor: pointer;
        &:hover {
            color: #6d6d6d;
        }
    }
    img {
        float: left;
        height: 12px;
        padding-top: 4px;
        cursor: pointer;
    }
}
</style>
