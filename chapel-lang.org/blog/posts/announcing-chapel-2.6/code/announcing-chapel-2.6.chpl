use DynamicLoading;

const lib = binary.load('./libMyAdd.so'),
      add = lib.retrieve('myAdd', proc(x: int, y: int): int);

const n = add(2, 2);
writeln(n);

on Locales.last {
  const n = add(here.id, here.id);
  writeln(n);
}
