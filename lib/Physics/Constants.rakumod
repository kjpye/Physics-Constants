unit module Physics::Constants;

use Physics::Unit;
use Physics::Measure;

# define some more units
# BEGIN Unit.new(defn => '1000000 hertz', names => ['MHz']);
# defer 'c' until we know how fast light travels

# The fundamental constants which define the SI system

constant $avogadro-constant := Measure.new(
  value => 6.02214076e+23, 
  error => 0, 
  units => 'mol⁻¹',
);

constant \avogadro-constant is export(:DEFAULT, :fundamental, :avogadro-constant) := $avogadro-constant;
constant \kg-amu is export(:DEFAULT, :fundamental, :kg-amu) := $avogadro-constant; # FIX
constant \L      is export(:DEFAULT, :fundamental, :L)      := $avogadro-constant;
constant \Na     is export(:DEFAULT, :fundamental, :Na)     := $avogadro-constant;
constant \Nₐ     is export(:DEFAULT, :fundamental, :Nₐ)     := $avogadro-constant;

constant $boltzmann-constant := Measure.new(
  value => 1.380649e-23, 
  error => 0, 
  units => 'J⋅K⁻¹'
);
constant \boltzmann-constant is export(:DEFAULT :fundamental :boltzmann-constant) := $boltzmann-constant;

constant $elementary-charge := Measure.new(
  value => 1.602176634e-19, 
  error => 0, 
  units => 'C',
);
constant \elementary-charge is export(:DEFAULT :fundamental :elementary-charge) := $elementary-charge;
constant \q  is export(:DEFAULT :fundamental :q) := $elementary-charge;

constant $planck-constant := Measure.new(
  value => 6.62607015e-34, 
  error => 0, 
  units => 'J⋅Hz⁻¹',
);
constant \planck-constant is export(:fundamental :planck-constant) := $planck-constant;
constant \plancks-h is export(:DEFAULT :fundamental :plancks-h)    := $planck-constant;
constant \ℎ         is export(:DEFAULT :fundamental :ℎ)            := $planck-constant;

dd $planck-constant;
dd ℎ;

constant $speed-of-light-vacuum := Measure.new(
  value => 299792458, 
  error => 0, 
  units => 'm⋅s⁻¹',
);
constant \speed-of-light-vacuum is export(:DEFAULT :fundamental :speed-of-light-vacuum) := $speed-of-light-vacuum;
constant \c  is export(:DEFAULT :fundamental :c) := $speed-of-light-vacuum;

dd $speed-of-light-vacuum;
dd c;

# BEGIN Unit.new(defn => "{+speed-of-light-vacuum} \ m/s", names => ['c']);

my $hyperfine-transition-frequency-of-Cs_133 := Measure.new(
  value => 9.192631770e9, 
  error => 0, 
  units => 'Hz'
);
constant \hyperfine-transition-frequency-of-Cs_133 is export(:DEFAULT :fundamental :hyperfine-transition-frequency-of-Cs_133) := $hyperfine-transition-frequency-of-Cs_133;

my $luminous-efficacy := Measure.new(
  value => 683,
  error => 0,
  units => 'lm⋅W⁻¹'
);
constant \luminous-efficacy is export(:DEFAULT :fundamental :luminous-efficacy) := $luminous-efficacy;


# Some other defined values

my $standard-acceleration-gravity := Measure.new(
  value => 9.80665,
  error => 0,
  units => 'm⋅s⁻²',
);
constant \standard-acceleration-gravity is export(:DEFAULT :standard-acceleration-gravity) := $standard-acceleration-gravity;
constant \g is export(:DEFAULT :g)                                                         := $standard-acceleration-gravity;

my $wien-frequency-displacement-law-constant := Measure.new(
  value => 58789257570,
  error => 0,
  units => 'Hz⋅K⁻¹'
);
constant \wien-frequency-displacement-law-constant is export(:wien-frequency-displacement-law-constant) := $wien-frequency-displacement-law-constant;

my $wien-wavelength-displacement-law-constant := Measure.new(
  value => 0.002897771955,
  error => 0,
  units => 'm⋅K'
);
constant \wien-wavelength-displacement-law-constant is export(:wien-wavelength-displacement-law-constant) := $wien-wavelength-displacement-law-constant;

constant $standard-atmosphere := Measure.new(
  value => 101325,
  error => 0,
  units => 'Pa'
);
constant \standard-atmosphere is export(:standard-atmosphere) := $standard-atmosphere;

constant $standard-state-pressure := Measure.new(
  value => 100000,
  error => 0,
  units => 'Pa'
);
constant \standard-state-pressure is export(:standard-state-pressure) := $standard-state-pressure;

# Values derived from the fundamental constants
#   These also have no error, but not all can be expressed
#   exactly as floating point numbers.

constant $reduced-planck-constant := Measure.new(
  value => ℎ ÷ (2 × π),
  error => 0,
  units => 'J⋅s',
);
constant \reduced-planck-constant is export(:reduced-planck-constant)      := $reduced-planck-constant;
constant \plancks-reduced-h       is export(:DEFAULT :plancks-reduced-h)   := $reduced-planck-constant;
constant \ℏ                       is export(:DEFAULT :ℏ)                  := $reduced-planck-constant;

my $atomic-unit-of-action := Measure.new(
  value => +ℏ,
  error => 0,
  units => 'J⋅s'
);
constant \atomic-unit-of-action is export(:atomic-unit-of-action) := $atomic-unit-of-action;

my $atomic-unit-of-charge := Measure.new(
  value => +q,
  error => 0,
  units => 'C'
);
constant \atomic-unit-of-charge is export(:atomic-unit-of-charge) := $atomic-unit-of-charge;

constant $electron-volt := Measure.new(
  value => +q,
  error => 0,
  units => 'J',
);
constant \electron-volt is export(:DEFAULT :electron-volt) := $electron-volt;
constant \eV            is export(:DEFAULT :eV)            := $electron-volt;

my $boltzmann-constant-in-eV-K := Measure.new(
  value => boltzmann-constant ÷ eV,
  error => 0,
  units => 'eV⋅K⁻¹'
);
constant \boltzmann-constant-in-eV-K is export(:boltzmann-constant-in-eV-K) := $boltzmann-constant-in-eV-K;

my $boltzmann-constant-in-Hz-K := Measure.new(
  value => boltzmann-constant ÷ ℎ,
  error => 0,
  units => 'Hz⋅K⁻¹'
);
constant \boltzmann-constant-in-Hz-K is export(:boltzmann-constant-in-Hz-K) := $boltzmann-constant-in-Hz-K;

my $boltzmann-constant-in-inverse-meter-per-kelvin := Measure.new(
  value => boltzmann-constant ÷ (ℎ × c),
  error => 0,
  units => 'm⁻¹⋅K⁻¹'
);
constant \boltzmann-constant-in-inverse-meter-per-kelvin is export(:boltzmann-constant-in-inverse-meter-per-kelvin) := $boltzmann-constant-in-inverse-meter-per-kelvin;

my $conductance-quantum := Measure.new(
  value => 2 × q² ÷ ℎ,
  error => 0,
  units => 'S'
);
constant \conductance-quantum is export(:conductance-quantum) := $conductance-quantum;

my $josephson-constant := Measure.new(
  value => 2 × q ÷ ℎ,
  error => 0,
  units => 'Hz⋅V⁻¹',
);
constant \josephson-constant is export(:josephson-constant) := $josephson-constant;
constant \Kj                 is export(:Kj)                 := $josephson-constant;

my $conventional-value-of-josephson-constant := Measure.new(
  value => 4.835979e14,
  error => 0,
  units => 'Hz⋅V⁻¹',
);
constant \conventional-value-of-josephson-constant is export(:conventional-value-of-josephson-constant) := $conventional-value-of-josephson-constant;
constant \Kj90                                     is export(:Kj90)                                     := $conventional-value-of-josephson-constant;

my $von-klitzing-constant := Measure.new(
  value => ℎ ÷ q²,
  error => 0,
  units => 'Ω',
);
constant \von-klitzing-constant is export(:von-klitzing-constant) := $von-klitzing-constant;
constant \RK                    is export(:RK)                    := $von-klitzing-constant;

my $conventional-value-of-von-klitzing-constant := Measure.new(
  value => 25812.807,
  error => 0,
  units => 'Ω',
);
constant \conventional-value-of-von-klitzing-constant is export(:conventional-value-of-von-klitzing-constant) := $conventional-value-of-von-klitzing-constant;
constant \RK90                                        is export(:RK90)                                        := $conventional-value-of-von-klitzing-constant;

my $conventional-value-of-ampere_90 := Measure.new(
  value => (Kj90÷Kj) × (RK90÷RK),
  error => 0,
  units => 'A'
);
constant \conventional-value-of-ampere_90 is export(:conventional-value-of-ampere_90) := $conventional-value-of-ampere_90;

my $conventional-value-of-coulomb_90 := Measure.new(
  value => (Kj90÷Kj) × (RK90÷RK),
  error => 0,
  units => 'C'
);
constant \conventional-value-of-coulomb_90 is export(:conventional-value-of-coulomb_90) := $conventional-value-of-coulomb_90;

my $conventional-value-of-farad_90 := Measure.new(
  value => RK90 ÷ RK,
  error => 0,
  units => 'F'
);
constant \conventional-value-of-farad_90 is export(:conventional-value-of-farad_90) := $conventional-value-of-farad_90;

my $conventional-value-of-henry_90 := Measure.new(
  value => RK ÷ RK90,
  error => 0,
  units => 'H'
);
constant \conventional-value-of-henry_90 is export(:conventional-value-of-henry_90) := $conventional-value-of-henry_90;

my $conventional-value-of-ohm_90 := Measure.new(
  value => RK ÷ RK90,
  error => 0,
  units => 'Ω'
);
constant \conventional-value-of-ohm_90 is export(:conventional-value-of-ohm_90) := $conventional-value-of-ohm_90;

my $conventional-value-of-volt_90 := Measure.new(
  value => Kj90 ÷ Kj,
  error => 0,
  units => 'V'
);
constant \conventional-value-of-volt_90 is export(:conventional-value-of-volt_90) := $conventional-value-of-volt_90;

my $conventional-value-of-watt_90 := Measure.new(
  value => (Kj90²÷Kj²) × (RK90÷RK),
  error => 0,
  units => 'W'
);
constant \conventional-value-of-watt_90 is export(:conventional-value-of-watt_90) := $conventional-value-of-watt_90;

my $electron-volt-hertz-relationship := Measure.new(
  value => eV ÷ ℎ,
  error => 0,
  units => 'Hz'
);
constant \electron-volt-hertz-relationship is export(:electron-volt-hertz-relationship) := $electron-volt-hertz-relationship;
constant \quantum-ratio                    is export(:DEFAULT :quantum-ratio)           := $electron-volt-hertz-relationship;

my $electron-volt-inverse-meter-relationship := Measure.new(
  value => eV ÷ (ℎ×c),
  error => 0,
  units => 'm⁻¹'
);
constant \electron-volt-inverse-meter-relationship is export(:electron-volt-inverse-meter-relationship) := $electron-volt-inverse-meter-relationship;

my $electron-volt-joule-relationship := Measure.new(
  value => +q,
  error => 0,
  units => 'J'
);
constant \electron-volt-joule-relationship is export(:electron-volt-joule-relationship) := $electron-volt-joule-relationship;

my $electron-volt-kelvin-relationship := Measure.new(
  value => eV ÷ boltzmann-constant,
  error => 0,
  units => 'K'
);
constant \electron-volt-kelvin-relationship is export(:electron-volt-kelvin-relationship) := $electron-volt-kelvin-relationship;

my $electron-volt-kilogram-relationship := Measure.new(
  value => eV ÷ c²,
  error => 0,
  units => 'kg'
);
constant \electron-volt-kilogram-relationship is export(:electron-volt-kilogram-relationship) := $electron-volt-kilogram-relationship;

my $elementary-charge-over-h-bar := Measure.new(
  value => q ÷ ℏ,
  error => 0,
  units => 'A⋅J⁻¹'
);
constant \elementary-charge-over-h-bar is export(:elementary-charge-over-h-bar) := $elementary-charge-over-h-bar;

my $faraday-constant := Measure.new(
  value => q × Na,
  error => 0,
  units => 'C⋅mol⁻¹',
);
constant \faraday-constant is export(:DEFAULT :faraday-constant) := $faraday-constant;
constant \F                is export(:DEFAULT :F)                := $faraday-constant;

my $first-radiation-constant := Measure.new(
  value => 2 × π × ℎ × c²,
  error => 0,
  units => 'W⋅m²'
);
constant \first-radiation-constant is export(:first-radiation-constant) := $first-radiation-constant;

my $first-radiation-constant-for-spectral-radiance := Measure.new(
  value => 2 × ℎ × c²,
  error => 0,
  units => 'W⋅m²⋅sr⁻¹'
);
constant \first-radiation-constant-for-spectral-radiance is export(:first-radiation-constant-for-spectral-radiance) := $first-radiation-constant-for-spectral-radiance;

my $hertz-electron-volt-relationship := Measure.new(
  value => ℎ ÷ eV,
  error => 0,
  units => 'eV'
);
constant \hertz-electron-volt-relationship is export(:hertz-electron-volt-relationship) := $hertz-electron-volt-relationship;

my $hertz-inverse-meter-relationship := Measure.new(
  value => 1 ÷ c,
  error => 0,
  units => 'm⁻¹'
);
constant \hertz-inverse-meter-relationship is export(:hertz-inverse-meter-relationship) := $hertz-inverse-meter-relationship;

my $hertz-joule-relationship := Measure.new(
  value => +ℎ,
  error => 0,
  units => 'J'
);
constant \hertz-joule-relationship is export(:hertz-joule-relationship) := $hertz-joule-relationship;

my $hertz-kelvin-relationship := Measure.new(
  value => ℎ ÷ boltzmann-constant,
  error => 0,
  units => 'K'
);
constant \hertz-kelvin-relationship is export(:hertz-kelvin-relationship) := $hertz-kelvin-relationship;

my $hertz-kilogram-relationship := Measure.new(
  value => ℎ ÷ c²,
  #value => 1 ÷ c × 1e9,
  error => 0,
  units => 'kg'
);
constant \hertz-kilogram-relationship is export(:hertz-kilogram-relationship) := $hertz-kilogram-relationship;

my $inverse-meter-electron-volt-relationship := Measure.new(
  value => ℎ × c ÷ eV,
  error => 0,
  units => 'eV'
);
constant \inverse-meter-electron-volt-relationship is export(:inverse-meter-electron-volt-relationship) := $inverse-meter-electron-volt-relationship;

my $inverse-meter-hertz-relationship := Measure.new(
  value => +c,
  error => 0,
  units => 'Hz'
);
constant \inverse-meter-hertz-relationship is export(:inverse-meter-hertz-relationship) := $inverse-meter-hertz-relationship;

my $inverse-meter-joule-relationship := Measure.new(
  value => ℎ × c,
  error => 0,
  units => 'J'
);
constant \inverse-meter-joule-relationship is export(:inverse-meter-joule-relationship) := $inverse-meter-joule-relationship;

my $inverse-meter-kelvin-relationship := Measure.new(
  value => ℎ × c ÷ boltzmann-constant,
  error => 0,
  units => 'K'
);
constant \inverse-meter-kelvin-relationship is export(:inverse-meter-kelvin-relationship) := $inverse-meter-kelvin-relationship;

my $inverse-meter-kilogram-relationship := Measure.new(
  value => ℎ÷c,
  error => 0,
  units => 'kg'
);
constant \inverse-meter-kilogram-relationship is export(:inverse-meter-kilogram-relationship) := $inverse-meter-kilogram-relationship;

my $inverse-of-conductance-quantum := Measure.new(
  value => ℎ ÷ (2 × q²),
  error => 0,
  units => 'Ω'
);
constant \inverse-of-conductance-quantum is export(:inverse-of-conductance-quantum) := $inverse-of-conductance-quantum;

my $joule-electron-volt-relationship := Measure.new(
  value => 1 ÷ q,
  error => 0,
  units => 'eV'
);
constant \joule-electron-volt-relationship is export(:joule-electron-volt-relationship) := $joule-electron-volt-relationship;

my $joule-hertz-relationship := Measure.new(
  value => 1 ÷ ℎ,
  error => 0,
  units => 'Hz'
);
constant \joule-hertz-relationship is export(:joule-hertz-relationship) := $joule-hertz-relationship;

my $joule-inverse-meter-relationship := Measure.new(
  value => 1 ÷ (ℎ × c),
  error => 0,
  units => 'm⁻¹'
);
constant \joule-inverse-meter-relationship is export(:joule-inverse-meter-relationship) := $joule-inverse-meter-relationship;

my $joule-kelvin-relationship := Measure.new(
  value => 1 ÷ boltzmann-constant,
  error => 0,
  units => 'K'
);
constant \joule-kelvin-relationship is export(:joule-kelvin-relationship) := $joule-kelvin-relationship;

my $joule-kilogram-relationship := Measure.new(
  value => 1 ÷ c²,
  error => 0,
  units => 'kg'
);
constant \joule-kilogram-relationship is export(:joule-kilogram-relationship) := $joule-kilogram-relationship;

my $kelvin-electron-volt-relationship := Measure.new(
  value => boltzmann-constant ÷ eV,
  error => 0,
  units => 'eV'
);
constant \kelvin-electron-volt-relationship is export(:kelvin-electron-volt-relationship) := $kelvin-electron-volt-relationship;

my $kelvin-hertz-relationship := Measure.new(
  value => boltzmann-constant ÷ ℎ,
  error => 0,
  units => 'Hz'
);
constant \kelvin-hertz-relationship is export(:kelvin-hertz-relationship) := $kelvin-hertz-relationship;

my $kelvin-inverse-meter-relationship := Measure.new(
  value => boltzmann-constant ÷ (c × ℎ),
  error => 0,
  units => 'm⁻¹'
);
constant \kelvin-inverse-meter-relationship is export(:kelvin-inverse-meter-relationship) := $kelvin-inverse-meter-relationship;

my $kelvin-joule-relationship := Measure.new(
  value => +boltzmann-constant,
  error => 0,
  units => 'J'
);
constant \kelvin-joule-relationship is export(:kelvin-joule-relationship) := $kelvin-joule-relationship;

my $kelvin-kilogram-relationship := Measure.new(
  value => boltzmann-constant ÷ c²,
  error => 0,
  units => 'kg'
);
constant \kelvin-kilogram-relationship is export(:kelvin-kilogram-relationship) := $kelvin-kilogram-relationship;

my $kilogram-electron-volt-relationship := Measure.new(
  value => c² ÷ q,
  error => 0,
  units => 'eV'
);
constant \kilogram-electron-volt-relationship is export(:kilogram-electron-volt-relationship) := $kilogram-electron-volt-relationship;

my $kilogram-hertz-relationship := Measure.new(
  value => c² ÷ ℎ,
  error => 0,
  units => 'Hz'
);
constant \kilogram-hertz-relationship is export(:kilogram-hertz-relationship) := $kilogram-hertz-relationship;

my $kilogram-inverse-meter-relationship := Measure.new(
  value => c ÷ ℎ,
  error => 0,
  units => 'm⁻¹'
);
constant \kilogram-inverse-meter-relationship is export(:kilogram-inverse-meter-relationship) := $kilogram-inverse-meter-relationship;

my $kilogram-joule-relationship := Measure.new(
  value => c × c,
  error => 0,
  units => 'J'
);
constant \kilogram-joule-relationship is export(:kilogram-joule-relationship) := $kilogram-joule-relationship;
constant \coulomb-constant            is export(:DEFAULT :coulomb-constant)   := $kilogram-joule-relationship;
constant \K0                          is export(:DEFAULT :K0)                 := $kilogram-joule-relationship;

my $kilogram-kelvin-relationship := Measure.new(
  value => c² ÷ boltzmann-constant,
  error => 0,
  units => 'K'
);
constant \kilogram-kelvin-relationship is export(:kilogram-kelvin-relationship) := $kilogram-kelvin-relationship;

my $loschmidt-constant-stp := Measure.new(
  value => standard-state-pressure ÷ boltzmann-constant ÷ 273.15,
  error => 0,
  units => 'm⁻³'
);
constant \loschmidt-constant-stp is export(:loschmidt-constant-stp) := $loschmidt-constant-stp;

my $loschmidt-constant-ntp := Measure.new(
  value => standard-atmosphere ÷ boltzmann-constant ÷ 273.15,
  error => 0,
  units => 'm⁻³'
);
constant \loschmidt-constant-ntp is export(:loschmidt-constant-ntp) := $loschmidt-constant-ntp;

my $mag-flux-quantum := Measure.new(
  value => ℎ ÷ 2 ÷ q,
  error => 0,
  units => 'Wb'
);
constant \mag-flux-quantum is export(:mag-flux-quantum) := $mag-flux-quantum;

my $molar-gas-constant := Measure.new(
  value => Na × boltzmann-constant,
  error => 0,
  units => 'J⋅mol⁻¹⋅K⁻¹'
);
constant \molar-gas-constant is export(:molar-gas-constant) := $molar-gas-constant;
constant \gas-constant is export(:DEFAULT :gas-constant) := $molar-gas-constant;

my $molar-planck-constant := Measure.new(
  value => Na × ℎ,
  error => 0,
  units => 'J⋅Hz⁻¹⋅mol⁻¹'
);
constant \molar-planck-constant is export(:molar-planck-constant) := $molar-planck-constant;

my $molar-volume-of-ideal-gas-stp := Measure.new(
  value => Na × boltzmann-constant × 273.15 ÷ standard-state-pressure,
  error => 0,
  units => 'm³⋅mol⁻¹'
);
constant \molar-volume-of-ideal-gas-stp is export(:molar-volume-of-ideal-gas-stp) := $molar-volume-of-ideal-gas-stp;

my $molar-volume-of-ideal-gas-ntp := Measure.new(
  value => Na × boltzmann-constant × 273.15 ÷ standard-atmosphere,
  error => 0,
  units => 'm³⋅mol⁻¹'
);
constant \molar-volume-of-ideal-gas-ntp is export(:molar-volume-of-ideal-gas-ntp) := $molar-volume-of-ideal-gas-ntp;

my $natural-unit-of-action := Measure.new(
  value => +ℏ,
  error => 0,
  units => 'J⋅s'
);
constant \natural-unit-of-action is export(:natural-unit-of-action) := $natural-unit-of-action;

my $natural-unit-of-action-in-eV-s := Measure.new(
  value => ℏ ÷ q,
  error => 0,
  units => 'eV⋅s'
);
constant \natural-unit-of-action-in-eV-s is export(:natural-unit-of-action-in-eV-s) := $natural-unit-of-action-in-eV-s;

my $natural-unit-of-velocity := Measure.new(
  value => +c,
  error => 0,
  units => 'm⋅s⁻¹'
);
constant \natural-unit-of-velocity is export(:natural-unit-of-velocity) := $natural-unit-of-velocity;

my $planck-constant-in-eV-Hz := Measure.new(
  value => ℎ ÷ q,
  error => 0,
  units => 'eV⋅Hz⁻¹'
);
constant \planck-constant-in-eV-Hz is export(:planck-constant-in-eV-Hz) := $planck-constant-in-eV-Hz;

my $reduced-planck-constant-in-eV-s := Measure.new(
  value => ℏ ÷ q,
  error => 0,
  units => 'eV⋅s'
);
constant \reduced-planck-constant-in-eV-s is export(:reduced-planck-constant-in-eV-s) := $reduced-planck-constant-in-eV-s;

my $reduced-planck-constant-times-c-in-MeV-fm := Measure.new(
  value => ℏ × c ÷ q × 1000000000,
  error => 0,
  units => 'MeV⋅fm'
);
constant \reduced-planck-constant-times-c-in-MeV-fm is export(:reduced-planck-constant-times-c-in-MeV-fm) := $reduced-planck-constant-times-c-in-MeV-fm;

my $second-radiation-constant := Measure.new(
  value => ℎ × c ÷ boltzmann-constant,
  error => 0,
  units => 'm⋅K'
);
constant \second-radiation-constant is export(:radiation-constant) := $second-radiation-constant;

dd ℎ;
dd c;

my $stefan-boltzmann-constant := Measure.new(
  value => 2 × π⁵ × $boltzmann-constant⁴ ÷ (15 × ℎ³ × c²),
  error => 0,
  units => 'W⋅m⁻²⋅K⁻⁴'
);
constant \stefan-boltzmann-constant is export(:stefan-boltzmann-constant) := $stefan-boltzmann-constant;

# Other constants based on measurements

my $alpha-particle-electron-mass-ratio := Measure.new(
  value => 7294.29954142, 
  error => 0.00000024, 
  units => '①'
);
constant \alpha-particle-electron-mass-ratio is export(:alpha-particle-electron-mass-ratio) := $alpha-particle-electron-mass-ratio;


my $alpha-particle-mass := Measure.new(
  value => 6.6446573357e-27,
  error => 0.0000000020e-27,
  units => 'kg'
);
constant \alpha-particle-mass is export(:DEFAULT :alpha-particle-mass) := $alpha-particle-mass;

my $alpha-particle-mass-energy-equivalent := Measure.new(
  value => 5.9719201914e-10,
  error => 0.0000000018e-10,
  units => 'J'
);
constant \alpha-particle-mass-energy-equivalent is export(:malpha-particle-mass-energy-equivalenteasured) := $alpha-particle-mass-energy-equivalent;

my $alpha-particle-mass-energy-equivalent-in-MeV := Measure.new(
  value => 3727.3794066,
  error => 0.0000011,
  units => 'MeV'
);
constant \alpha-particle-mass-energy-equivalent-in-MeV is export(:alpha-particle-mass-energy-equivalent-in-MeV) := $alpha-particle-mass-energy-equivalent-in-MeV;

my $alpha-particle-mass-in-u := Measure.new(
  value => 4.001506179127,
  error => 0.000000000063,
  units => 'u'
);
constant \alpha-particle-mass-in-u is export(:alpha-particle-mass-in-u) := $alpha-particle-mass-in-u;

my $alpha-particle-molar-mass := Measure.new(
  value => 4.0015061777e-3,
  error => 0.0000000012e-3,
  units => 'kg⋅mol⁻¹'
);
constant \alpha-particle-molar-mass is export(:alpha-particle-molar-mass) := $alpha-particle-molar-mass;

my $alpha-particle-proton-mass-ratio := Measure.new(
  value => 3.97259969009,
  error => 0.00000000022,
  units => '①'
);
constant \alpha-particle-proton-mass-ratio is export(:alpha-particle-proton-mass-ratio) := $alpha-particle-proton-mass-ratio;

my $alpha-particle-relative-atomic-mass := Measure.new(
  value => 4.001506179127,
  error => 0.000000000063,
  units => '①'
);
constant \alpha-particle-relative-atomic-mass is export(:alpha-particle-relative-atomic-mass) := $alpha-particle-relative-atomic-mass;

my $angstrom-star := Measure.new(
  value => 1.00001495e-10,
  error => 0.00000090e-10,
  units => 'm'
);
constant \angstrom-star is export(:angstrom-star) := $angstrom-star;

my $atomic-mass-constant := Measure.new(
  value => 1.6605390666e-27,
  error => 0.00000000050e-27,
  units => 'kg'
);
constant \atomic-mass-constant is export(:atomic-mass-constant) := $atomic-mass-constant;

my $atomic-mass-constant-energy-equivalent := Measure.new(
  value => 1.4924180856e-10,
  error => 0.00000000045e-10,
  units => 'J'
);
constant \atomic-mass-constant-energy-equivalent is export(:atomic-mass-constant-energy-equivalent) := $atomic-mass-constant-energy-equivalent;

my $atomic-mass-constant-energy-equivalent-in-MeV := Measure.new(
  value => 931.49410242,
  error => 0.00000028,
  units => 'MeV'
);
constant \atomic-mass-constant-energy-equivalent-in-MeV is export(:atomic-mass-constant-energy-equivalent-in-MeV) := $atomic-mass-constant-energy-equivalent-in-MeV;

my $atomic-mass-unit-electron-volt-relationship := Measure.new(
  value => 931494102.42,
  error => 0.0000000028e8,
  units => 'eV'
);
constant \atomic-mass-unit-electron-volt-relationship is export(:atomic-mass-unit-electron-volt-relationship) := $atomic-mass-unit-electron-volt-relationship;

my $atomic-mass-unit-hartree-relationship := Measure.new(
  value => 34231776.874,
  error => 0.0000000010e7,
  units => 'Eₕ'
);
constant \atomic-mass-unit-hartree-relationship is export(:atomic-mass-unit-hartree-relationship) := $atomic-mass-unit-hartree-relationship;

my $atomic-mass-unit-hertz-relationship := Measure.new(
  value => 2.25234271871e+23,
  error => 0.00000000068e23,
  units => 'Hz'
);
constant \atomic-mass-unit-hertz-relationship is export(:atomic-mass-unit-hertz-relationship) := $atomic-mass-unit-hertz-relationship;

my $atomic-mass-unit-inverse-meter-relationship := Measure.new(
  value => 7.5130066104e14,
  error => 0.0000000023e14,
  units => 'm⁻¹'
);
constant \atomic-mass-unit-inverse-meter-relationship is export(:atomic-mass-unit-inverse-meter-relationship) := $atomic-mass-unit-inverse-meter-relationship;

my $atomic-mass-unit-joule-relationship := Measure.new(
  value => 1.4924180856e-10,
  error => 0.00000000045e-10,
  units => 'J'
);
constant \atomic-mass-unit-joule-relationship is export(:atomic-mass-unit-joule-relationship) := $atomic-mass-unit-joule-relationship;

my $atomic-mass-unit-kelvin-relationship := Measure.new(
  value => 1.08095401916e13,
  error => 0.00000000033e13,
  units => 'K'
);
constant \atomic-mass-unit-kelvin-relationship is export(:atomic-mass-unit-kelvin-relationship) := $atomic-mass-unit-kelvin-relationship;

my $atomic-mass-unit-kilogram-relationship := Measure.new(
  value => 1.6605390666e-27,
  error => 0.00000000050e-27,
  units => 'kg'
);
constant \atomic-mass-unit-kilogram-relationship is export(:atomic-mass-unit-kilogram-relationship) := $atomic-mass-unit-kilogram-relationship;

my $atomic-unit-of_1st-hyperpolarizability := Measure.new(
  value => 3.2063613061e-53,
  error => 0.0000000015e-53,
  units => 'C³⋅m³⋅J⁻²'
);
constant \atomic-unit-of_1st-hyperpolarizability is export(:atomic-unit-of_1st-hyperpolarizability) := $atomic-unit-of_1st-hyperpolarizability;

my $atomic-unit-of_2nd-hyperpolarizability := Measure.new(
  value => 6.2353799905e-65,
  error => 0.0000000038e-65,
  units => 'C⁴⋅m⁴⋅J⁻³'
);
constant \atomic-unit-of_2nd-hyperpolarizability is export(:atomic-unit-of_2nd-hyperpolarizability) := $atomic-unit-of_2nd-hyperpolarizability;

my $atomic-unit-of-charge-density := Measure.new(
  value => 1.08120238457e12,
  error => 0.00000000049e12,
  units => 'C⋅m⁻³'
);
constant \atomic-unit-of-charge-density is export(:atomic-unit-of-charge-density) := $atomic-unit-of-charge-density;

my $atomic-unit-of-current := Measure.new(
  value => 6.62361823751e-3,
  error => 0.000000000013e-3,
  units => 'A'
);
constant \atomic-unit-of-current is export(:atomic-unit-of-current) := $atomic-unit-of-current;

my $atomic-unit-of-electric-dipole-mom := Measure.new(
  value => 8.4783536255e-30,
  error => 0.0000000013e-30,
  units => 'C⋅m'
);
constant \atomic-unit-of-electric-dipole-mom is export(:atomic-unit-of-electric-dipole-mom) := $atomic-unit-of-electric-dipole-mom;

my $atomic-unit-of-electric-field := Measure.new(
  value => 5.14220674763e11,
  error => 0.00000000078e11,
  units => 'V⋅m⁻¹'
);
constant \atomic-unit-of-electric-field is export(:atomic-unit-of-electric-field) := $atomic-unit-of-electric-field;

my $atomic-unit-of-electric-field-gradient := Measure.new(
  value => 9.7173624292e21,
  error => 0.0000000029e21,
  units => 'V⋅m⁻²'
);
constant \atomic-unit-of-electric-field-gradient is export(:atomic-unit-of-electric-field-gradient) := $atomic-unit-of-electric-field-gradient;

my $atomic-unit-of-electric-polarizability := Measure.new(
  value => 1.64877727436e-41,
  error => 0.00000000050e-41,
  units => 'C²⋅m²⋅J⁻¹'
);
constant \atomic-unit-of-electric-polarizability is export(:atomic-unit-of-electric-polarizability) := $atomic-unit-of-electric-polarizability;

my $atomic-unit-of-electric-potential := Measure.new(
  value => 27.211386245988,
  error =>  0.000000000053,
  units => 'V'
);
constant \atomic-unit-of-electric-potential is export(:atomic-unit-of-electric-potential) := $atomic-unit-of-electric-potential;

my $atomic-unit-of-electric-quadrupole-mom := Measure.new(
  value => 4.4865515246e-40,
  error => 0.0000000014e-40,
  units => 'C⋅m²'
);
constant \atomic-unit-of-electric-quadrupole-mom is export(:atomic-unit-of-electric-quadrupole-mom) := $atomic-unit-of-electric-quadrupole-mom;

my $atomic-unit-of-energy := Measure.new(
  value => 4.3597447222071e-18,
  error => 0.0000000000085e-18,
  units => 'J'
);
constant \atomic-unit-of-energy is export(:atomic-unit-of-energy) := $atomic-unit-of-energy;

my $atomic-unit-of-force := Measure.new(
  value => 8.2387234983e-8,
  error => 0.0000000012e-8,
  units => 'N'
);
constant \atomic-unit-of-force is export(:atomic-unit-of-force) := $atomic-unit-of-force;

my $atomic-unit-of-length := Measure.new(
  value => 5.29177210903e-11,
  error => 0.00000000080e-11,
  units => 'm'
);
constant \atomic-unit-of-length is export(:atomic-unit-of-length) := $atomic-unit-of-length;

my $atomic-unit-of-mag-dipole-mom := Measure.new(
  value => 1.85480201566e-23,
  error => 0.00000000056e-23,
  units => 'J⋅T⁻¹'
);
constant \atomic-unit-of-mag-dipole-mom is export(:atomic-unit-of-mag-dipole-mom) := $atomic-unit-of-mag-dipole-mom;

my $atomic-unit-of-mag-flux-density := Measure.new(
  value => 2.35051756758e5,
  error => 0.00000000071e5,
  units => 'T'
);
constant \atomic-unit-of-mag-flux-density is export(:atomic-unit-of-mag-flux-density) := $atomic-unit-of-mag-flux-density;

my $atomic-unit-of-magnetizability := Measure.new(
  value => 7.8910366008e-29,
  error => 0.0000000048e-29,
  units => 'J⋅T⁻²'
);
constant \atomic-unit-of-magnetizability is export(:atomic-unit-of-magnetizability) := $atomic-unit-of-magnetizability;

my $atomic-unit-of-mass := Measure.new(
  value => 9.1093837015e-31,
  error => 0.0000000028e-31,
  units => 'kg'
);
constant \atomic-unit-of-mass is export(:atomic-unit-of-mass) := $atomic-unit-of-mass;

my $atomic-unit-of-momentum := Measure.new(
  value => 1.9928519141e-24,
  error => 0.00000000030e-24,
  units => 'kg⋅m⋅s⁻¹'
);
constant \atomic-unit-of-momentum is export(:atomic-unit-of-momentum) := $atomic-unit-of-momentum;

my $atomic-unit-of-permittivity := Measure.new(
  value => 1.11265005545e-10,
  error => 0.00000000017e-10,
  units => 'F⋅m⁻¹'
);
constant \atomic-unit-of-permittivity is export(:atomic-unit-of-permittivity) := $atomic-unit-of-permittivity;

my $atomic-unit-of-time := Measure.new(
  value => 2.4188843265857e-17,
  error => 0.0000000000047e-17,
  units => 's'
);
constant \atomic-unit-of-time is export(:atomic-unit-of-time) := $atomic-unit-of-time;

my $atomic-unit-of-velocity := Measure.new(
  value => 2.18769126364e6,
  error => 0.00000000033e6,
  units => 'm⋅s⁻¹'
);
constant \atomic-unit-of-velocity is export(:atomic-unit-of-velocity) := $atomic-unit-of-velocity;

my $bohr-magneton := Measure.new(
  value => 9.2740100783e-24,
  error => 0.0000000028e-24,
  units => 'J⋅T⁻¹'
);
constant \bohr-magneton is export(:bohr-magneton) := $bohr-magneton;

my $bohr-magneton-in-eV-T := Measure.new(
  value => 5.7883818060e-5,
  error => 0.0000000017e-5,
  units => 'eV⋅T⁻¹'
);
constant \bohr-magneton-in-eV-T is export(:bohr-magneton-in-eV-T) := $bohr-magneton-in-eV-T;

my $bohr-magneton-in-Hz-T := Measure.new(
  value => 1.39962449361e10,
  error => 0.00000000042e10,
  units => 'Hz⋅T⁻¹'
);
constant \bohr-magneton-in-Hz-T is export(:bohr-magneton-in-Hz-T) := $bohr-magneton-in-Hz-T;

my $bohr-magneton-in-inverse-meter-per-tesla := Measure.new(
  value => 46.686447783,
  error =>  0.000000014,
  units => 'm⁻¹⋅T⁻¹'
);
constant \bohr-magneton-in-inverse-meter-per-tesla is export(:bohr-magneton-in-inverse-meter-per-tesla) := $bohr-magneton-in-inverse-meter-per-tesla;

my $bohr-magneton-in-K-T := Measure.new(
  value => 0.67171381563,
  error => 0.00000000020,
  units => 'K⋅T⁻¹'
);
constant \bohr-magneton-in-K-T is export(:bohr-magneton-in-K-T) := $bohr-magneton-in-K-T;

my $bohr-radius := Measure.new(
  value => 5.29177210903e-11,
  error => 0.00000000080e-11,
  units => 'm'
);
constant \bohr-radius is export(:bohr-radius) := $bohr-radius;

my $characteristic-impedance-of-vacuum := Measure.new(
  value => 376.730313668,
  error =>   0.000000057,
  units => 'Ω'
);
constant \characteristic-impedance-of-vacuum is export(:characteristic-impedance-of-vacuum) := $characteristic-impedance-of-vacuum;

my $classical-electron-radius := Measure.new(
  value => 2.8179403262e-15,
  error => 0.0000000013e-15,
  units => 'm'
);
constant \classical-electron-radius is export(:classical-electron-radius) := $classical-electron-radius;

my $compton-wavelength := Measure.new(
  value => 2.42631023867e-12,
  error => 0.00000000073e-12,
  units => 'm'
);
constant \compton-wavelength is export(:compton-wavelength) := $compton-wavelength;

my $copper-x-unit := Measure.new(
  value => 1.00207697e-13,
  error => 0.00000028e-13,
  units => 'm'
);
constant \copper-x-unit is export(:copper-x-unit) := $copper-x-unit;

my $deuteron-electron-mag-mom-ratio := Measure.new(
  value => -4.664345551e-4,
  error =>  0.000000012e-4,
  units => '①'
);
constant \deuteron-electron-mag-mom-ratio is export(:deuteron-electron-mag-mom-ratio) := $deuteron-electron-mag-mom-ratio;

my $deuteron-electron-mass-ratio := Measure.new(
  value => 3670.48296788,
  error =>    0.00000013,
  units => '①'
);
constant \deuteron-electron-mass-ratio is export(:deuteron-electron-mass-ratio) := $deuteron-electron-mass-ratio;

my $deuteron-g-factor := Measure.new(
  value => 0.8574382338,
  error => 0.0000000022,
  units => '①'
);
constant \deuteron-g-factor is export(:deuteron-g-factor) := $deuteron-g-factor;

my $deuteron-mag-mom := Measure.new(
  value => 4.330735094e-27,
  error => 0.000000011e-27,
  units => 'J⋅T⁻¹'
);
constant \deuteron-mag-mom is export(:deuteron-mag-mom) := $deuteron-mag-mom;

my $deuteron-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => 4.669754570e-4,
  error => 0.000000012e-4,
  units => '①'
);
constant \deuteron-mag-mom-to-bohr-magneton-ratio is export(:deuteron-mag-mom-to-bohr-magneton-ratio) := $deuteron-mag-mom-to-bohr-magneton-ratio;

my $deuteron-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => 0.8574382338,
  error => 0.0000000022,
  units => '①'
);
constant \deuteron-mag-mom-to-nuclear-magneton-ratio is export(:deuteron-mag-mom-to-nuclear-magneton-ratio) := $deuteron-mag-mom-to-nuclear-magneton-ratio;

my $deuteron-mass := Measure.new(
  value => 3.3435837724e-27,
  error => 0.0000000010e-27,
  units => 'kg'
);
constant \deuteron-mass is export(:deuteron-mass) := $deuteron-mass;

my $deuteron-mass-energy-equivalent := Measure.new(
  value => 3.00506323102e-10,
  error => 0.00000000091e-10,
  units => 'J'
);
constant \deuteron-mass-energy-equivalent is export(:deuteron-mass-energy-equivalent) := $deuteron-mass-energy-equivalent;

my $deuteron-mass-energy-equivalent-in-MeV := Measure.new(
  value => 1875.61294257,
  error =>    0.00000057,
  units => 'MeV'
);
constant \deuteron-mass-energy-equivalent-in-MeV is export(:deuteron-mass-energy-equivalent-in-MeV) := $deuteron-mass-energy-equivalent-in-MeV;

my $deuteron-mass-in-u := Measure.new(
  value => 2.013553212745,
  error => 0.000000000040,
  units => 'u'
);
constant \deuteron-mass-in-u is export(:deuteron-mass-in-u) := $deuteron-mass-in-u;

my $deuteron-molar-mass := Measure.new(
  value => 2.01355321205e-3,
  error => 0.00000000061e-3,
  units => 'kg⋅mol⁻¹'
);
constant \deuteron-molar-mass is export(:deuteron-molar-mass) := $deuteron-molar-mass;

my $deuteron-neutron-mag-mom-ratio := Measure.new(
  value => -0.44820653,
  error =>  0.00000011,
  units => '①'
);
constant \deuteron-neutron-mag-mom-ratio is export(:deuteron-neutron-mag-mom-ratio) := $deuteron-neutron-mag-mom-ratio;

my $deuteron-proton-mag-mom-ratio := Measure.new(
  value => 0.30701220939,
  error => 0.00000000079,
  units => '①'
);
constant \deuteron-proton-mag-mom-ratio is export(:deuteron-proton-mag-mom-ratio) := $deuteron-proton-mag-mom-ratio;

my $deuteron-proton-mass-ratio := Measure.new(
  value => 1.99900750139,
  error => 0.00000000011,
  units => '①'
);
constant \deuteron-proton-mass-ratio is export(:deuteron-proton-mass-ratio) := $deuteron-proton-mass-ratio;

my $deuteron-relative-atomic-mass := Measure.new(
  value => 2.013553212745,
  error => 0.000000000040,
  units => '①'
);
constant \deuteron-relative-atomic-mass is export(:deuteron-relative-atomic-mass) := $deuteron-relative-atomic-mass;

my $deuteron-rms-charge-radius := Measure.new(
  value => 2.12799e-15,
  error => 0.00074e-15,
  units => 'm'
);
constant \deuteron-rms-charge-radius is export(:deuteron-rms-charge-radius) := $deuteron-rms-charge-radius;

my $electron-charge-to-mass-quotient := Measure.new(
  value => -1.75882001076e11,
  error =>  0.00000000053e11,
  units => 'C⋅kg⁻¹'
);
constant \electron-charge-to-mass-quotient is export(:electron-charge-to-mass-quotient) := $electron-charge-to-mass-quotient;

my $electron-deuteron-mag-mom-ratio := Measure.new(
  value => -2143.9234915,
  error =>     0.0000056,
  units => '①'
);
constant \electron-deuteron-mag-mom-ratio is export(:electron-deuteron-mag-mom-ratio) := $electron-deuteron-mag-mom-ratio;

my $electron-deuteron-mass-ratio := Measure.new(
  value => 2.724437107462e-4,
  error => 0.000000000096e-4,
  units => '①'
);
constant \electron-deuteron-mass-ratio is export(:electron-deuteron-mass-ratio) := $electron-deuteron-mass-ratio;

my $electron-g-factor := Measure.new(
  value => -2.00231930436256,
  error =>  0.00000000000035,
  units => '①'
);
constant \electron-g-factor is export(:electron-g-factor) := $electron-g-factor;

my $electron-gyromag-ratio := Measure.new(
  value => 1.76085963023e11,
  error => 0.00000000053e11,
  units => 's⁻¹⋅T⁻¹'
);
constant \electron-gyromag-ratio is export(:electron-gyromag-ratio) := $electron-gyromag-ratio;

my $electron-gyromag-ratio-in-MHz-T := Measure.new(
  value => 28024.9514242 × 1e6,
  error =>     0.0000085 × 1e6,
  units => 'Hz⋅T⁻¹'
);
constant \electron-gyromag-ratio-in-MHz-T is export(:electron-gyromag-ratio-in-MHz-T) := $electron-gyromag-ratio-in-MHz-T;

my $electron-helion-mass-ratio := Measure.new(
  value => 1.819543074573e-4,
  error => 0.000000000079e-4,
  units => '①'
);
constant \electron-helion-mass-ratio is export(:electron-helion-mass-ratio) := $electron-helion-mass-ratio;

my $electron-mag-mom := Measure.new(
  value => -9.2847647043e-24,
  error => 0.0000000028e-24,
  units => 'J⋅T⁻¹'
);
constant \electron-mag-mom is export(:electron-mag-mom) := $electron-mag-mom;

my $electron-mag-mom-anomaly := Measure.new(
  value => 1.15965218128e-3,
  error => 0.00000000018e-3,
  units => '①'
);
constant \electron-mag-mom-anomaly is export(:electron-mag-mom-anomaly) := $electron-mag-mom-anomaly;

my $electron-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => -1.00115965218128,
  error =>  0.00000000000018,
  units => '①'
);
constant \electron-mag-mom-to-bohr-magneton-ratio is export(:electron-mag-mom-to-bohr-magneton-ratio) := $electron-mag-mom-to-bohr-magneton-ratio;

my $electron-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => -1838.28197188,
  error =>     0.00000011,
  units => '①'
);
constant \electron-mag-mom-to-nuclear-magneton-ratio is export(:electron-mag-mom-to-bohr-magneton-ratio) := $electron-mag-mom-to-nuclear-magneton-ratio;

my $electron-mass := Measure.new(
  value => 9.1093837015e-31,
  error => 0.0000000028e-31,
  units => 'kg'
);
constant \electron-mass is export(:DEFAULT :electron-mass) := $electron-mass;

my $electron-mass-energy-equivalent := Measure.new(
  value => 8.1871057769e-14,
  error => 0.0000000025e-14,
  units => 'J'
);
constant \electron-mass-energy-equivalent is export(:electron-mass-energy-equivalent) := $electron-mass-energy-equivalent;

my $electron-mass-energy-equivalent-in-MeV := Measure.new(
  value => 0.51099895000,
  error => 0.00000000015,
  units => 'MeV'
);
constant \electron-mass-energy-equivalent-in-MeV is export(:electron-mass-energy-equivalent-in-MeV) := $electron-mass-energy-equivalent-in-MeV;

my $electron-mass-in-u := Measure.new(
  value => 5.48579909065e-4,
  error => 0.00000000016e-4,
  units => 'u'
);
constant \electron-mass-in-u is export(:electron-mass-in-u) := $electron-mass-in-u;

my $electron-molar-mass := Measure.new(
  value => 5.4857990888e-7,
  error => 0.0000000017e-7,
  units => 'kg⋅mol⁻¹'
);
constant \electron-molar-mass is export(:electron-molar-mass) := $electron-molar-mass;

my $electron-muon-mag-mom-ratio := Measure.new(
  value => 206.7669883,
  error =>   0.0000046,
  units => '①'
);
constant \electron-muon-mag-mom-ratio is export(:electron-muon-mag-mom-ratio) := $electron-muon-mag-mom-ratio;

my $electron-muon-mass-ratio := Measure.new(
  value => 4.83633169e-3,
  error => 0.00000011e-3,
  units => '①'
);
constant \electron-muon-mass-ratio is export(:electron-muon-mass-ratio) := $electron-muon-mass-ratio;

my $electron-neutron-mag-mom-ratio := Measure.new(
  value => 960.92050,
  error =>   0.00023,
  units => '①'
);
constant \electron-neutron-mag-mom-ratio is export(:electron-neutron-mag-mom-ratio) := $electron-neutron-mag-mom-ratio;

my $electron-neutron-mass-ratio := Measure.new(
  value => 5.4386734424e-4,
  error => 0.0000000026e-4,
  units => '①'
);
constant \electron-neutron-mass-ratio is export(:electron-neutron-mass-ratio) := $electron-neutron-mass-ratio;

my $electron-proton-mag-mom-ratio := Measure.new(
  value => -658.21068789,
  error =>    0.00000020,
  units => '①'
);
constant \electron-proton-mag-mom-ratio is export(:electron-proton-mag-mom-ratio) := $electron-proton-mag-mom-ratio;

my $electron-proton-mass-ratio := Measure.new(
  value => 5.44617021487e-4,
  error => 0.00000000033e-4,
  units => '①'
);
constant \electron-proton-mass-ratio is export(:electron-proton-mass-ratio) := $electron-proton-mass-ratio;

my $electron-relative-atomic-mass := Measure.new(
  value => 5.48579909065e-4,
  error => 0.00000000016e-4,
  units => '①'
);
constant \electron-relative-atomic-mass is export(:electron-relative-atomic-mass) := $electron-relative-atomic-mass;

my $electron-tau-mass-ratio := Measure.new(
  value => 2.87585e-4,
  error => 0.00019e-4,
  units => '①'
);
constant \electron-tau-mass-ratio is export(:electron-tau-mass-ratio) := $electron-tau-mass-ratio;

my $electron-to-alpha-particle-mass-ratio := Measure.new(
  value => 1.370933554787e-4,
  error => 0.000000000045e-4,
  units => '①'
);
constant \electron-to-alpha-particle-mass-ratio is export(:electron-to-alpha-particle-mass-ratio) := $electron-to-alpha-particle-mass-ratio;

my $electron-to-shielded-helion-mag-mom-ratio := Measure.new(
  value => 864.058257,
  error =>   0.000010,
  units => '①'
);
constant \electron-to-shielded-helion-mag-mom-ratio is export(:electron-to-shielded-helion-mag-mom-ratio) := $electron-to-shielded-helion-mag-mom-ratio;

my $electron-to-shielded-proton-mag-mom-ratio := Measure.new(
  value => -658.2275971,
  error =>    0.0000072,
  units => '①'
);
constant \electron-to-shielded-proton-mag-mom-ratio is export(:electron-to-shielded-proton-mag-mom-ratio) := $electron-to-shielded-proton-mag-mom-ratio;

my $electron-triton-mass-ratio := Measure.new(
  value => 1.819200062251e-4,
  error => 0.000000000090e-4,
  units => '①'
);
constant \electron-triton-mass-ratio is export(:electron-triton-mass-ratio) := $electron-triton-mass-ratio;

my $electron-volt-atomic-mass-unit-relationship := Measure.new(
  value => 1.07354410233e-9,
  error => 0.00000000032e-9,
  units => 'u'
);
constant \electron-volt-atomic-mass-unit-relationship is export(:electron-volt-atomic-mass-unit-relationship) := $electron-volt-atomic-mass-unit-relationship;

my $electron-volt-hartree-relationship := Measure.new(
  value => 3.6749322175655e-2,
  error => 0.0000000000071e-2,
  units => 'Eₕ'
);
constant \electron-volt-hartree-relationship is export(:electron-volt-hartree-relationship) := $electron-volt-hartree-relationship;

my $fermi-coupling-constant := Measure.new(
  value => 1.1663787e-5,
  error => 0.0000006e-5,
  units => 'GeV⁻²'
);
constant \fermi-coupling-constant is export(:fermi-coupling-constant) := $fermi-coupling-constant;

my $fine-structure-constant := Measure.new(
  value => 0.0072973525693,
  error => 0.0000000000011,
  units => '①',
);
constant \fine-structure-constant is export(:DEFAULT :fine-structure-constant) := $fine-structure-constant;
constant \α is export(:DEFAULT :α) := $fine-structure-constant;

my $hartree-atomic-mass-unit-relationship := Measure.new(
  value => 2.92126232205e-8,
  error => 0.00000000088e-8,
  units => 'u'
);
constant \hartree-atomic-mass-unit-relationship is export(:hartree-atomic-mass-unit-relationship) := $hartree-atomic-mass-unit-relationship;

my $hartree-electron-volt-relationship := Measure.new(
  value => 27.211386245988,
  error =>  0.000000000053,
  units => 'eV'
);
constant \hartree-electron-volt-relationship is export(:hartree-electron-volt-relationship) := $hartree-electron-volt-relationship;

my $hartree-energy := Measure.new(
  value => 4.3597447222071e-18,
  error => 0.0000000000085e-18,
  units => 'J'
);
constant \hartree-energy is export(:hartree-energy) := $hartree-energy;

my $hartree-energy-in-eV := Measure.new(
  value => 27.211386245988,
  error =>  0.000000000053,
  units => 'eV'
);
constant \hartree-energy-in-eV is export(:hartree-energy-in-eV) := $hartree-energy-in-eV;

my $hartree-hertz-relationship := Measure.new(
  value => 6.579683920502e15,
  error => 0.000000000013e15,
  units => 'Hz'
);
constant \hartree-hertz-relationship is export(:hartree-hertz-relationship) := $hartree-hertz-relationship;

my $hartree-inverse-meter-relationship := Measure.new(
  value => 2.1947463136320e7,
  error => 0.0000000000043e7,
  units => 'm⁻¹'
);
constant \hartree-inverse-meter-relationship is export(:hartree-inverse-meter-relationship) := $hartree-inverse-meter-relationship;

my $hartree-joule-relationship := Measure.new(
  value => 4.3597447222071e-18,
  error => 0.0000000000085e-18,
  units => 'J'
);
constant \hartree-joule-relationship is export(:hartree-joule-relationship) := $hartree-joule-relationship;

my $hartree-kelvin-relationship := Measure.new(
  value => 3.1577502480407e5,
  error => 0.0000000000061e5,
  units => 'K'
);
constant \hartree-kelvin-relationship is export(:hartree-kelvin-relationship) := $hartree-kelvin-relationship;

my $hartree-kilogram-relationship := Measure.new(
  value => 4.8508702095432e-35,
  error => 0.0000000000094e-35,
  units => 'kg'
);
constant \hartree-kilogram-relationship is export(:hartree-kilogram-relationship) := $hartree-kilogram-relationship;

my $helion-electron-mass-ratio := Measure.new(
  value => 5495.88528007,
  error =>    0.00000024,
  units => '①'
);
constant \helion-electron-mass-ratio is export(:helion-electron-mass-ratio) := $helion-electron-mass-ratio;

my $helion-g-factor := Measure.new(
  value => -4.255250615,
  error =>  0.000000050,
  units => '①'
);
constant \helion-g-factor is export(:helion-g-factor) := $helion-g-factor;

my $helion-mag-mom := Measure.new(
  value => -1.074617532e-26,
  error =>  0.000000013e-26,
  units => 'J⋅T⁻¹'
);
constant \helion-mag-mom is export(:helion-mag-mom) := $helion-mag-mom;

my $helion-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => -1.158740958e-3,
  error =>  0.000000014e-3,
  units => '①'
);
constant \helion-mag-mom-to-bohr-magneton-ratio is export(:helion-mag-mom-to-bohr-magneton-ratio) := $helion-mag-mom-to-bohr-magneton-ratio;

my $helion-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => -2.127625307,
  error =>  0.000000025,
  units => '①'
);
constant \helion-mag-mom-to-nuclear-magneton-ratio is export(:helion-mag-mom-to-nuclear-magneton-ratio) := $helion-mag-mom-to-nuclear-magneton-ratio;

my $helion-mass := Measure.new(
  value => 5.0064127796e-27,
  error => 0.0000000015e-27,
  units => 'kg'
);
constant \helion-mass is export(:helion-mass) := $helion-mass;

my $helion-mass-energy-equivalent := Measure.new(
  value => 4.4995394125e-10,
  error => 0.0000000014e-10,
  units => 'J'
);
constant \helion-mass-energy-equivalent is export(:helion-mass-energy-equivalent) := $helion-mass-energy-equivalent;

my $helion-mass-energy-equivalent-in-MeV := Measure.new(
  value => 2808.39160743,
  error =>    0.00000085,
  units => 'MeV'
);
constant \helion-mass-energy-equivalent-in-MeV is export(:helion-mass-energy-equivalent-in-MeV) := $helion-mass-energy-equivalent-in-MeV;

my $helion-mass-in-u := Measure.new(
  value => 3.014932247175,
  error => 0.000000000097,
  units => 'u'
);
constant \helion-mass-in-u is export(:helion-mass-in-u) := $helion-mass-in-u;

my $helion-molar-mass := Measure.new(
  value => 3.01493224613e-3,
  error => 0.00000000091e-3,
  units => 'kg⋅mol⁻¹'
);
constant \helion-molar-mass is export(:helion-molar-mass) := $helion-molar-mass;

my $helion-proton-mass-ratio := Measure.new(
  value => 2.99315267167,
  error => 0.00000000013,
  units => '①'
);
constant \helion-proton-mass-ratio is export(:helion-proton-mass-ratio) := $helion-proton-mass-ratio;

my $helion-relative-atomic-mass := Measure.new(
  value => 3.014932247175,
  error => 0.000000000097,
  units => '①'
);
constant \helion-relative-atomic-mass is export(:helion-relative-atomic-mass) := $helion-relative-atomic-mass;

my $helion-shielding-shift := Measure.new(
  value => 5.996743e-5,
  error => 0.000010e-5,
  units => '①'
);
constant \helion-shielding-shift is export(:helion-shielding-shift) := $helion-shielding-shift;

my $hertz-atomic-mass-unit-relationship := Measure.new(
  value => 4.4398216652e-24,
  error => 0.0000000013e-24,
  units => 'u'
);
constant \hertz-atomic-mass-unit-relationship is export(:hertz-atomic-mass-unit-relationship) := $hertz-atomic-mass-unit-relationship;

my $hertz-hartree-relationship := Measure.new(
  value => 1.5198298460570e-16,
  error => 0.0000000000029e-16,
  units => 'Eₕ'
);
constant \hertz-hartree-relationship is export(:hertz-hartree-relationship) := $hertz-hartree-relationship;

my $inverse-fine-structure-constant := Measure.new(
  value => 137.035999084,
  error =>   0.000000021,
  units => '①'
);
constant \inverse-fine-structure-constant is export(:inverse-fine-structure-constant) := $inverse-fine-structure-constant;

my $inverse-meter-atomic-mass-unit-relationship := Measure.new(
  value => 1.33102505010e-15,
  error => 0.00000000040e-15,
  units => 'u'
);
constant \inverse-meter-atomic-mass-unit-relationship is export(:inverse-meter-atomic-mass-unit-relationship) := $inverse-meter-atomic-mass-unit-relationship;

my $inverse-meter-hartree-relationship := Measure.new(
  value => 4.5563352529120e-8,
  error => 0.0000000000088e-8,
  units => 'Eₕ'
);
constant \inverse-meter-hartree-relationship is export(:inverse-meter-hartree-relationship) := $inverse-meter-hartree-relationship;

my $joule-atomic-mass-unit-relationship := Measure.new(
  value => 6.7005352565e9,
  error => 0.0000000020e9,
  units => 'u'
);
constant \joule-atomic-mass-unit-relationship is export(:joule-atomic-mass-unit-relationship) := $joule-atomic-mass-unit-relationship;

my $joule-hartree-relationship := Measure.new(
  value => 2.2937122783963e17,
  error => 0.0000000000045e17,
  units => 'Eₕ'
);
constant \joule-hartree-relationship is export(:joule-hartree-relationship) := $joule-hartree-relationship;

my $kelvin-atomic-mass-unit-relationship := Measure.new(
  value => 9.2510873014e-14,
  error => 0.0000000028e-14,
  units => 'u'
);
constant \kelvin-atomic-mass-unit-relationship is export(:kelvin-atomic-mass-unit-relationship) := $kelvin-atomic-mass-unit-relationship;

my $kelvin-hartree-relationship := Measure.new(
  value => 3.1668115634556e-6,
  error => 0.0000000000061e-6,
  units => 'Eₕ'
);
constant \kelvin-hartree-relationship is export(:kelvin-hartree-relationship) := $kelvin-hartree-relationship;

my $kilogram-atomic-mass-unit-relationship := Measure.new(
  value => 6.0221407621e26,
  error => 0.0000000018e26,
  units => 'u'
);
constant \kilogram-atomic-mass-unit-relationship is export(:kilogram-atomic-mass-unit-relationship) := $kilogram-atomic-mass-unit-relationship;

my $kilogram-hartree-relationship := Measure.new(
  value => 2.0614857887409e34,
  error => 0.0000000000040e34,
  units => 'Eₕ'
);
constant \kilogram-hartree-relationship is export(:kilogram-hartree-relationship) := $kilogram-hartree-relationship;

my $lattice-parameter-of-silicon := Measure.new(
  value => 5.431020511e-10,
  error => 0.000000089e-10,
  units => 'm'
);
constant \lattice-parameter-of-silicon is export(:lattice-parameter-of-silicon) := $lattice-parameter-of-silicon;

my $lattice-spacing-of-ideal-Si_220 := Measure.new(
  value => 1.920155716e-10,
  error => 0.000000032e-10,
  units => 'm'
);
constant \lattice-spacing-of-ideal-Si_220 is export(:lattice-spacing-of-ideal-Si_220) := $lattice-spacing-of-ideal-Si_220;

my $molar-mass-constant := Measure.new(
  value => 0.99999999965e-3,
  error => 0.00000000030e-3,
  units => 'kg⋅mol⁻¹'
);
constant \molar-mass-constant is export(:molar-mass-constant) := $molar-mass-constant;

my $molar-mass-of-carbon_12 := Measure.new(
  value => 0.0119999999958,
  error => 0.0000000000036,
  units => 'kg⋅mol⁻¹'
);
constant \molar-mass-of-carbon_12 is export(:molar-mass-of-carbon_12) := $molar-mass-of-carbon_12;

my $molar-volume-of-silicon := Measure.new(
  value => 1.205883199e-5,
  error => 0.000000060e-5,
  units => 'm³⋅mol⁻¹'
);
constant \molar-volume-of-silicon is export(:molar-volume-of-silicon) := $molar-volume-of-silicon;

my $molybdenum-x-unit := Measure.new(
  value => 1.00209952e-13,
  error => 0.00000053e-13,
  units => 'm'
);
constant \molybdenum-x-unit is export(:molybdenum-x-unit) := $molybdenum-x-unit;

my $muon-compton-wavelength := Measure.new(
  value => 1.173444110e-14,
  error => 0.000000026e-14,
  units => 'm'
);
constant \muon-compton-wavelength is export(:muon-compton-wavelength) := $muon-compton-wavelength;

my $muon-electron-mass-ratio := Measure.new(
  value => 206.7682830,
  error =>   0.0000046,
  units => '①'
);
constant \muon-electron-mass-ratio is export(:muon-electron-mass-ratio) := $muon-electron-mass-ratio;

my $muon-g-factor := Measure.new(
  value => -2.0023318418,
  error =>  0.0000000013,
  units => '①'
);
constant \muon-g-factor is export(:muon-g-factor) := $muon-g-factor;

my $muon-mag-mom := Measure.new(
  value => -4.49044830e-26,
  error =>  0.00000010e-26,
  units => 'J⋅T⁻¹'
);
constant \muon-mag-mom is export(:muon-mag-mom) := $muon-mag-mom;

my $muon-mag-mom-anomaly := Measure.new(
  value => 1.16592089e-3,
  error => 0.00000063e-3,
  units => '①'
);
constant \muon-mag-mom-anomaly is export(:muon-mag-mom-anomaly) := $muon-mag-mom-anomaly;

my $muon-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => -4.84197047e-3,
  error =>  0.00000011e-3,
  units => '①'
);
constant \muon-mag-mom-to-bohr-magneton-ratio is export(:muon-mag-mom-to-bohr-magneton-ratio) := $muon-mag-mom-to-bohr-magneton-ratio;

my $muon-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => -8.89059703,
  error =>  0.00000020,
  units => '①'
);
constant \muon-mag-mom-to-nuclear-magneton-ratio is export(:mag-mom-to-nuclear-magneton-ratio) := $muon-mag-mom-to-nuclear-magneton-ratio;

my $muon-mass := Measure.new(
  value => 1.883531627e-28,
  error => 0.000000042e-28,
  units => 'kg'
);
constant \muon-mass is export(:muon-mass) := $muon-mass;

my $muon-mass-energy-equivalent := Measure.new(
  value => 1.692833804e-11,
  error => 0.000000038e-11,
  units => 'J'
);
constant \muon-mass-energy-equivalent is export(:muon-mass-energy-equivalent) := $muon-mass-energy-equivalent;

my $muon-mass-energy-equivalent-in-MeV := Measure.new(
  value => 105.6583755,
  error =>   0.0000023,
  units => 'MeV'
);
constant \muon-mass-energy-equivalent-in-MeV is export(:muon-mass-energy-equivalent-in-MeV) := $muon-mass-energy-equivalent-in-MeV;

my $muon-mass-in-u := Measure.new(
  value => 0.1134289259,
  error => 0.0000000025,
  units => 'u'
);
constant \muon-mass-in-u is export(:muon-mass-in-u) := $muon-mass-in-u;

my $muon-molar-mass := Measure.new(
  value => 1.134289259e-4,
  error => 0.000000025e-4,
  units => 'kg⋅mol⁻¹'
);
constant \muon-molar-mass is export(:muon-molar-mass) := $muon-molar-mass;

my $muon-neutron-mass-ratio := Measure.new(
  value => 0.1124545170,
  error => 0.0000000025,
  units => '①'
);
constant \muon-neutron-mass-ratio is export(:muon-neutron-mass-rati) := $muon-neutron-mass-ratio;

my $muon-proton-mag-mom-ratio := Measure.new(
  value => -3.183345142,
  error =>  0.000000071,
  units => '①'
);
constant \muon-proton-mag-mom-ratio is export(:muon-proton-mag-mom-ratio) := $muon-proton-mag-mom-ratio;

my $muon-proton-mass-ratio := Measure.new(
  value => 0.1126095264,
  error => 0.0000000025,
  units => '①'
);
constant \muon-proton-mass-ratio is export(:muon-proton-mass-ratio) := $muon-proton-mass-ratio;

my $muon-tau-mass-ratio := Measure.new(
  value => 0.0594635,
  error => 0.0000040,
  units => '①'
);
constant \muon-tau-mass-ratio is export(:muon-tau-mass-ratio) := $muon-tau-mass-ratio;

my $natural-unit-of-energy := Measure.new(
  value => 8.1871057769e-14,
  error => 0.0000000025e-14,
  units => 'J'
);
constant \natural-unit-of-energy is export(:natural-unit-of-energy) := $natural-unit-of-energy;

my $natural-unit-of-energy-in-MeV := Measure.new(
  value => 0.51099895000,
  error => 0.00000000015,
  units => 'MeV'
);
constant \natural-unit-of-energy-in-MeV is export(:natural-unit-of-energy-in-MeV) := $natural-unit-of-energy-in-MeV;

my $natural-unit-of-length := Measure.new(
  value => 3.8615926796e-13,
  error => 0.0000000012e-13,
  units => 'm'
);
constant \natural-unit-of-length is export(:natural-unit-of-length) := $natural-unit-of-length;

my $natural-unit-of-mass := Measure.new(
  value => 9.1093837015e-31,
  error => 0.0000000028e-31,
  units => 'kg'
);
constant \natural-unit-of-mass is export(:natural-unit-of-mass) := $natural-unit-of-mass;

my $natural-unit-of-momentum := Measure.new(
  value => 2.73092453075e-22,
  error => 0.00000000082e-22,
  units => 'kg⋅m⋅s⁻¹'
);
constant \natural-unit-of-momentum is export(:natural-unit-of-momentum) := $natural-unit-of-momentum;

#my $natural-unit-of-momentum-in-MeV-c := Measure.new(
#value => 0.51099895000,
#error => 0.00000000015,
#units => 'eV⋅c⁻¹' # 'MeV/c'
#);
#constant \natural-unit-of-momentum-in-MeV-c is export(:natural-unit-of-momentum-in-MeV-c ) := $natural-unit-of-momentum-in-MeV-c;

my $natural-unit-of-time := Measure.new(
  value => 1.28808866819e-21,
  error => 0.00000000039e-21,
  units => 's'
);
constant \natural-unit-of-time is export(:natural-unit-of-time) := $natural-unit-of-time;

my $neutron-compton-wavelength := Measure.new(
  value => 1.31959090581e-15,
  error => 0.00000000075e-15,
  units => 'm'
);
constant \neutron-compton-wavelength is export(:neutron-compton-wavelength) := $neutron-compton-wavelength;

my $neutron-electron-mag-mom-ratio := Measure.new(
  value => 1.04066882e-3,
  error => 0.00000025e-3,
  units => '①'
);
constant \neutron-electron-mag-mom-ratio is export(:neutron-electron-mag-mom-ratio) := $neutron-electron-mag-mom-ratio;

my $neutron-electron-mass-ratio := Measure.new(
  value => 1838.68366173,
  error =>    0.00000089,
  units => '①'
);
constant \neutron-electron-mass-ratio is export(:neutron-electron-mass-ratio) := $neutron-electron-mass-ratio;

my $neutron-g-factor := Measure.new(
  value => -3.82608545,
  error =>  0.00000090,
  units => '①'
);
constant \neutron-g-factor is export(:neutron-g-factor) := $neutron-g-factor;

my $neutron-gyromag-ratio := Measure.new(
  value => 1.83247171e8,
  error => 0.00000043e8,
  units => 's⁻¹⋅T⁻¹'
);
constant \neutron-gyromag-ratio is export(:neutron-gyromag-ratio) := $neutron-gyromag-ratio;

my $neutron-gyromag-ratio-in-MHz-T := Measure.new(
  value => 29.1646931 × 1e6,
  error =>  0.0000069 × 1e6,
  units => 'Hz⋅T⁻¹'
);
constant \neutron-gyromag-ratio-in-MHz-T is export(:neutron-hyromag-ration-in-MHz-T) := $neutron-gyromag-ratio-in-MHz-T;

my $neutron-mag-mom := Measure.new(
  value => -9.6623651e-27,
  error =>  0.0000023e-27,
  units => 'J⋅T⁻¹'
);
constant \neutron-mag-mom is export(:neutron-mag-mom) := $neutron-mag-mom;

my $neutron-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => -1.04187563e-3,
  error =>  0.00000025e-3,
  units => '①'
);
constant \neutron-mag-mom-to-bohr-magneton-ratio is export(:neutron-mag-mom-to-nohr-magneton-ratio) := $neutron-mag-mom-to-bohr-magneton-ratio;

my $neutron-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => -1.91304273,
  error =>  0.00000045,
  units => '①'
);
constant \neutron-mag-mom-to-nuclear-magneton-ratio is export(:neutron-mag-mom-to-nuclear-magneton-ratio) := $neutron-mag-mom-to-nuclear-magneton-ratio;

my $neutron-mass := Measure.new(
  value => 1.67492749804e-27,
  error => 0.00000000095e-27,
  units => 'kg'
);
constant \neutron-mass is export(:DEFAULT :neutron-mass) := $neutron-mass;

my $neutron-mass-energy-equivalent := Measure.new(
  value => 1.50534976287e-10,
  error => 0.00000000086e-10,
  units => 'J'
);
constant \neutron-mass-energy-equivalent is export(:neutron-mass-energy-equivalent) := $neutron-mass-energy-equivalent;

my $neutron-mass-energy-equivalent-in-MeV := Measure.new(
  value => 939.56542052,
  error =>   0.00000054,
  units => 'MeV'
);
constant \neutron-mass-energy-equivalent-in-MeV is export(:neutron-mass-energy-equivalent-in-MeV) := $neutron-mass-energy-equivalent-in-MeV;

my $neutron-mass-in-u := Measure.new(
  value => 1.00866491595,
  error => 0.00000000049,
  units => 'u'
);
constant \neutron-mass-in-u is export(:neutron-mass-in-u) := $neutron-mass-in-u;

my $neutron-molar-mass := Measure.new(
  value => 1.00866491560e-3,
  error => 0.00000000057e-3,
  units => 'kg⋅mol⁻¹'
);
constant \neutron-molar-mass is export(:neutron-molar-mass) := $neutron-molar-mass;

my $neutron-muon-mass-ratio := Measure.new(
  value => 8.89248406,
  error => 0.00000020,
  units => '①'
);
constant \neutron-muon-mass-ratio is export(:neutron-muon-mass-ratio) := $neutron-muon-mass-ratio;

my $neutron-proton-mag-mom-ratio := Measure.new(
  value => -0.68497934,
  error =>  0.00000016,
  units => '①'
);
constant \neutron-proton-mag-mom-ratio is export(:neutron-proton-mag-mom-ratio) := $neutron-proton-mag-mom-ratio;

my $neutron-proton-mass-difference := Measure.new(
  value => 2.30557435e-30,
  error => 0.00000082e-30,
  units => 'kg'
);
constant \neutron-proton-mass-difference is export(:neutron-proton-mass-difference) := $neutron-proton-mass-difference;

my $neutron-proton-mass-difference-energy-equivalent := Measure.new(
  value => 2.07214689e-13,
  error => 0.00000074e-13,
  units => 'J'
);
constant \neutron-proton-mass-difference-energy-equivalent is export(:neutron-proton-mass-difference-energy-equivalent) := $neutron-proton-mass-difference-energy-equivalent;

my $neutron-proton-mass-difference-energy-equivalent-in-MeV := Measure.new(
  value => 1.29333236,
  error => 0.00000046,
  units => 'MeV'
);
constant \neutron-proton-mass-difference-energy-equivalent-in-MeV is export(:neutron-proton-mass-difference-energy-equivalent-in-MeV) := $neutron-proton-mass-difference-energy-equivalent-in-MeV;

my $neutron-proton-mass-difference-in-u := Measure.new(
  value => 1.38844933e-3,
  error => 0.00000049e-3,
  units => 'u'
);
constant \neutron-proton-mass-difference-in-u is export(:neutron-proton-mass-difference-in-u) := $neutron-proton-mass-difference-in-u;

my $neutron-proton-mass-ratio := Measure.new(
  value => 1.00137841931,
  error => 0.00000000049,
  units => '①'
);
constant \neutron-proton-mass-ratio is export(:neutron-proton-mass-ratio) := $neutron-proton-mass-ratio;

my $neutron-relative-atomic-mass := Measure.new(
  value => 1.00866491595,
  error => 0.00000000049,
  units => '①'
);
constant \neutron-relative-atomic-mass is export(:neutron-relative-atomnic-mass) := $neutron-relative-atomic-mass;

my $neutron-tau-mass-ratio := Measure.new(
  value => 0.528779,
  error => 0.000036,
  units => '①'
);
constant \neutron-tau-mass-ratio is export(:neutron-tau-mass-ratio) := $neutron-tau-mass-ratio;

my $neutron-to-shielded-proton-mag-mom-ratio := Measure.new(
  value => -0.68499694,
  error =>  0.00000016,
  units => '①'
);
constant \neutron-to-shielded-proton-mag-mom-ratio is export(:neutron-to-shielded-proton-mag-mom-ratio) := $neutron-to-shielded-proton-mag-mom-ratio;

my $newtonian-constant-of-gravitation := Measure.new(
  value => 6.67430e-11,
  error => 0.00015e-11,
  units => 'm³⋅kg⁻¹⋅s⁻²',
);
constant \newtonian-constant-of-gravitation is export(:newtonian-constant-of-gravitation) := $newtonian-constant-of-gravitation;
constant \gravitation-constant              is export(:DEFAULT :gravitation-constant)     := $newtonian-constant-of-gravitation;
constant \G                                 is export(:DEFAULT :G)                        := $newtonian-constant-of-gravitation;

my $newtonian-constant-of-gravitation-over-h-bar-c := Measure.new(
  value => 6.70883e-39 ÷ $speed-of-light-vacuum⁴ × 1e18,
  error => 0.00015e-39 ÷ $speed-of-light-vacuum⁴ × 1e18,
  # FIX units => '(GeV/c²)⁻²'
  units => 'eV^-2⋅m⁴⋅s^-4'
);
constant \newtonian-constant-of-gravitation-over-h-bar-c is export(:newtonian-constant-of-gravitation-over-h-bar-c) := $newtonian-constant-of-gravitation-over-h-bar-c;

my $nuclear-magneton := Measure.new(
  value => 5.0507837461e-27,
  error => 0.0000000015e-27,
  units => 'J⋅T⁻¹'
);
constant \nuclear-magneton is export(:nuclear-magneton) := $nuclear-magneton;

my $nuclear-magneton-in-eV-T := Measure.new(
  value => 3.15245125844e-8,
  error => 0.00000000096e-8,
  units => 'eV⋅T⁻¹'
);
constant \nuclear-magneton-in-eV-T is export(:nuclear-magneton-in-eV-T) := $nuclear-magneton-in-eV-T;

my $nuclear-magneton-in-inverse-meter-per-tesla := Measure.new(
  value => 0.0254262341353,
  error => 0.0000000000078,
  units => 'm⁻¹⋅T⁻¹'
);
constant \nuclear-magneton-in-inverse-meter-per-tesla is export(:nuclear-magneton-in-inverse-meter-per-tesla) := $nuclear-magneton-in-inverse-meter-per-tesla;

my $nuclear-magneton-in-K-T := Measure.new(
  value => 3.6582677756e-4,
  error => 0.0000000011e-4,
  units => 'K⋅T⁻¹'
);
constant \nuclear-magneton-in-K-T is export(:nuclear-magneton-in-K-T) := $nuclear-magneton-in-K-T;

my $nuclear-magneton-in-MHz-T := Measure.new(
  value => 7.6225932291 × 1e6,
  error => 0.0000000023 × 1e6,
  units => 'Hz⋅T⁻¹'
);
constant \nuclear-magneton-in-MHz-T is export(:nuclear-magneton-in-MHz-T) := $nuclear-magneton-in-MHz-T;

my $planck-length := Measure.new(
  value => 1.616255e-35,
  error => 0.000018e-35,
  units => 'm',
);
constant \planck-length is export(:DEFAULT :planck-length) := $planck-length;
constant \lp            is export(:DEFAULT :lp)            := $planck-length;

my $planck-mass := Measure.new(
  value => 2.176434e-8,
  error => 0.000024e-8,
  units => 'kg',
);
constant \planck-mass is export(:DEFAULT :planck-mass) := $planck-mass;
constant \mp          is export(:DEFAULT :mp)          := $planck-mass;

my $planck-mass-energy-equivalent-in-GeV := Measure.new(
  value => 1.220890e19,
  error => 0.000014e19,
  units => 'GeV'
);
constant \planck-mass-energy-equivalent-in-GeV is export(:planck-mass-energy-equivalent-in-GeV) := $planck-mass-energy-equivalent-in-GeV;

my $planck-temperature := Measure.new(
  value => 1.416784e32,
  error => 0.000016e32,
  units => 'K',
);
constant \planck-temperature is export(:DEFAULT :planck-temperature) := $planck-temperature;
constant \Tp                 is export(:DEFAULT :Tp)                 := planck-temperature;

my $planck-time := Measure.new(
  value => 5.391247e-44,
  error => 0.000060e-44,
  units => 's',
);
constant \planck-time is export(:DEFAULT :planck-time) := $planck-time;
constant \tp          is export(:DEFAULT :tp)          := planck-time;

my $proton-charge-to-mass-quotient := Measure.new(
  value => 9.5788331560e7,
  error => 0.0000000029e7,
  units => 'C⋅kg⁻¹'
);
constant \proton-charge-to-mass-quotient is export(:proton-charge-to-mass-quotient) := $proton-charge-to-mass-quotient;

my $proton-compton-wavelength := Measure.new(
  value => 1.32140985539e-15,
  error => 0.00000000040e-15,
  units => 'm'
);
constant \proton-compton-wavelength is export(:proton-compton-wavelength) := $proton-compton-wavelength;

my $proton-electron-mass-ratio := Measure.new(
  value => 1836.15267343,
  error =>    0.00000011,
  units => '①'
);
constant \proton-electron-mass-ratio is export(:proton-electron-mass-ratio) := $proton-electron-mass-ratio;

my $proton-g-factor := Measure.new(
  value => 5.5856946893,
  error => 0.0000000016,
  units => '①'
);
constant \proton-g-factor is export(:proton-g-factor) := $proton-g-factor;

my $proton-gyromag-ratio := Measure.new(
  value => 2.6752218744e8,
  error => 0.0000000011e8,
  units => 's⁻¹⋅T⁻¹'
);
constant \proton-gyromag-ratio is export(:proton-gyromag-ratio) := $proton-gyromag-ratio;

my $proton-gyromag-ratio-in-MHz-T := Measure.new(
  value => 42.577478518 × 1e6,
  error =>  0.000000018 × 1e6,
  units => 'Hz⋅T⁻¹'
);
constant \proton-gyromag-ratio-in-MHz-T is export(:proton-gyromag-ratio-in-MHz-T) := $proton-gyromag-ratio-in-MHz-T;

my $proton-mag-mom := Measure.new(
  value => 1.41060679736e-26,
  error => 0.00000000060e-26,
  units => 'J⋅T⁻¹'
);
constant \proton-mag-mom is export(:proton-mag-mom) := $proton-mag-mom;

my $proton-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => 1.52103220230e-3,
  error => 0.00000000046e-3,
  units => '①'
);
constant \proton-mag-mom-to-bohr-magneton-ratio is export(:proton-mag-mom-to-bohr-magneton-ratio) := $proton-mag-mom-to-bohr-magneton-ratio;

my $proton-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => 2.79284734463,
  error => 0.00000000082,
  units => '①'
);
constant \proton-mag-mom-to-nuclear-magneton-ratio is export(:proton-mag-mom-to-nuclear-magneton-ratio) := $proton-mag-mom-to-nuclear-magneton-ratio;

my $proton-mag-shielding-correction := Measure.new(
  value => 2.5689e-5,
  error => 0.0011e-5,
  units => '①'
);
constant \proton-mag-shielding-correction is export(:proton-mag-shielding-correction) := $proton-mag-shielding-correction;

my $proton-mass := Measure.new(
  value => 1.67262192369e-27,
  error => 0.00000000051e-27,
  units => 'kg'
);
constant \proton-mass is export(:DEFAULT :proton-mass) := $proton-mass;

my $proton-mass-energy-equivalent := Measure.new(
  value => 1.50327761598e-10,
  error => 0.00000000046e-10,
  units => 'J'
);
constant \proton-mass-energy-equivalent is export(:proton-mass-energy-equivalent) := $proton-mass-energy-equivalent;

my $proton-mass-energy-equivalent-in-MeV := Measure.new(
  value => 938.27208816,
  error =>   0.00000029,
  units => 'MeV'
);
constant \proton-mass-energy-equivalent-in-MeV is export(:proton-mass-energy-equivalent-in-MeV) := $proton-mass-energy-equivalent-in-MeV;

my $proton-mass-in-u := Measure.new(
  value => 1.007276466621,
  error => 0.000000000053,
  units => 'u'
);
constant \proton-mass-in-u is export(:proton-mass-in-u) := $proton-mass-in-u;

my $proton-molar-mass := Measure.new(
  value => 1.00727646627e-3,
  error => 0.00000000031e-3,
  units => 'kg⋅mol⁻¹'
);
constant \proton-molar-mass is export(:proton-molar-mass) := $proton-molar-mass;

my $proton-muon-mass-ratio := Measure.new(
  value => 8.88024337,
  error => 0.00000020,
  units => '①'
);
constant \proton-muon-mass-ratio is export(:proton-muon-mass-ratio) := $proton-muon-mass-ratio;

my $proton-neutron-mag-mom-ratio := Measure.new(
  value => 0.99862347812,
  error => 0.00000000049,
  units => '①'
);
constant \proton-neutron-mag-mom-ratio is export(:proton-neutron-mag-mom-ratio) := $proton-neutron-mag-mom-ratio;

my $proton-relative-atomic-mass := Measure.new(
  value => 1.007276466621,
  error => 0.000000000053,
  units => '①'
);
constant \proton-relative-atomic-mass is export(:proton-relative-atomic-mass) := $proton-relative-atomic-mass;

my $proton-rms-charge-radius := Measure.new(
  value => 8.414e-16,
  error => 0.019e-16,
  units => 'm'
);
constant \proton-rms-charge-radius is export(:proton-rms-charge-radius) := $proton-rms-charge-radius;

my $proton-tau-mass-ratio := Measure.new(
  value => 0.528051,
  error => 0.000036,
  units => '①'
);
constant \proton-tau-mass-ratio is export(:proton-tau-mass-ratio) := $proton-tau-mass-ratio;

my $quantum-of-circulation := Measure.new(
  value => 3.6369475516e-4,
  error => 0.0000000011e-4,
  units => 'm²⋅s⁻¹'
);
constant \quantum-of-circulation is export(:quantum-of-circulation) := $quantum-of-circulation;

my $quantum-of-circulation-times_2 := Measure.new(
  value => 7.2738951032e-4,
  error => 0.0000000022e-4,
  units => 'm²⋅s⁻¹'
);
constant \quantum-of-circulation-times_2 is export(:quantum-of-circulation-times_2) := $quantum-of-circulation-times_2;

my $reduced-compton-wavelength := Measure.new(
  value => 3.8615926796e-13,
  error => 0.0000000012e-13,
  units => 'm'
);
constant \reduced-compton-wavelength is export(:reduced-compton-wavelength) := $reduced-compton-wavelength;

my $reduced-muon-compton-wavelength := Measure.new(
  value => 1.867594306e-15,
  error => 0.000000042e-15,
  units => 'm'
);
constant \reduced-muon-compton-wavelength is export(:reduced-muon-compton-wavelength) := $reduced-muon-compton-wavelength;

my $reduced-neutron-compton-wavelength := Measure.new(
  value => 2.1001941552e-16,
  error => 0.0000000012e-16,
  units => 'm'
);
constant \reduced-neutron-compton-wavelength is export(:reduced-neutron-compton-wavelength) := $reduced-neutron-compton-wavelength;

my $reduced-proton-compton-wavelength := Measure.new(
  value => 2.10308910336e-16,
  error => 0.00000000064e-16,
  units => 'm'
);
constant \reduced-proton-compton-wavelength is export(:reduced-proton-compton-wavelength) := $reduced-proton-compton-wavelength;

my $reduced-tau-compton-wavelength := Measure.new(
  value => 1.110538e-16,
  error => 0.000075e-16,
  units => 'm'
);
constant \reduced-tau-compton-wavelength is export(:reduced-tau-compton-wavelength) := $reduced-tau-compton-wavelength;

my $rydberg-constant := Measure.new(
  value => 10973731.568160,
  error =>        0.000021,
  units => 'm⁻¹'
);
constant \rydberg-constant is export(:rydberg-constant) := $rydberg-constant;

my $rydberg-constant-times-c-in-Hz := Measure.new(
  value => 3.2898419602508e+15,
  error => 0.0000000000064e15,
  units => 'Hz'
);
constant \rydberg-constant-times-c-in-Hz is export(:rydberg-constant-times-c-in-Hz) := $rydberg-constant-times-c-in-Hz;

my $rydberg-constant-times-hc-in-eV := Measure.new(
  value => 13.605693122994,
  error =>  0.000000000026,
  units => 'eV'
);
constant \rydberg-constant-times-hc-in-eV is export(:rydberg-constant-times-hc-in-eV) := $rydberg-constant-times-hc-in-eV;

my $rydberg-constant-times-hc-in-J := Measure.new(
  value => 2.1798723611035e-18,
  error => 0.0000000000042e-18,
  units => 'J'
);
constant \rydberg-constant-times-hc-in-J is export(:rydberg-constant-times-hc-in-J) := $rydberg-constant-times-hc-in-J;

my $sackur-tetrode-constant_1-K_100-kPa := Measure.new(
  value => -1.15170753706,
  error =>  0.00000000045,
  units => '①'
);
constant \sackur-tetrode-constant_1-K_100-kPa is export(:sackur-tetrode-constant_1-K_100-kPa) := $sackur-tetrode-constant_1-K_100-kPa;

my $sackur-tetrode-constant_1-K_101325-kPa := Measure.new(
  value => -1.16487052358,
  error =>  0.00000000045,
  units => '①'
);
constant \sackur-tetrode-constant_1-K_101325-kPa is export(:sackur-tetrode-constant_1-K_101325-kPa) := $sackur-tetrode-constant_1-K_101325-kPa;

my $shielded-helion-gyromag-ratio := Measure.new(
  value => 2.037894569e8,
  error => 0.000000024e8,
  units => 's⁻¹⋅T⁻¹'
);
constant \shielded-helion-gyromag-ratio is export(:shielded-helion-gyromag-ratio) := $shielded-helion-gyromag-ratio;

my $shielded-helion-gyromag-ratio-in-MHz-T := Measure.new(
  value => 32.43409942 × 1e6,
  error =>  0.00000038 × 1e6,
  units => 'Hz⋅T⁻¹'
);
constant \shielded-helion-gyromag-ratio-in-MHz-T is export(:shielded-helion-gyromag-ratio-in-MHz-T) := $shielded-helion-gyromag-ratio-in-MHz-T;

my $shielded-helion-mag-mom := Measure.new(
  value => -1.074553090e-26,
  error =>  0.000000013e-26,
  units => 'J⋅T⁻¹'
);
constant \shielded-helion-mag-mom is export(:shielded-helion-mag-mom) := $shielded-helion-mag-mom;

my $shielded-helion-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => -1.158671471e-3,
  error =>  0.000000014e-3,
  units => '①'
);
constant \shielded-helion-mag-mom-to-bohr-magneton-ratio is export(:shielded-helion-mag-mom-to-bohr-magneton-ratio) := $shielded-helion-mag-mom-to-bohr-magneton-ratio;

my $shielded-helion-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => -2.127497719,
  error =>  0.000000025,
  units => '①'
);
constant \shielded-helion-mag-mom-to-nuclear-magneton-ratio is export(:shielded-helion-mag-mom-to-nuclear-magneton-ratio) := $shielded-helion-mag-mom-to-nuclear-magneton-ratio;

my $shielded-helion-to-proton-mag-mom-ratio := Measure.new(
  value => -0.7617665618,
  error =>  0.0000000089,
  units => '①'
);
constant \shielded-helion-to-proton-mag-mom-ratio is export(:shielded-helion-to-proton-mag-mom-ratio) := $shielded-helion-to-proton-mag-mom-ratio;

my $shielded-helion-to-shielded-proton-mag-mom-ratio := Measure.new(
  value => -0.7617861313,
  error =>  0.0000000033,
  units => '①'
);
constant \shielded-helion-to-shielded-proton-mag-mom-ratio is export(:shielded-helion-to-shielded-proton-mag-mom-ratio) := $shielded-helion-to-shielded-proton-mag-mom-ratio;

my $shielded-proton-gyromag-ratio := Measure.new(
  value => 2.675153151e8,
  error => 0.000000029e8,
  units => 's⁻¹⋅T⁻¹'
);
constant \shielded-proton-gyromag-ratio is export(:shielded-proton-gyromag-ratio) := $shielded-proton-gyromag-ratio;

my $shielded-proton-gyromag-ratio-in-MHz-T := Measure.new(
  value => 42.57638474 × 1e6,
  error =>  0.00000046 × 1e6,
  units => 'Hz⋅T⁻¹'
);
constant \shielded-proton-gyromag-ratio-in-MHz-T is export(:shielded-proton-gyromag-ratio-in-MHz-T) := $shielded-proton-gyromag-ratio-in-MHz-T;

my $shielded-proton-mag-mom := Measure.new(
  value => 1.410570560e-26,
  error => 0.000000015e-26,
  units => 'J⋅T⁻¹'
);
constant \shielded-proton-mag-mom is export(:shielded-proton-mag-mom) := $shielded-proton-mag-mom;

my $shielded-proton-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => 1.520993128e-3,
  error => 0.000000017e-3,
  units => '①'
);
constant \shielded-proton-mag-mom-to-bohr-magneton-ratio is export(:shielded-proton-mag-mom-to-bohr-magneton-ratio) := $shielded-proton-mag-mom-to-bohr-magneton-ratio;

my $shielded-proton-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => 2.792775599,
  error => 0.000000030,
  units => '①'
);
constant \shielded-proton-mag-mom-to-nuclear-magneton-ratio is export(:shielded-proton-mag-mom-to-nuclear-magneton-ratio) := $shielded-proton-mag-mom-to-nuclear-magneton-ratio;

my $shielding-difference-of-d-and-p-in-HD := Measure.new(
  value => 2.0200e-8,
  error => 0.0020e-8,
  units => '①'
);
constant \shielding-difference-of-d-and-p-in-HD is export(:shielding-differenec-of-d-and-p-in-HD) := $shielding-difference-of-d-and-p-in-HD;

my $shielding-difference-of-t-and-p-in-HT := Measure.new(
  value => 2.4140e-8,
  error => 0.0020e-8,
  units => '①'
);
constant \shielding-difference-of-t-and-p-in-HT is export(:shielding-difference-of-t-and-o-in-HT) := $shielding-difference-of-t-and-p-in-HT;

my $tau-compton-wavelength := Measure.new(
  value => 6.97771e-16,
  error => 0.00047e-16,
  units => 'm'
);
constant \tau-compton-wavelength is export(:tau-compton-wavelength) := $tau-compton-wavelength;

my $tau-electron-mass-ratio := Measure.new(
  value => 3477.23,
  error =>    0.23,
  units => '①'
);
constant \tau-electron-mass-ratio is export(:tau-electron-mass-ratio) := $tau-electron-mass-ratio;

my $tau-energy-equivalent := Measure.new(
  value => 1776.86,
  error =>    0.12,
  units => 'MeV'
);
constant \tau-energy-equivalent is export(:tau-energy-equivalent) := $tau-energy-equivalent;

my $tau-mass := Measure.new(
  value => 3.16754e-27,
  error => 0.00021e-27,
  units => 'kg'
);
constant \tau-mass is export(:tau-mass) := $tau-mass;

my $tau-mass-energy-equivalent := Measure.new(
  value => 2.84684e-10,
  error => 0.00019e-10,
  units => 'J'
);
constant \tau-mass-energy-equivalent is export(:tau-mass-energy-equivalent) := $tau-mass-energy-equivalent;

my $tau-mass-in-u := Measure.new(
  value => 1.90754,
  error => 0.00013,
  units => 'u'
);
constant \tau-mass-in-u is export(:tau-mass-in-u) := $tau-mass-in-u;

my $tau-molar-mass := Measure.new(
  value => 1.90754e-3,
  error => 0.00013e-3,
  units => 'kg⋅mol⁻¹'
);
constant \tau-molar-mass is export(:tau-molar-mass) := $tau-molar-mass;

my $tau-muon-mass-ratio := Measure.new(
  value => 16.8170,
  error =>  0.0011,
  units => '①'
);
constant \tau-muon-mass-ratio is export(:tau-muon-mass-ratio) := $tau-muon-mass-ratio;

my $tau-neutron-mass-ratio := Measure.new(
  value => 1.89115,
  error => 0.00013,
  units => '①'
);
constant \tau-neutron-mass-ratio is export(:tau-neutron-mass-ratio) := $tau-neutron-mass-ratio;

my $tau-proton-mass-ratio := Measure.new(
  value => 1.89376,
  error => 0.00013,
  units => '①'
);
constant \tau-proton-mass-ratio is export(:tau-proton-mass-ratio) := $tau-proton-mass-ratio;

my $thomson-cross-section := Measure.new(
  value => 6.6524587321e-29,
  error => 0.0000000060e-29,
  units => 'm²'
);
constant \thomson-cross-section is export(:thomson-cross-section) := $thomson-cross-section;

my $triton-electron-mass-ratio := Measure.new(
  value => 5496.92153573,
  error =>    0.00000027,
  units => '①'
);
constant \triton-electron-mass-ratio is export(:triton-electron-mass-ratio) := $triton-electron-mass-ratio;

my $triton-g-factor := Measure.new(
  value => 5.957924931,
  error => 0.000000012,
  units => '①'
);
constant \triton-g-factor is export(:triton-g-factor) := $triton-g-factor;

my $triton-mag-mom := Measure.new(
  value => 1.5046095202e-26,
  error => 0.0000000030e-26,
  units => 'J⋅T⁻¹'
);
constant \triton-mag-mom is export(:triton-mag-mom) := $triton-mag-mom;

my $triton-mag-mom-to-bohr-magneton-ratio := Measure.new(
  value => 1.6223936651e-3,
  error => 0.0000000032e-3,
  units => '①'
);
constant \triton-mag-mom-to-bohr-magneton-ratio is export(:triton-mag-mom-to-bohr-magneton-ratio) := $triton-mag-mom-to-bohr-magneton-ratio;

my $triton-mag-mom-to-nuclear-magneton-ratio := Measure.new(
  value => 2.9789624656,
  error => 0.0000000059,
  units => '①'
);
constant \triton-mag-mom-to-nuclear-magneton-ratio is export(:triton-mag-momk-to-nuclear-magneton-ratio) := $triton-mag-mom-to-nuclear-magneton-ratio;

my $triton-mass := Measure.new(
  value => 5.0073567446e-27,
  error => 0.0000000015e-27,
  units => 'kg'
);
constant \triton-mass is export(:triton-mass) := $triton-mass;

my $triton-mass-energy-equivalent := Measure.new(
  value => 4.5003878060e-10,
  error => 0.0000000014e-10,
  units => 'J'
);
constant \triton-mass-energy-equivalent is export(:triton-mass-energy-equivalent) := $triton-mass-energy-equivalent;

my $triton-mass-energy-equivalent-in-MeV := Measure.new(
  value => 2808.92113298,
  error =>    0.00000085,
  units => 'MeV'
);
constant \triton-mass-energy-equivalent-in-MeV is export(:triton-mass-energy-equivalent-in-MeV) := $triton-mass-energy-equivalent-in-MeV;

my $triton-mass-in-u := Measure.new(
  value => 3.01550071621,
  error => 0.00000000012,
  units => 'u'
);
constant \triton-mass-in-u is export(:triton-mass-in-u) := $triton-mass-in-u;

my $triton-molar-mass := Measure.new(
  value => 3.01550071517e-3,
  error => 0.00000000092e-3,
  units => 'kg⋅mol⁻¹'
);
constant \triton-molar-mass is export(:triton-molar-mass) := $triton-molar-mass;

my $triton-proton-mass-ratio := Measure.new(
  value => 2.99371703414,
  error => 0.00000000015,
  units => '①'
);
constant \triton-proton-mass-ratio is export(:triton-proton-mass-ratio) := $triton-proton-mass-ratio;

my $triton-relative-atomic-mass := Measure.new(
  value => 3.01550071621,
  error => 0.00000000012,
  units => '①'
);
constant \triton-relative-atomic-mass is export(:triton-relative-atomic-mass) := $triton-relative-atomic-mass;

my $triton-to-proton-mag-mom-ratio := Measure.new(
  value => 1.0666399191,
  error => 0.0000000021,
  units => '①'
);
constant \triton-to-proton-mag-mom-ratio is export(:triton-to-proton-mag-mom-ratio) := $triton-to-proton-mag-mom-ratio;

my $unified-atomic-mass-unit := Measure.new(
  value => 1.66053906660e-27,
  error => 0.00000000050e-27,
  units => 'kg'
);
constant \unified-atomic-mass-unit is export(:unified-atomic-mass-unit) := $unified-atomic-mass-unit;

my $vacuum-electric-permittivity := Measure.new(
  value => 8.8541878128e-12,
  error => 0.0000000013e-12,
  units => 'F⋅m⁻¹',
);
constant \vacuum-electric-permittivity is export(:vacuum-electric-permittivity) := $vacuum-electric-permittivity;
constant \vacuum-permittivity          is export(:DEFAULT :vacuum-permittivity) := $vacuum-electric-permittivity;
constant \ε0                           is export(:DEFAULT :ε0)                  := $vacuum-electric-permittivity;

my $vacuum-mag-permeability := Measure.new(
  value => 1.25663706212e-6,
  error => 0.00000000019e-6,
  units => 'N⋅A⁻²',
);
constant \vacuum-mag-permeability is export(:vacuum-mag-permeability)        := $vacuum-mag-permeability;
constant \magnetic-permeability   is export(:DEFAULT :magnetic-permeability) := $vacuum-mag-permeability;
constant \vacuum-permeability     is export(:DEFAULT :vacuum-permeability)   := $vacuum-mag-permeability;
constant \μ0                      is export(:DEFAULT :μ0)                    := $vacuum-mag-permeability;

my $weak-mixing-angle := Measure.new(
  value => 0.22290,
  error => 0.00030,
  units => '①'
);
constant \weak-mixing-angle is export(:weak-mixing-angle) := $weak-mixing-angle;

my $w-to-z-mass-ratio := Measure.new(
  value => 0.88153,
  error => 0.00017,
  units => '①'
);
constant \w-to-z-mass-ratio is export(:w-t-z-mass-ratio) := $w-to-z-mass-ratio;
