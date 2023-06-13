/* window.vala
 *
 * Copyright 2023 Pedro Miguel
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

namespace Sappling {
    public class Window : Adw.ApplicationWindow {
        private Sappling.Leaflet Leaflet;
        public Window (Gtk.Application app) {
            Object (application: app);
        }
        construct {
            ActionEntry[] action_entries = {
                { "products", this.on_prodduct_action },
            };
            this.add_action_entries (action_entries, this);

	        set_default_size (380, 660);
            build_window();
        }

        private void build_window() {
            var box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);

            Leaflet = new Sappling.Leaflet();

            box.append(Leaflet);

            set_content(box);
        }
        public void on_prodduct_action(){
            this.Leaflet.Leaflet.set_visible_child(this.Leaflet.Products);
        }
    }
}

