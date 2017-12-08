namespace SampleFile

open System
open Microsoft.FSharp.Core

type MeasureProduct<'Measure1, 'Measure2>
type MeasureInverse<'Measure>
type MeasureOne

/// <summary>Place on a class that implements ITypeProvider to extend the compiler</summary>
[<AttributeUsageAttribute(AttributeTargets.Class, AllowMultiple = false)>]
type TypeProviderAttribute =
    inherit System.Attribute

    /// <summary>Creates an instance of the attribute</summary>
    /// <returns>TypeProviderAttribute</returns>
    new : unit -> TypeProviderAttribute

/// <summary>Additional type attribute flags related to provided types</summary>
type TypeProviderTypeAttributes =
    | SuppressRelocate = 0x80000000
    | IsErased = 0x40000000

/// <summary>Place attribute on runtime assembly to indicate that there is a corresponding design-time
/// assembly that contains a type provider. Runtime and designer assembly may be the same. </summary>
[<AttributeUsageAttribute(AttributeTargets.Assembly, AllowMultiple = false)>]
type TypeProviderAssemblyAttribute =
    inherit System.Attribute

    /// <summary>Creates an instance of the attribute</summary>
    /// <returns>TypeProviderAssemblyAttribute</returns>
    new : unit -> TypeProviderAssemblyAttribute

    /// <summary>Creates an instance of the attribute</summary>
    /// <returns>TypeProviderAssemblyAttribute</returns>
    /// <param name="assemblyName">The name of the design-time assembly for this type provider.</param>
    new : assemblyName : string -> TypeProviderAssemblyAttribute
    member AssemblyName : string
