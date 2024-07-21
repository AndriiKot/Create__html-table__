require './config.rb'
path = 'https://github.com/AndriiKot/___Icons__and__Links___/blob/main/icons/'


File.open('./README.md', 'w') {|file| file.truncate(0) }

def create_table(file = '', path, height, options, kwargs)

    File.open(file, 'a+') do |f|
        f.puts("<table>")
            f.puts("<thead>")
            f.puts("<tr>")
        options.size.times do |i|
            f.puts("<th height=#{height / 3}>")
            f.puts("#{options[i]}")
            f.puts("</th>")
        end
            f.puts("</tr>")
            f.puts("</thead>")
            f.puts("<tbody>")
            f.puts("<tr>")
        options.size.times do |i|
            f.puts("<td height=#{height} width=#{height}>")
            f.puts("<img src=#{path}#{kwargs[options[i]]} alt=#{options[i]}>")
            f.puts("</td>")
        end
            f.puts("</tr>")
            f.puts("</tbody>")

        f.puts("</table>")
    end
end

arrCSS = ['CSS','PostCSS','SASS', 'Stylus', 'Less'] 
arrHTML = ['HTML5', 'Pug']
arrJS = ['JavaScript', 'TypeScript', 'Vue', 'Eslint', 'Prettier', 'Babel']
arrReact = ['React', 'React Query' ]
arrTaskRuner = ['Vite', 'Webpack', 'NPM', 'Gulp', 'Grunt']
arrSQL = ['PostgreSQL', 'DBeaver', 'Ruby']


create_table('./README.md',path, 100, arrCSS, LOGOS)
create_table('./README.md',path, 100, arrHTML, LOGOS)
create_table('./README.md',path, 100, arrJS, LOGOS)
create_table('./README.md',path, 100, arrReact, LOGOS)
create_table('./README.md',path, 100, arrTaskRuner, LOGOS)
create_table('./README.md',path, 100, arrSQL, LOGOS)



  
    # 'CSS' => 'css.svg',
    # 'HTML5' => 'html.svg',
    # 'ChatGPT' => 'chatgpt.svg',
    # 'D3' => 'd3.svg',
    # 'Docker' => 'docker.svg',
    # 'Eslint' => 'eslint.svg',
    # 'Git' => 'git.svg',
    # 'Grunt' => 'grunt.svg',
    # 'Gulp' => 'gulp.svg',
    # 'JavaScript' => 'javascript-1.svg',
    # 'Less' => 'less.svg',
    # 'NPM' => 'npm.svg',
    # 'PostCSS' => 'postcss.svg',
    # 'PostgreSQL' => 'postgresql.svg',
    # 'Prettier' => 'prettier.svg',
    # 'Pug' => 'pug.svg',
    # 'React' => 'react.svg',
    # 'React-Query' => 'react-query.svg',
    # 'Ruby' => 'ruby.svg',
    # 'Vagrant' => 'vagrant.svg',
    # 'VirtualBox' => 'virtualbox.svg',
    # 'Visual Studio Code' => 'visual-studio-code.svg',
    # 'Vite' => 'vitejs.svg',
    # 'Vue' => 'vue.svg',
    # 'Webpack' => 'webpack.svg' 
