package nl.goopher.capacitor.plugins.devicecornerradius;

import android.os.Build;
import android.view.RoundedCorner;
import android.view.WindowInsets;

import androidx.appcompat.app.AppCompatActivity;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public class DeviceCornerRadius {

    public Map<String, Object> getCornerRadius(AppCompatActivity activity) {
        Map<String, Object> result = new HashMap<>();
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.S) {
            result.put("topLeft", 0.0);
            result.put("topRight", 0.0);
            result.put("bottomLeft", 0.0);
            result.put("bottomRight", 0.0);
            return result;
        }

        double density = activity.getResources().getDisplayMetrics().density;

        if (density == 0.0) {
            result.put("topLeft", 0.0);
            result.put("topRight", 0.0);
            result.put("bottomLeft", 0.0);
            result.put("bottomRight", 0.0);
            return result;
        }

        WindowInsets insets = activity.getWindow().getDecorView().getRootView().getRootWindowInsets();
        double topLeft = Objects.requireNonNullElse(insets.getRoundedCorner(RoundedCorner.POSITION_TOP_LEFT),
                new RoundedCorner(RoundedCorner.POSITION_TOP_LEFT, 0, 0, 0)).getRadius();
        double topRight = Objects.requireNonNullElse(insets.getRoundedCorner(RoundedCorner.POSITION_TOP_RIGHT),
                new RoundedCorner(RoundedCorner.POSITION_TOP_RIGHT, 0, 0, 0)).getRadius();
        double bottomLeft = Objects.requireNonNullElse(insets.getRoundedCorner(RoundedCorner.POSITION_BOTTOM_LEFT),
                new RoundedCorner(RoundedCorner.POSITION_BOTTOM_LEFT, 0, 0, 0)).getRadius();
        double bottomRight = Objects.requireNonNullElse(insets.getRoundedCorner(RoundedCorner.POSITION_BOTTOM_RIGHT),
                new RoundedCorner(RoundedCorner.POSITION_BOTTOM_RIGHT, 0, 0, 0)).getRadius();

        result.put("topLeft", topLeft / density);
        result.put("topRight", topRight / density);
        result.put("bottomLeft", bottomLeft / density);
        result.put("bottomRight", bottomRight / density);

        return result;
    }
}
