<template>
<div>
    <div id="container"></div>
</div>
</template>

<script>
import {
    Bar
} from '@antv/g2plot';
import {
} from "./api.js";
export default {
    name: "test-page",
    components: {},
    props: {},
    data() {
        return {
            stackedBarPlot: {},
            userData: [
                {
                    title: '计算机科学与技术',
                    type: '正常就业',
                    value: 6,
                },
                {
                    title: '计算机科学与技术',
                    type: '考研',
                    value: 5,
                },
                {
                    title: '计算机科学与技术',
                    type: '考公',
                    value: 2,
                },
                {
                    title: '计算机科学与技术',
                    type: '其他',
                    value: 10,
                },
                {
                    title: '网络工程',
                    type: '正常就业',
                    value: 3,
                },
                {
                    title: '网络工程',
                    type: '考研',
                    value: 3,
                },
                {
                    title: '网络工程',
                    type: '考公',
                    value: 1,
                },
                {
                    title: '网络工程',
                    type: '其他',
                    value: 5,
                },
                {
                    title: '软件工程',
                    type: '正常就业',
                    value: 10,
                },
                {
                    title: '软件工程',
                    type: '考研',
                    value: 11,
                },
                {
                    title: '软件工程',
                    type: '考公',
                    value: 7,
                },
                {
                    title: '软件工程',
                    type: '其他',
                    value: 15,
            }]
        }
    },
    methods: {
        init() {
            this.initAntvFx();
        },
        initAntvFx() {
            var data = this.userData;
            this.stackedBarPlot = new Bar('container', {
                data,
                isGroup: true,
                xField: 'value',
                yField: 'title',
                seriesField: 'type',
                dodgePadding: 4,
                label: {
                    position: 'middle', // 'left', 'middle', 'right'
                    layout: [
                        {
                            type: 'interval-adjust-position'
                        },
                        {
                            type: 'interval-hide-overlap'
                        },
                        {
                            type: 'adjust-color'
                        },
                    ],
                },
            });
            this.stackedBarPlot.render();
        },
    },
    mounted() {
        this.init();
    },
};
</script>

<style lang="less" scoped>
#container {
    width: 100%;
    height: 700px;
    margin-top: 20px;
}

.antvTitle {
    font-size: 26px;
    text-align: center;
    justify-content: center;
    display: flex;
}
</style>
