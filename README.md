# Ruby Bug: Unexpected Behavior When Modifying Object Attributes Through External Variables

This repository demonstrates a subtle bug in Ruby related to how objects and their attributes are handled when accessed and modified through external variables.

## Description

The code shows a simple `MyClass` with a `value` attribute. While directly modifying the object's value using the `value=` method works correctly, assigning a new value to an external variable holding the object's attribute does not affect the object's internal state.

## Bug

The unexpected behavior occurs because Ruby doesn't create a reference link to the object's attribute, but rather a copy of the value. Modifying the external variable changes the copy, leaving the object's internal state unchanged.

## Solution

The solution involves understanding that modifying external variables holding object attributes does not reflect changes within the object.  Directly use the object's methods to modify its attributes.