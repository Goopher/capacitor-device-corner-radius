import { registerPlugin } from '@capacitor/core';

import type { DeviceCornerRadiusPlugin } from './definitions';

const DeviceCornerRadius = registerPlugin<DeviceCornerRadiusPlugin>('DeviceCornerRadius', {
  web: () => import('./web').then((m) => new m.DeviceCornerRadiusWeb()),
});

export * from './definitions';
export { DeviceCornerRadius };
