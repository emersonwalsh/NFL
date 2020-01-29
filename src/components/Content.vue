<template>
<div class="content">
    <div class="content__cards" 
        v-for="team in nfl"
        v-on:click="selectTeam(team)"
        v-bind:key="team.team"
        v-bind:id="team.team">
        <div class="content__cards__item"
            v-bind:class="{'content__cards__item--active': team.team === activeTeam ? true : false}">
            <div class="content__cards__item__image" 
                v-bind:style="{'background-image': 'url('+ team.logo+ ')'}">
            </div>
        </div>
    </div>
    <!-- v-bind:class="{'content__cards--active': team.team === activeTeam ? true : false,
                'content__cards--hide': activeTeam && team.team !== activeTeam ? true : false}" -->
</div>
</template>

<script>
// import VendorLandingPage from './VendorLandingPage.vue';

export default {
    data() {
        return {
            nfl: this.$store.getters.nfl,
        };
    },
    computed: {
        activeTeam: function() {
            return this.$store.getters.activeTeam;
        },


        activeTeam: {
            get: function () {
                return this.$store.getters.activeTeam;
            },
            set: function (newValue) {}
        }
    },
    methods: {
        selectTeam(team) {
            this.activeTeam = team.team;
            this.$store.commit('setActiveTeam', team.team);
        }
    }
};
</script>

<style scoped lang="scss">
.content {
    display: flex;
    -webkit-display: box;
    -moz-display: box;
    -ms-display: flexbox;
    -webkit-display: flex;
    -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
    -moz-box-sizing: border-box;    /* Firefox, other Gecko */
    box-sizing: border-box;         /* Opera/IE 8+ */
    flex-wrap: wrap;
    padding: 1rem;
    margin: 0;
    position: absolute;
    top: 150px;
    left: 0;
    height: calc(100% - 150px);
    width: 100%;
    &__cards {
        display: flex;
        padding: 1rem;
        width: 50%;
        height: 100%;
        min-height: 125px;
        -webkit-transition: all 0.75s ease;  
        -moz-transition: all 0.75s ease;  
        -o-transition: all 0.75s ease;  
        -ms-transition: all 0.75s ease;  
        transition: all 0.75s ease;
        -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
        -moz-box-sizing: border-box;    /* Firefox, other Gecko */
        box-sizing: border-box;         /* Opera/IE 8+ */

        // Responsive
        @media(min-width: 35rem) {
            width: 25%;
        }
        @media(min-width: 65rem) {
            width: 12.5%;
        }
        @media(min-height: 25rem) {
            height: 50%;
        }
        @media(min-height: 32rem) {
            height: 33.33%;
        }
        @media(min-height: 40rem) {
            height: 25%;
        }

        &__item {
            display: flex;
            flex-direction: column;
            background-color: #fff;
            width: 100%;
            height: 100%;
            border-radius: 12px;
            box-shadow: 0 20px 40px -14px rgba(0,0,0,0.25);
            overflow: hidden;
            transition: transform 0.25s;
            -webkit-transition: transform 0.25s;
            &:hover {
                cursor: pointer;
                transform: scale(1.1);
                -webkit-transform: scale(1.1);
                .content__cards__item__image {
                    opacity: 1;
                }
            }
            &__image {
                height: 100%;
                overflow: hidden;
                background-size: contain;
                background-position: center;
                background-repeat: no-repeat;
                border-radius: 12px 12px 0px 0px;
                opacity: 0.80;
            }
            &--active {
                pointer-events:none;
                
            }
        }
        &--active {
            height: 100%;
            width: 100%;
        }
        &--hide {
            display: none;
        }
    }
}
</style>
