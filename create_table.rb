require './config.rb'
path = 'https://github.com/AndriiKot/___Icons__and__Links___/blob/main/icons/'


def create_table(file = '', path, options, kwargs)
    File.open(file, 'w') {|file| file.truncate(0) }

    File.open(file, 'w+') do |f|
        f.puts("<table>")

        kwargs.each do |key, value|
                    f.puts("<thead>")
                    f.puts("<tr>")
                    f.puts("<th height=20>")
                    f.puts("#{key}")
                    f.puts("</th>")
                    f.puts("</tr>")
                    f.puts("</thead>")
                    f.puts("<tbody>")
                    f.puts("<tr>")
                    f.puts("<td width=20 height=40>")
                    f.puts("<img src=#{path}#{value} alt=#{key}>")
                    f.puts("</td>")
                    f.puts("</tr>")
                    f.puts("</tbody>")
        end
        f.puts("</table>")
    end
end

create_table('./README.md',path, LOGOS.keys, LOGOS)
  