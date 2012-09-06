.class public Lcom/google/android/maps/driveabout/vector/dy;
.super Lcom/google/android/maps/driveabout/vector/db;
.source "SourceFile"


# instance fields
.field private d:F

.field private e:Z


# direct methods
.method constructor <init>(Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIZZZZZ)V
    .registers 30
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual/range {p1 .. p1}, Lw/e;->a()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v2

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/db;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V

    .line 15
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/dy;->e:Z

    .line 31
    const/high16 v1, 0x41f0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/maps/driveabout/vector/dy;->d:F

    .line 32
    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/dy;->d:F

    .line 70
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dy;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    .line 57
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dy;->e:Z

    if-eqz v0, :cond_11

    .line 58
    invoke-super {p0, p2, p1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    .line 60
    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 65
    :goto_14
    return-void

    .line 63
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dy;->b:Z

    goto :goto_14
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dy;->d:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dy;->e:Z

    .line 47
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v0

    .line 50
    :goto_12
    return v0

    .line 49
    :cond_13
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dy;->e:Z

    goto :goto_12
.end method

.method protected v_()Lcom/google/android/maps/driveabout/vector/cw;
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cw;->i:Lcom/google/android/maps/driveabout/vector/cw;

    return-object v0
.end method
