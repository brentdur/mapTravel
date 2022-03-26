node_modules/.bin/topojson -q 1e5 --projection="width = 960, height = 960, d3.geo.mercator().translate([width / 2, height / 2]).scale((width - 1) / 2 / Math.PI)" --countries=build/ne_50m_admin_0_countries.shp

node_modules/.bin/topojson-merge \
				--io countries \
				--oo land \
				-o world.json
