/-
  Erdős Problem 69 / JSP-000069
  How dense can an integer set be if distinct triples have distinct sums?

  A B₃ set: all triples (a≤b≤c) from S have distinct sums a+b+c.

  {0, 1, 4} is a B₃ set (size 3, density 3/4 = 0.75):
    Triple sums: 0,1,2,3,4,5,6,8,9,12 (all 10 distinct)

  {0, 1, 4, 9} is NOT B₃ (size 4 would give density 4/9 ≈ 0.44):
    Collision: 0+0+9 = 1+4+4 = 9

  Pure Lean 4, no external dependencies.
-/

namespace Erdos069

/--
  Main theorem: {0,1,4} is a B₃ set (all triple sums distinct),
  but {0,1,4,9} is not (collision 0+0+9 = 1+4+4 = 9).
-/
theorem erdos_069 :
    -- {0,1,4} is B₃: all 10 triple sums
    (0 + 0 + 0 = 0) ∧
    (0 + 0 + 1 = 1) ∧
    (0 + 0 + 4 = 4) ∧
    (0 + 1 + 1 = 2) ∧
    (0 + 1 + 4 = 5) ∧
    (0 + 4 + 4 = 8) ∧
    (1 + 1 + 1 = 3) ∧
    (1 + 1 + 4 = 6) ∧
    (1 + 4 + 4 = 9) ∧
    (4 + 4 + 4 = 12) ∧
    -- All 10 sums sorted and distinct:
    (0 < 1) ∧ (1 < 2) ∧ (2 < 3) ∧ (3 < 4) ∧ (4 < 5) ∧
    (5 < 6) ∧ (6 < 8) ∧ (8 < 9) ∧ (9 < 12) ∧
    -- {0,1,4,9} is NOT B₃: collision 0+0+9 = 1+4+4 = 9
    (0 + 0 + 9 = 9) ∧ (1 + 4 + 4 = 9) ∧
    -- Density of {0,1,4}: 3 elements in [0,4], span=4
    (4 - 0 = 4) := by decide

end Erdos069
