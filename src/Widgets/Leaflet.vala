namespace Sappling {
    public class Leaflet : Gtk.Box {
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
            Leaflet.append (Home);
            Leaflet.append(Products);

            append(header_bar);
            append(Leaflet);
        }
    }
}
