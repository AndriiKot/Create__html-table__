require './config.rb'
path = 'https://github.com/AndriiKot/___Icons__and__Links___/blob/main/icons/'


def create_table(file = '', path, height, options, kwargs)
    File.open(file, 'w') {|file| file.truncate(0) }

    File.open(file, 'w+') do |f|
        f.puts("<table>")
        # kwargs.each do |key, value|
        #             f.puts("<thead>")
        #             f.puts("<tr>")
        #             f.puts("<th height=20>")
        #             f.puts("#{key}")
        #             f.puts("</th>")
        #             f.puts("</tr>")
        #             f.puts("</thead>")
        #             f.puts("<tbody>")
        #             f.puts("<tr>")
        #             f.puts("<td height=50 width=50>")
        #             f.puts("<img src=#{path}#{value} alt=#{key}>")
        #             f.puts("</td>")
        #             f.puts("</tr>")
        #             f.puts("</tbody>")
        # end
        options.each do |key|
            f.puts("<thead>")
            f.puts("<tr>")
            f.puts("<th height=#{height}>")
            f.puts("#{key}")
            f.puts("</th>")
            f.puts("</tr>")
            f.puts("</thead>")
            f.puts("<tbody>")
            f.puts("<tr>")
            f.puts("<td height=#{height} width=#{height}>")
            f.puts("<img src=#{path}#{kwargs[key]} alt=#{key}>")
            f.puts("</td>")
            f.puts("</tr>")
            f.puts("</tbody>")
        end

        f.puts("</table>")
    end
end

arrCSS =['Less', 'CSS'] 
create_table('./README.md',path, 60, arrCSS, LOGOS)
  
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
