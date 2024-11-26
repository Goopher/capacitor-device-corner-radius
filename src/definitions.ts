export interface DeviceCornerRadiusPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
