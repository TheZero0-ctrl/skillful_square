module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './app/views/**/*.turbostream.erb',
    './app/components/**/*.html.erb'

  ],
  theme: {
    extend: {
      colors: {
        "accent-color": "#00FFFF",
        "primary-color": "#FF00FF",
        "secondary-color": "#00FF00"
      }
    }
  }
}
