const webpack = require('webpack');
const ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
    context: __dirname + "/src",
    entry: [
        './js/index.js'
    ],
    output: {
        path: __dirname + "/public",
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                test: /\.css$/,
                use: ExtractTextPlugin.extract({
                    fallback: 'style-loader',
                    use: ['css-loader']
                })
            },
            {
                test: /\.js$/,
                exclude: /node_modules/,
                use: 'babel-loader'
            }
        ]
    },
    plugins: [
        new ExtractTextPlugin('css/style.css')
    ],
    devServer: {
        contentBase: __dirname + '/public',
        port: 8080,
        historyApiFallback: true
    }
};
