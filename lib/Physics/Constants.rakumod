unit module Physics::Constants;

use Physics::Unit;
use Physics::Measure;

constant \avogadro-constant is export(:DEFAULT, :fundamental, :avogadro-constant) = Measure.new(
  value => 6.02214076e+23, 
  error => 0, 
  units => 'mol⁻¹',
);

constant \kg-amu is export(:DEFAULT, :fundamental, :kg-amu) := avogadro-constant;
