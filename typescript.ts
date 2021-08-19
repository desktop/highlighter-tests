/**
 * TypeScript
 */

// Single line comment
function test(arg1: string, arg2: number): void {
  const string = "foo";
  const number = 123;

  console.log(typeof(undefined))
}

interface IColor {

}

// Other color classes look like this
export class Red {
  public readonly id: number;
  private readonly store: ColorStore;
  private description: string;

  constructor(id: number, store: ColorStore, description: string) {
    this.store = store;
    this.description = description;
  }
}

export type AnyColor = Red | Blue | Yellow | Green | Purple | Orange;

export class ColorStore  {
  private _colors: AnyColor[];

  private createColor<T extends AnyColor>(type: (new (store: ColorStore, id: number, description: string) => T), id: number, description: string): T {
    const item = new type(this, id, description);
    this.addItem(item);
    return item;
  }

  public addItem<T extends AnyColor>(v: T): void {
    if (this._colors.find((x) => x.id === v.id))
      throw new Error(`The color with id ${v.id} already exists`);
    this._colors.push(v);
  }

  public getItem<T extends AnyColor>(id: number): T | undefined {
    return this._colors.find((x) => x.id === id);
  }

  public deleteItem<T extends AnyColor>(id: number): void {
    const index = this._colors.findIndex((x) => x.id === id);
    if (index < 0) return;
    this._colors.splice(index, 1);
  }
}

export class Person {
  #SSN: number;
  name: string;
  age: number;
  emergencyContact: Person;
}
