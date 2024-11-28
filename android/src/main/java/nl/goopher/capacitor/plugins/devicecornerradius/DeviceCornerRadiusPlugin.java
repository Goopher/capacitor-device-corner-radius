package nl.goopher.capacitor.plugins.devicecornerradius;

import android.util.Log;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import java.util.Map;

@CapacitorPlugin(name = "DeviceCornerRadius")
public class DeviceCornerRadiusPlugin extends Plugin {

    private final DeviceCornerRadius implementation = new DeviceCornerRadius();

    @PluginMethod
    public void getCornerRadius(PluginCall call) {
        Map<String, Object> cornerRadius = implementation.getCornerRadius(getActivity());
        JSObject ret = new JSObject();
        ret.put("topLeft", cornerRadius.get("topLeft"));
        ret.put("topRight", cornerRadius.get("topRight"));
        ret.put("bottomLeft", cornerRadius.get("bottomLeft"));
        ret.put("bottomRight", cornerRadius.get("bottomRight"));
        call.resolve(ret);
    }

}
