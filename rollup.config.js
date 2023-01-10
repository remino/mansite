import sass from 'rollup-plugin-sass'
import uglify from '@lopatnov/rollup-plugin-uglify'

const sassPlugin = sass({
	options: {
		outputStyle: 'compressed',
	},
})

export default {
	input: 'assets/js/index.js',
	output: {
		compact: true,
		file: 'source/mansite/script.js',
		format: 'iife',
	},
	plugins: [sassPlugin, uglify()],
}
