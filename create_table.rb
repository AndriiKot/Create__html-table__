require './config.rb'
path = 'https://github.com/AndriiKot/___Icons__and__Links___/blob/main/icons/'


def create_table(file = '', path, options, kwargs)
    File.open(file, 'w') {|file| file.truncate(0) }
  p options.size
    kwargs.each do |key, value|
        File.open(file, 'a+') do |f|
            f.puts("<table>")
            f.puts("<thead>")
            f.puts("<tr>")
            f.puts("<th>")
            f.puts("#{key}")
            f.puts("</th>")
            f.puts("</tr>")
            f.puts("</thead>")
            f.puts("<tbody>")
            f.puts("<tr>")
            f.puts("<td>")
            f.puts("<img src=#{path}#{value} alt=#{key} widht=30 height=30>")
            f.puts("</td>")
            f.puts("</tr>")
            f.puts("</tbody>")
            f.puts("</table>")
        end    
    end
end

create_table('./README.md',path, LOGOS.keys, LOGOS)
  