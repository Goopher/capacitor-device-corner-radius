# capacitor-device-corner-radius

This plugin gets the corner radius of the current device

## Install

```bash
npm install @goopher/capacitor-device-corner-radius
npx cap sync
```

## API

<docgen-index>

* [`getCornerRadius()`](#getcornerradius)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### getCornerRadius()

```typescript
getCornerRadius() => Promise<CornerRadius>
```

**Returns:** <code>Promise&lt;<a href="#cornerradius">CornerRadius</a>&gt;</code>

--------------------


### Interfaces


#### CornerRadius

| Prop              | Type                |
| ----------------- | ------------------- |
| **`topLeft`**     | <code>number</code> |
| **`topRight`**    | <code>number</code> |
| **`bottomLeft`**  | <code>number</code> |
| **`bottomRight`** | <code>number</code> |

</docgen-api>
