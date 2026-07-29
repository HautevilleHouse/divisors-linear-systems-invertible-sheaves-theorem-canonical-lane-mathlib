import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisorsLinearSystemsInvertibleSheavesTheorem

structure RiemannRochPackage {D : DivisorPackage} {L : LinearSystemPackage D} {I : InvertibleSheafPackage D} where
  eulerCharacteristic : ℤ
  sheafCohomology : Prop
  serreDuality : Prop
  riemannRochFormula : Prop
  dimensionFormula : Prop

structure RiemannRochEvidence {D : DivisorPackage} {L : LinearSystemPackage D} {I : InvertibleSheafPackage D}
    (R : RiemannRochPackage D L I) where
  sheafCohomologyClosed : R.sheafCohomology
  serreDualityClosed : R.serreDuality
  riemannRochFormulaClosed : R.riemannRochFormula
  dimensionFormulaClosed : R.dimensionFormula

def RiemannRochClosed {D : DivisorPackage} {L : LinearSystemPackage D} {I : InvertibleSheafPackage D}
    (R : RiemannRochPackage D L I) : Prop :=
  R.sheafCohomology ∧ R.serreDuality ∧ R.riemannRochFormula ∧ R.dimensionFormula

theorem riemann_roch_closed_from_evidence
    {D : DivisorPackage} {L : LinearSystemPackage D} {I : InvertibleSheafPackage D}
    (R : RiemannRochPackage D L I) (E : RiemannRochEvidence R) : RiemannRochClosed R := by
  exact And.intro E.sheafCohomologyClosed
    (And.intro E.serreDualityClosed
      (And.intro E.riemannRochFormulaClosed E.dimensionFormulaClosed))

end DivisorsLinearSystemsInvertibleSheavesTheorem
end HautevilleHouse
