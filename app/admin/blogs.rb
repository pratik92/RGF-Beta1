ActiveAdmin.register Blog do
  controller.authorize_resource
 #custom form
form :html => { :multipart => true } do |f|
f.inputs "Blogs" do
 f.input :title
 f.input :body, :input_html => { :class => "ckeditor" }
end
 f.buttons
end  
end
