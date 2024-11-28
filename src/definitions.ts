import { CornerRadius } from "./web";

export interface DeviceCornerRadiusPlugin {
  getCornerRadius(): Promise<CornerRadius>;
}
