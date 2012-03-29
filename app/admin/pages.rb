ActiveAdmin.register Page do
  controller.authorize_resource
 #custom form
form :html => { :multipart => true } do |f|
f.inputs "Pages" do
 f.input :title
 f.input :body, :input_html => { :class => "ckeditor" }
 f.input :meta
end
 f.buttons
end  
end
