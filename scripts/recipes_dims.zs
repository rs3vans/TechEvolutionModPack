recipes.replaceAllOccurences(<ore:arrow>, <ore:itemSkull>, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "huntingdim";
}));