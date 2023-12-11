shader_type canvas_item;
uniform int range = 4;

void fragment() {
	if(range > 0) {
		vec2 size = vec2(textureSize(TEXTURE, 0));
		if(UV.x > 0.0 && UV.x < size.x - 1.0 && UV.y > 0.0 && UV.y < size.y - 1.0) {
			vec4 sum = vec4(0, 0, 0, 0);
			for(int x = -range; x <= range; x++) {
				for(int y = -range; y <= range; y++) {
					vec2 pixel_off = vec2(float(x), float(y));
					vec4 tex = texture(TEXTURE, UV + pixel_off * TEXTURE_PIXEL_SIZE);
					sum += tex.rgba;
				}
			}
			float div = float((range * 2 + 1) * (range * 2 + 1) - 1);
			COLOR = sum / vec4(div, div, div, div);
		}
	}
}
