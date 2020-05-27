{ stdenv
, mkRosPackage
, robonomics_comm-nightly
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "autonomous_agent_template";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [
    robonomics_comm-nightly
    python3Packages.pyyaml
    python3Packages.pinatapy
    python3Packages.requests
  ];

  meta = with stdenv.lib; {
    description = "Simple modular AIRA example effort";
    homepage = http://github.com/airalab/autonomous_agent_template;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
