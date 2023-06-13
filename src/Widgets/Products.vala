namespace Sappling {
    public class Products : Gtk.Box {
        public Products (){
        }
        construct {
            hexpand = true;
            vexpand = true;
            set_orientation (Gtk.Orientation.VERTICAL);
            set_spacing (0);
            buildui();
        }

        private void buildui () {
             var page = new Adw.StatusPage() {
                hexpand = true,
                vexpand = true,
                title = "Products page",
            };
            var clamp = new Adw.Clamp() {
                hexpand = true,
                vexpand = true,
                maximum_size = 560,
                css_classes = {"banner", "main_green"}
            };
            clamp.set_child (page);

            append(clamp);
        }
    }
}
        
