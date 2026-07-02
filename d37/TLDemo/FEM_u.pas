unit FEM_u;

interface

uses
  Variables_u;

procedure BuildMatrixBeamK(K: TFloatMatrix; OI, OJ: Integer; E, J, Lp: Double);
procedure BuildMatrixBeamM(M: TFloatMatrix; OI, OJ: Integer; Ro, A, Lp: Double);
procedure BuildMatrixB(B, M, K: TFloatMatrix; Alfa, Beta: Double);
procedure BeamAprox(X, Lp: Double; var A1, A2, A3, A4: Double);

implementation

uses
  Math, Vassbotn.Vcl.Complex, Math_u;

procedure BuildMatrixBeamK(K: TFloatMatrix; OI, OJ: Integer; E, J, Lp: Double);
var
  Km: Double;
  Kp: TSingle2D;
  I: Integer;
begin
  Km := E * J / Power(Lp, 3.0);
  SetLength(Kp, 4, 4);
  Kp[0, 0] := 12.0 * Km;
  Kp[0, 1] := 6.0 * Km * Lp;
  Kp[1, 0] := Kp[0, 1];
  Kp[0, 2] := -12.0 * Km;
  Kp[2, 0] := Kp[0, 2];
  Kp[0, 3] := 6.0 * Km * Lp;
  Kp[3, 0] := Kp[0, 3];
  Kp[1, 1] := 4.0 * Km * Lp * Lp;
  Kp[1, 2] := -6.0 * Km * Lp;
  Kp[2, 1] := Kp[1, 2];
  Kp[1, 3] := 2.0 * Km * Lp * Lp;
  Kp[3, 1] := Kp[1, 3];
  Kp[2, 2] := 12.0 * Km;
  Kp[2, 3] := -6.0 * Km * Lp;
  Kp[3, 2] := Kp[2, 3];
  Kp[3, 3] := 4.0 * Km * Lp * Lp;
  for I := 0 to 9 do
    K.AddSubMatrix(2 * I + OI, 2 * I + OJ, Kp);
  Kp := nil;
end;

procedure BuildMatrixBeamM(M: TFloatMatrix; OI, OJ: Integer; Ro, A, Lp: Double);
var
  Mm: Double;
  Mp: TSingle2D;
  I: Integer;
begin
  Mm := Ro * A * Lp / 420.0;
  SetLength(Mp, 4, 4);
  Mp[0, 0] := 156.0 * Mm;
  Mp[0, 1] := 22.0 * Lp * Mm;
  Mp[1, 0] := Mp[0, 1];
  Mp[0, 2] := 54.0 * Mm;
  Mp[2, 0] := Mp[0, 2];
  Mp[0, 3] := -13.0 * Lp * Mm;
  Mp[3, 0] := Mp[0, 3];
  Mp[1, 1] := 4.0 * Lp * Lp * Mm;
  Mp[1, 2] := 13.0 * Lp * Mm;
  Mp[2, 1] := Mp[1, 2];
  Mp[1, 3] := -3.0 * Lp * Lp * Mm;
  Mp[3, 1] := Mp[1, 3];
  Mp[2, 2] := 156.0 * Mm;
  Mp[2, 3] := -22.0 * Lp * Mm;
  Mp[3, 2] := Mp[2, 3];
  Mp[3, 3] := 4.0 * Lp * Lp * Mm;
  for I := 0 to 9 do
    M.AddSubMatrix(2 * I + OI, 2 * I + OJ, Mp);
  Mp := nil;
end;

procedure BuildMatrixB(B, M, K: TFloatMatrix; Alfa, Beta: Double);
var
  NI, NJ: LongWord;
  I, J: LongWord;
  BMx: TComplex2D;
begin
  NI := B.MCount.Rows;
  if NI = 0 then
    Exit;
  NJ := B.MCount.Cols;
  if NJ = 0 then
    Exit;
  if (M.MCount.Rows <> NI) or (M.MCount.Cols <> NJ) or (K.MCount.Rows <> NI) or
    (K.MCount.Cols <> NJ) then
    Exit;
  SetLength(BMx, NI, NJ);
  try
    for I := 0 to NI - 1 do
      for J := 0 to NJ - 1 do
        BMx[I, J] := Alfa * M[I, J] + Beta * K[I, J];
    B.SetComplexSubMatrix(0, 0, BMx);
  finally
    BMx := nil;
  end;
end;

procedure BeamAprox(X, Lp: Double; var A1, A2, A3, A4: Double);
var
  X2, X3  : Double;
  Lp2, LP3: Double;
begin
  X2 := X * X;
  X3 := X2 * X;
  Lp2 := Lp * Lp;
  Lp3 := Lp2 * Lp;
  A1 := 1.0 - 3.0 * X2 / Lp2 + 2.0 * X3 / Lp3;
  A2 := X - 2.0 * X2 / Lp + X3 / Lp2;
  A3 := 3.0 * X2 / Lp2 - 2.0 * X3 / Lp3;
  A4 := -X2 / Lp + X3 / Lp2;
end;

end.
