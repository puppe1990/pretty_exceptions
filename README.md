# PrettyExceptions

A Rails engine that transforms your application's error pages into beautiful, modern exception displays using Tailwind CSS styling.

## Overview

PrettyExceptions replaces Rails' default exception pages with clean, responsive, and developer-friendly error displays. Instead of the standard Rails error pages, you'll get modern-looking exception pages that provide all the debugging information you need in a much more pleasant format.

## Features

- 🎨 **Modern Design**: Clean, responsive layout using Tailwind CSS
- 📱 **Mobile Friendly**: Fully responsive design that works on all devices
- 🔍 **Comprehensive Error Info**: Displays exception class, message, controller/action context, and file location
- 📋 **Source Code Extracts**: Shows relevant code snippets around the error location
- 📚 **Full Backtrace**: Complete stack trace with clean formatting
- ⚡ **Zero Configuration**: Works out of the box with any Rails application
- 🔧 **Rails Integration**: Seamless integration as a Rails engine

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pretty_exceptions'
```

And then execute:

```bash
$ bundle install
```

## Usage

Once installed, PrettyExceptions automatically replaces your Rails exception pages in development mode. No additional configuration is required!

### What You Get

When an exception occurs in your Rails application, instead of the default Rails error page, you'll see:

1. **Clean Header Section**: 
   - Exception class name prominently displayed
   - Clear error message
   - Controller and action context
   - File and line number where the error occurred

2. **Source Code Display**:
   - Code snippets showing the area around where the error happened
   - Syntax highlighting for better readability

3. **Complete Backtrace**:
   - Full stack trace in an easy-to-read format
   - Each frame clearly separated and formatted

### Example Error Display

The error pages feature:
- White cards with subtle shadows and rounded corners
- Red accent colors for error states
- Professional typography with proper spacing
- Responsive grid layout
- Monospace fonts for code sections

## Requirements

- Rails 5.0 or higher
- Your Rails application should have Tailwind CSS classes available (or similar utility classes)

## How It Works

PrettyExceptions works by:

1. **Registering as a Rails Engine**: Integrates seamlessly with your Rails application
2. **Overriding Rescue Templates**: Replaces the default Rails exception views
3. **Prepending View Paths**: Ensures the custom templates are used instead of Rails defaults
4. **Asset Integration**: Includes minimal CSS overrides for enhanced styling

## Customization

The gem uses Tailwind CSS classes for styling. If you want to customize the appearance:

1. The main templates are located in `app/views/rescues/`
2. You can override these templates in your Rails application by creating your own versions
3. Additional CSS customizations can be added to override the default styles

## Development

After checking out the repo, run:

```bash
$ bundle install
```

## Contributing

Bug reports and pull requests are welcome on GitHub. This project is intended to be a safe, welcoming space for collaboration.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](LICENSE).

## Author

Created by [puppe1990](https://github.com/puppe1990)

---

**Note**: This gem is designed for development environments. In production, you should have proper error handling and user-friendly error pages that don't expose sensitive debugging information. 