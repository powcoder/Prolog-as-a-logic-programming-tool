
company(Appy).
company(SumSum).


owns(SumSum, Galactica-S3)
smart_phone_technology(Galactica-S3)
competitor(Appy, SumSum)
steal(Appy, Galactica-S3)
boss(Stevey, Appy)
∀x ∀y competitor(x, y) → rival(x, y)
∀x (smart_phone_technology(x)) → business(x) 
∀b ∀x ∀y ∀z boss(x, b) Λ business(y) Λ steal(x, y) Λ owns(z, y) Λ rival(b, z) → unethical(x)


owns(sumSum, galacticaS3)
smart_phone_technology(galacticaS3)
competitor(appy, sumSum)
steal(Appy, galacticaS3)
boss(stevey, appy)
rival(X, Y):- competitor(X, Y).
business(X):- smart_phone_technology(X).
unethical(X):-
	boss(X, B),
	business(Y),
	steal(X, Y),
	owns(z, y),
	rival(b, z).




#######################################################
# Preliminaries.  You shouldn't need to modify anything
# in this section
#
# an empty type
Zero :: *
 = ∀α.α;

# Equality and inequality
Eq :: * ⇒ * ⇒ * = λα.λβ.∀φ::*⇒*.φ α → φ β;
Neq :: * ⇒ * ⇒ * = λα.λβ.Eq α β → Zero;

# Equality is reflexive, symmetric, and transitive
refl : ∀α.Eq α α
  = Λα.Λφ::*⇒*.λx:φ α.x;
symm : ∀α.∀β.Eq α β → Eq β α
  = Λα::*.Λβ::*.λe:(∀φ::* ⇒ *.φ α → φ β).e [λX::*.Eq X α] (refl [α]);
trans : ∀α.∀β.∀γ.Eq α β → Eq β γ → Eq α γ
  = ΛA::*.ΛB::*.ΛC::*.λab:Eq A B.λbc:Eq B C. bc [Eq A] ab;

# The type with one inhabitant.
Unit :: * = ∀α.α → α;
unit : Unit = Λα.λx:α.x;

# Type-level natural numbers: zero and successor
Z :: * = Zero;
S :: * ⇒ * = λX.X+Unit;

# Logical negation
Not :: * ⇒ * =
 λA.A → Zero;

# Pred M N means that M is the predecessor of N
Pred :: * ⇒ * ⇒ * = λM.λN.Eq (S M) N;

# Zero is not the successor of any number
sz_distinct : ∀N.Neq (S N) Z = ΛN.λeq:Eq (S N) Z. eq [λX.X] (inr [N] unit);

# An axiom: successor is injective
eq_pred : ∀M.∀N.Eq (S M) (S N) → Eq M N;

#
# (end of preliminaries)
#######################################################


# De Morgan's laws
DM1 = ∀α.∀β.Not (α × β) → (Not α + Not β);
DM2 = ∀α.∀β.(Not α + Not β) → Not (α × β);
DM3 = ∀α.∀β.Not (α + β) → (Not α × Not β);
DM4 = ∀α.∀β.(Not α × Not β) → Not (α + β);

# 2(a) define three of the four terms dm1, dm2, dm3 and dm4
#      and explain why the fourth cannot be defined
dm1 : DM1;
dm2 : DM2 = Λα.Λβ.λd: (Not α + Not β).λc: α × β.case d of x.x (@1 c) | y.y (@2 c);
dm3 : DM3 = Λα.Λβ. λc:Not (α + β).< λp:α.c (inl [β] p),  λq:β.c (inr [α] q)>;
dm4 : DM4 = Λα.Λβ.λc: (Not α × Not β).λd: α + β.case d of x.@1 c x | y.@2 c y;

# dm1 can not be defined. Because we can't construct a instance of type α → Zero or
# β → Zero using Not (α × β).

# 2(b)(i) add types DM6, DM7 and DM8 that are analogous to DM2, DM3 and DM4
#         but use quantifiers (like DM5) rather than sum and product types 
DM5 :: *
  = ∀φ::*⇒*.Not (∀α.φ α) → (∃α.Not (φ α));

DM6 :: *
  = ∀φ::*⇒*.(∃α.Not (φ α)) → Not (∀α.φ α)  ;

DM7 :: *
  = ∀φ::*⇒*.Not (∃α.φ α) → (∀α.Not (φ α));

DM8 :: *
  = ∀φ::*⇒*.(∀α.Not (φ α)) → Not (∃α.φ α);

# 2(b)(ii) for each of dm5-dm8, either define the term or explain
#          why it cannot be defined.
dm5 : DM5;
dm6 : DM6;
dm7 : DM7;
# dm7 : DM7 = Λφ::*⇒*.x:Not (∃α.φ α) → x;
dm8 : DM8;

# A type of vectors (length-indexed sequences)
Vec :: * ⇒ * ⇒ * = λα.λM.∀φ::*⇒*.φ Z → (∀N.α → φ N → φ (S N)) → φ M;

# 3(a): define the constructors nil and cons.
nil :  ∀α.Vec α Z
   = Λα.Λφ::*⇒*.λx: φ Z.λy:(∀N.α → φ N → φ (S N)).x;

cons : ∀α.∀M.α → Vec α M → Vec α (S M)
   = Λα.ΛM.λx:α.λl:(Vec α M).Λφ::*⇒*.λn:(φ Z).λc:(∀N.α → φ N → φ (S N)).c [M] x (l [φ] n c);


# 3(b): define the head function

head : ∀α.∀M.Vec α (S M) → α;

# head : ∀α.∀M.Vec α (S M) → α
#   = Λα.ΛM.λl:(Vec α (S M)).l [(λT.α+Unit)] (inr [α] unit) (ΛN.λx:α.λy:(α+Unit).(inl [Unit] x));
          
# 3(c): define the tail function
tail : ∀α.∀M.Vec α (S M) → Vec α M;


# 3(d): define the map function
map : ∀α.∀β.∀M.(α → β) → Vec α M → Vec β M
    = Λα.Λβ.ΛM.λf:α → β.λl:(Vec α M).l [Vec β] (nil [β]) (ΛN.λx:α.λy:(Vec β N).(cons [β] [N] (f x) y));


