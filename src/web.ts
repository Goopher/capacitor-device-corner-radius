import { WebPlugin } from '@capacitor/core';

import type { DeviceCornerRadiusPlugin } from './definitions';

export class DeviceCornerRadiusWeb extends WebPlugin implements DeviceCornerRadiusPlugin {
  async getCornerRadius(): Promise<CornerRadius> {
    return {
      topLeft: 0,
      topRight: 0,
      bottomLeft: 0,
      bottomRight: 0
    }
  }
}

export interface CornerRadius {
  topLeft: number;
  topRight: number;
  bottomLeft: number;
  bottomRight: number;
}
