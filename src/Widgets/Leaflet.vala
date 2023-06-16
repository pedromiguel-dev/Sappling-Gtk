namespace Sappling {
    public class Leaflet : Gtk.Box {
        private Gtk.Button back_button;
        public Adw.Leaflet Leaflet;
        public Gtk.Box Home;
        public Gtk.Box Products;

        public Leaflet (){
        }
        construct {
            this.set_orientation (Gtk.Orientation.VERTICAL);
            Leaflet = new Adw.Leaflet () {
                can_unfold = true,
                homogeneous = true,
                can_navigate_back = true,
                fold_threshold_policy = Adw.FoldThresholdPolicy.NATURAL
            };
            Home = new Sappling.Home();
            Products = new Sappling.Products ();
            buildui();
        }

        private void buildui () {
            var header_bar  = new Adw.HeaderBar() {
                hexpand = true,
                css_classes = {"flat", "main_green"},
                title_widget = new Gtk.Label("Sappling"),
            };

            this.back_button = new Gtk.Button () {
                    icon_name = "document-revert-symbolic",
                    visible = false,
            };
            this.back_button.clicked.connect (go_home);

            header_bar.pack_start (this.back_button);

            Leaflet.append (Home);
            Leaflet.append(Products);

            append(header_bar);
            append(Leaflet);
        }

        public void set_visible_child (Gtk.Widget widget){
            if(this.Leaflet.get_folded ()){
                this.back_button.set_visible (true);
            }
            this.Leaflet.set_visible_child (widget);
        }

        private void go_home () {
            if(this.Leaflet.get_folded ()){
                this.back_button.set_visible (false);
            };
            this.Leaflet.set_visible_child (this.Home);
        }
    }
}
