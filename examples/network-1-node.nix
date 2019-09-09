let
  common = import ./common.nix;
in input: {
  "node-1" = { config, input, ... }: {
    require = [ (common.http-server ''
      hej hej I'm node-1
      ${common.info input}
    '') ];
  };
}
