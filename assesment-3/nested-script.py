def get_value_from_key(nested_obj, key):
    # Split the key into its parts
    keys = key.split('/')

    # Iterate over the keys and get the corresponding value in the nested object
    value = nested_obj
    for k in keys:
        if k in value:
            value = value[k]
        else:
            return None

    # Return the final value
    return value


object = {'a': {'b': {'c': 'd'}}}
key = 'a/b/c'
value = get_value_from_key(object, key)
print(value)  # Output: d

object = {'x': {'y': {'z': 'a'}}}
key = 'x/y/z'
value = get_value_from_key(object, key)
print(value)  # Output: a
