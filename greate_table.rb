require './config.rb'
path = 'https://github.com/AndriiKot/___Icons__and__Links___/blob/main/icons/'


def create_table(file = '', options, kwargs)
    options.each do |key|
        File.open(file, 'a+') do |f|
            f.puts("<table>")
            f.puts("<thead>")
            f.puts("<tr>")
            f.puts("<th>")
            f.puts("#{key}")
            f.puts("<th>")
            f.puts("</tr>")
            f.puts("</thead>")
            f.puts("<tbody>")
            f.puts("<tr>")
            f.puts("<td>")
            f.puts("#{kwargs[key]}")
            f.puts("<td>")
            f.puts("</tr>")
            f.puts("</tbody>")
            f.puts("</table>")
        end    
    end
end

create_table('./README.md', ['css','html'], LOGOS)
  