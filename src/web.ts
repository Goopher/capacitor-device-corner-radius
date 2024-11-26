import { WebPlugin } from '@capacitor/core';

import type { DeviceCornerRadiusPlugin } from './definitions';

export class DeviceCornerRadiusWeb extends WebPlugin implements DeviceCornerRadiusPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
