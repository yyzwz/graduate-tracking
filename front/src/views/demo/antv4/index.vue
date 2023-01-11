<template>
<div>
    <div id="container"></div>
</div>
</template>

<script>
import {
    Column
} from '@antv/g2plot';
import {
} from "./api.js";
export default {
    name: "test-page",
    components: {},
    props: {},
    data() {
        return {
            depCountData: [{
                    "title": "待业",
                    "value": 6
                },
                {
                    "title": "正常就业",
                    "value": 4
                },
                {
                    "title": "升学",
                    "value": 8
                },
                {
                    "title": "参军",
                    "value": 4
                },
                {
                    "title": "考公",
                    "value": 7
                },
                {
                    "title": "自由职业",
                    "value": 5
                },
                {
                    "title": "其他",
                    "value": 16
                },
            ],
            stackedColumnPlot: {}
        }
    },
    methods: {
        init() {
            this.initAntvFx();
        },
        initAntvFx() {
            var that = this;
            var data = this.depCountData;
            this.stackedColumnPlot = new Column('container', {
                data,
                legend: {
                    layout: 'horizontal',
                    position: 'top',
                    maxRow: 2
                },
                autoFit: true,
                padding: "auto",
                xField: 'title',
                yField: 'value',
                color: '#19be6b',
                marginRatio: 0.1,
                columnStyle: {
                    radius: [20, 20, 0, 0],
                    fillOpacity: 0.6,
                    stroke: "#ff9900",
                    lineDash: [5, 5]
                },
                label: {
                    position: 'top',
                    layout: [{
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
                meta: {
                    title: {
                        alias: '成交地区',
                    },
                    value: {
                        alias: '成交量',
                    },
                },
            });
            this.stackedColumnPlot.render();
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
