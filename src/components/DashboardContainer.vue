<template>
    <div class="dashboard-container">
        <div class="dashboard-container__full">
            <chart :options="chartOptionsBar"></chart>
        </div>
        <div class="dashboard-container__full">
            <chart :options="chartOptionsPie"></chart>
        </div>
    </div>
</template>

<script>
export default {
    name: 'DasboardContainer',
    data: () => ({
        chartOptionsBar: {
            xAxis: {
                data: ['Q1', 'Q2', 'Q3', 'Q4']
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    type: 'bar',
                    data: [63, 75, 24, 92]
                }
            ]
        },
        chartOptionsPie: {
            series: [
                {
                    type: 'pie',
                    radius: ['50%', '70%'],
                    avoidLabelOverlap: false,
                    label: {
                        normal: {
                            show: false,
                            position: 'center'
                        },
                        emphasis: {
                            show: true,
                            textStyle: {
                                fontSize: '30',
                                fontWeight: 'bold'
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            show: false
                        }
                    },
                    data: [
                        {value: 335, name: 'A'},
                        {value: 310, name: 'B'},
                        {value: 234, name: 'C'},
                        {value: 135, name: 'D'},
                        {value: 1548, name: 'E'}
                    ]
                }
            ]
        },
    }),
    props: {
        team: [String, Boolean]
    }
};
</script>

<style scoped lang="scss">
    .dashboard-container {
        position: absolute;
        top: calc(150px + 20px);
        width: 100%;
        height: calc(200vh - 150px - 20px - 150px - 20px);
        z-index: 1;
        &__full {
            position: relative;
            width: 100%;
            height: calc(100vh - 150px - 20px);
        }
    }
    .echarts {
        width: 100%;
        height: 100%;
    }
</style>
