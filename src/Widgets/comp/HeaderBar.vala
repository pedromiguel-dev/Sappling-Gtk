namespace Sappling {
    public class HeaderBar : Gtk.Box {

        public string title;

        public HeaderBar (string title){
            this.title = title;
            buildui();
        }
        construct {
            hexpand = true;
        }
        private void buildui () {
            var header_bar = new Adw.HeaderBar() {
                hexpand = true,
                css_classes = {"flat", "main_green"},
                title_widget = new Gtk.Label(this.title)
            };
            append(header_bar);
        }

    }
}
