const colors = require('tailwindcss/colors');

module.exports = {
  darkMode: 'class',
  important: true,
    content: [
      "templates/twenty-one-plus/includes/*.tpl",
      "templates/twenty-one-plus/*.tpl",
      "templates/twenty-one-plus/js/*.js",
      "templates/twenty-one-plus-dark/includes/*.tpl",
      "templates/twenty-one-plus-dark/*.tpl",
      "templates/twenty-one-plus-dark/js/*.js",
    ],
    safelist: [
      'xl:ml-6',
      '2xl:col-span-3',
      'px-2',
      'pb-2',
    ],
  corePlugins: {
    container: false,
  },
  theme: {
    extend: {
      backgroundColor: ['active'],
      colors: {
        primary: colors.indigo,
        gray: {
          "990": "rgb(9,10,15)",
          "950": "rgb(19,20,25)",
          "900": "rgb(27,29,36)",
          "850": "rgb(36,38,47)",
          "800": "rgb(44,47,58)",
          "750": "rgb(53,56,70)",
          "700": "rgb(61,65,81)",
          "650": "rgb(70,73,92)",
          "600": "rgb(78,82,103)",
          "550": "rgb(87,91,114)",
          "500": "rgb(95,100,125)",
          "450": "rgb(113,119,147)",
          "400": "rgb(135,140,164)",
          "350": "rgb(157,161,181)",
          "300": "rgb(180,183,198)",
          "250": "rgb(202,204,215)",
          "200": "rgb(213,215,223)",
          "150": "rgb(224,226,232)",
          "100": "rgb(235,236,240)",
          "50": "rgb(247,247,249)",
          "10": "rgb(250,250,251)",
        },
      },
    },
  },
  plugins: [],
};