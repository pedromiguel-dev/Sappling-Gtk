namespace Sappling {
    public class Home : Gtk.Box {
        construct {
            buildui();
        }

        private void buildui () {
            hexpand = false;
            orientation = Gtk.Orientation.VERTICAL;
            set_spacing (2);
                append(banner());
                append(place_buttons());
        }
        private Gtk.Grid place_buttons() {
            var grid = new Gtk.Grid () {
                orientation = Gtk.Orientation.VERTICAL,
                vexpand=false
            };
            grid.set_row_homogeneous (true);
            grid.attach (CreateHomeButton("document-open-symbolic","teste"), 0, 0, 1, 1);
            grid.attach (CreateHomeButton(), 1, 0, 1, 1);
            grid.attach (CreateHomeButton(), 0, 1, 1, 1);
            grid.attach (CreateHomeButton(), 1, 1, 1, 1);

            return grid;
        }
        private Adw.Clamp banner () {
            var clamp = new Adw.Clamp() {
                hexpand = true,
                vexpand = false,
                maximum_size = 560,
                css_classes = {"banner", "main_green"},
                child = new UiShell.HBox({
                    new Gtk.Button() {
                        child = new Gtk.Image.from_icon_name ("person2") { pixel_size = 40 },
                        css_classes = {"padding_none"},
                    },
                    new UiShell.HBox ({
                        new Gtk.Button() {
                            valign = Gtk.Align.CENTER,
                            css_classes = {"pill"},
                            action_name = "win.products",
                            child =  new Adw.ButtonContent () {
                                halign = Gtk.Align.CENTER,
                                label = "Leave",
                                icon_name = "system-log-out-symbolic",
                            },
                        }
                    }){ hexpand = true, halign = Gtk.Align.END},
                }){hexpand= true, spacing = 10}
            };
            return clamp;
        }

        private Gtk.Box CreateHomeButton (string icon_name = "document-open-symbolic", string label = "Products" ) {
            var box = new Gtk.Box (Gtk.Orientation.VERTICAL, 0) {
                vexpand = true,
                hexpand = true
            };

            var button_products = new Gtk.Button () {
                icon_name = icon_name,
                css_classes = {"button_main", "main_green"}
            };
            var button_label = new Gtk.Label(label) {
                margin_top = 0,
            };

            box.append (button_products);
            box.append (button_label);

            return new UiShell.VBox({
                new Gtk.Button () {
                    icon_name = icon_name,
                    css_classes = {"button_main", "main_green"}
                },
                new Gtk.Label(label) {
                    margin_top = 0,
                }
            });
        }
    }
}

namespace UiShell {


    public class VBox : Gtk.Box {
        public VBox (Gtk.Widget[] wid) {
            vexpand = true;
            hexpand = true;
            orientation = Gtk.Orientation.VERTICAL;
            foreach(Gtk.Widget a in wid){
                this.append (a);
            }
        }
        public void add(Gtk.Widget[] wid) {
            foreach(Gtk.Widget a in wid){
                this.append (a);
            }
        }
    }
    public class HBox : Gtk.Box {
        public HBox (Gtk.Widget[] wid) {
            vexpand = true;
            hexpand = true;
            orientation = Gtk.Orientation.HORIZONTAL;
            foreach(Gtk.Widget a in wid){
                this.append (a);
            }
        }
        public void add(Gtk.Widget[] wid) {
            foreach(Gtk.Widget a in wid){
                this.append (a);
            }
        }
    }
} 
