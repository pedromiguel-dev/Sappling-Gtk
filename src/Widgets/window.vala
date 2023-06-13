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
    // [GtkTemplate (ui = "/com/github/pedromiguel_dev/Sappling/window.ui")]
    public class Window : Adw.ApplicationWindow {
        // [GtkChild]
        // private unowned Gtk.Label label;

        public Window (Gtk.Application app) {
            Object (application: app);
        }
        construct {
            title = "Duel";
	        set_default_size (380, 660);
            build_window();
        }

        private void build_window() {
            var header_bar = new Adw.HeaderBar() {
                css_classes = {"flat", "main_green"}
            };
            var box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
            var home_page = new Sappling.Home();

            box.append(header_bar);
            box.append(home_page);

            set_content(box);
        }
    }
}
