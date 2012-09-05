.class public Lcom/google/android/maps/driveabout/vector/cM;
.super Lcom/google/android/maps/driveabout/vector/cI;


# instance fields
.field private f:F

.field private g:Z


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIZZZZZ)V
    .registers 30

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->d:Lcom/google/android/maps/driveabout/vector/cU;

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

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/cI;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cM;->g:Z

    const/high16 v1, 0x41f0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/maps/driveabout/vector/cM;->f:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:F

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 6

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:Z

    if-eqz v0, :cond_11

    invoke-super {p0, p2}, Lcom/google/android/maps/driveabout/vector/cI;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:Z

    goto :goto_14
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:Z

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cI;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:Z

    goto :goto_12
.end method

.method protected t_()Lcom/google/android/maps/driveabout/vector/cc;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cc;->i:Lcom/google/android/maps/driveabout/vector/cc;

    return-object v0
.end method
