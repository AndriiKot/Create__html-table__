class TableCreator
  PATH_TO_ICONS = 'https://github.com/AndriiKot/___Icons__and__Links___/blob/main/icons/'
  PATH_TO_CONFIG = './config/'
  K = 2 # число пробелов для метода with_indent
  FILE_TO_WRITE = './README.md'

  def initialize(size: 100, file_to_write: nil)
    @stacks = YAML.safe_load_file("#{PATH_TO_CONFIG}/tecnology_stacks.yml")
    @technologyes = YAML.safe_load_file("#{PATH_TO_CONFIG}/technologyes.yml")
    @file_to_write = file_to_write || FILE_TO_WRITE
    @size_td = size
    puts @file_to_write
  end

  def create_or_clear_file
    File.open(@file_to_write, 'w+') 
  end

  def add_tables
    @stacks.each do |stack_name, technologyes|
      create_table(100, technologyes)
    end
  end

  private

  def create_table(height, options)
    height = @size_td 
    File.open(@file_to_write, 'a+') do |f|
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
        logos = @technologyes[technology_name]['svg']
        links = @technologyes[technology_name]['link']

        f.puts with_indent("<td height=#{height} width=#{height}>", 3)
        f.puts with_indent("<a href=#{links}>", 4)
        f.puts with_indent("<img src=#{PATH_TO_ICONS}#{logos} alt=#{technology_name}>", 5)
        f.puts with_indent("</a>", 4)
        f.puts with_indent("</td>", 3)
      end

      f.puts with_indent("</tr>", 2)
      f.puts with_indent("</tbody>", 1)

      f.puts with_indent("</table>")
    end
  end

  def with_indent(tag_part, n=0)
    ' ' * (n * K) + tag_part
  end
end
