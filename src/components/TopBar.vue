<template>
<div class="top-bar">
    <img v-bind:src="imageSrc"
        v-on:click="navigateHome()">
</div>
</template>

<script>
export default {
    data() {
        return {
            nfl: this.$store.getters.nfl,
            imageSrc: './../src/assets/nfl-logo1.png',
        };
    },
    props: {
        team: [String, Boolean]
    },
    watch: {
        team() {
            this.updateLogo();
        },
    },
    methods: {
        updateLogo() {
            if (this.team) {
                for (let i = 0; i < this.nfl.length; i++) {
                    if (this.nfl[i].team === this.team) {
                        this.imageSrc = this.nfl[i].logo;
                        break;
                    }
                }
            } else {
                this.imageSrc = './../src/assets/nfl-logo1.png';
            }
        },
        navigateHome() {
            if (this.team) {
                this.$store.commit('setActiveTeam', false);
            }
        }
    }
};
</script>

<style scoped lang="scss">
.top-bar {
    position: fixed;
    top:0;
    left: 0;
    height: 150px;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: white;
    z-index: 2;
    img {
        height: 80%;
        cursor: pointer;
    }
}
</style>
