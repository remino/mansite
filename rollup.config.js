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
		file: '.build/js/mansite/script.js',
		format: 'iife',
	},
	watch: {
		clearScreen: false,
	},
	plugins: [sassPlugin, uglify()],
}
