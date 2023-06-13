namespace Sappling {
    public class Home : Gtk.Box {
        public Home (){

        }
        construct {
            hexpand = true;
            buildui();
        }

        private Adw.Clamp banner () {
            var clamp = new Adw.Clamp() {
                hexpand = true,
                maximum_size = 560,
                css_classes = {"banner", "main_green"}
            };
            var box = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 10){
                hexpand = true,
            };
            //button box--------
            var button_leave_box = new Gtk.Box(Gtk.Orientation.HORIZONTAL, 0){
                hexpand = true,
                halign = Gtk.Align.END
            };
            var button_leave = new Gtk.Button() {
                valign = Gtk.Align.CENTER,
                css_classes = {"pill"},
                child =  new Adw.ButtonContent () {
                    halign = Gtk.Align.CENTER,
                    label = "Leave",
                    icon_name = "system-log-out-symbolic",
                },
            };
            button_leave_box.append (button_leave);
            //button box ------

            var user = new Gtk.Image.from_icon_name ("person2") {
                pixel_size = 40
            };

            var user_button = new Gtk.Button() {
                child = user,
                css_classes = {"padding_none"},
            };

            //user image?
            box.append (user_button);
            box.append (button_leave_box);

            clamp.set_child (box);
            return clamp;
        }
        private void buildui () {
            append(banner());
        }
    }
}
