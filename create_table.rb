require './config.rb'
path = 'https://github.com/AndriiKot/___Icons__and__Links___/blob/main/icons/'

# file_to_write = './README.html'
file_to_write = './README2.html'

def with_indent(str, n=0)
  ' ' * (n * 2) + str
end

File.open(file_to_write, 'w') {|file| file.truncate(0) }

def create_table(file = '', path, height, options, kwargs)
  File.open(file, 'a+') do |f|
    f.puts with_indent("<table>")

    f.puts with_indent("<thead>", 1)
    f.puts with_indent("<tr>", 2)

    options.each do |technology_name|
      f.puts with_indent("<th height=#{height / 3}>#{technology_name}</th>", 3)
    end

    f.puts with_indent("</tr>", 2)
    f.puts with_indent("</thead>", 1)

    f.puts with_indent("<tbody>", 1)
    f.puts with_indent("<tr>", 2)

    options.each do |technology_name|
      f.puts with_indent("<td height=#{height} width=#{height}>", 3)
      f.puts with_indent("<img src=#{path}#{kwargs[technology_name]} alt=#{technology_name}>", 4)
      f.puts with_indent("</td>", 3)
    end

    f.puts with_indent("</tr>", 2)
    f.puts with_indent("</tbody>", 1)

    f.puts with_indent("</table>")
  end
end

arrCSS = ['CSS','PostCSS','SASS', 'Stylus', 'Less']
arrHTML = ['HTML5', 'Pug']
arrJS = ['JavaScript', 'TypeScript', 'Vue', 'Eslint', 'Prettier', 'Babel']
arrReact = ['React', 'React Query' ]
arrTaskRuner = ['Vite', 'Webpack', 'NPM', 'Gulp', 'Grunt']
arrSQL = ['PostgreSQL', 'DBeaver', 'Ruby']
arrProjectManager = ['Git', 'Visual Studio Code', 'ChatGPT']
arrApplicationDev = ['Docker', 'VirtualBox', 'Vagrant']


create_table(file_to_write, path, 100, arrCSS, LOGOS)
create_table(file_to_write, path, 100, arrHTML, LOGOS)
create_table(file_to_write, path, 100, arrJS, LOGOS)
create_table(file_to_write, path, 100, arrReact, LOGOS)
create_table(file_to_write, path, 100, arrTaskRuner, LOGOS)
create_table(file_to_write, path, 100, arrSQL, LOGOS)
create_table(file_to_write, path, 100, arrProjectManager, LOGOS)
create_table(file_to_write, path, 100, arrApplicationDev, LOGOS)
