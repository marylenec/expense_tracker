class TemplateFormBuilder < ActionView::Helpers::FormBuilder
  %w[text_field text_area select datalist].each do |method|
  define_method(method) do |name, *args|
    @template.content_tag :div, class: "field form-group" do
      field_label(name, *args) + @template.tag(:br) + super(name, *args)
      end
    end
  end

  def check_box(name, *args)
    @template.content_tag :div, class: "field" do
      super + " " + field_label(name, *args)
    end
  end

  private

  def field_label(name, *args)
    options = args.extract_options!
    label(name, options[:label])
  end
end
