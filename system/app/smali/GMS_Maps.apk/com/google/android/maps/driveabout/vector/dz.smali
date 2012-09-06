.class public Lcom/google/android/maps/driveabout/vector/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->l:[F

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F[F)V

    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->l:[F

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/dz;->a(Ljavax/microedition/khronos/opengles/GL10;[F)V

    .line 117
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;FZ[F)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    if-nez p0, :cond_3b

    .line 76
    new-instance v1, Ln/Q;

    invoke-direct {v1}, Ln/Q;-><init>()V

    .line 77
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    .line 92
    :goto_c
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;)V

    .line 93
    invoke-static {p2, v1, v0}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 94
    if-eqz p4, :cond_17

    .line 95
    invoke-virtual {v0, v0}, Ln/Q;->i(Ln/Q;)V

    .line 97
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->q()F

    move-result v1

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    aput v3, p5, v2

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    aput v3, p5, v2

    .line 100
    const/4 v2, 0x2

    invoke-virtual {v0}, Ln/Q;->h()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    aput v0, p5, v2

    .line 101
    const/4 v0, 0x3

    mul-float/2addr v1, p3

    aput v1, p5, v0

    .line 102
    return-void

    .line 79
    :cond_3b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->m:Ln/Q;

    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->n:Ln/Q;

    goto :goto_c
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F[F)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;FZ[F)V

    .line 38
    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    neg-float v0, v0

    invoke-interface {p0, v0, v2, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 157
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    const/high16 v1, 0x42b4

    sub-float/2addr v0, v1

    invoke-interface {p0, v0, v3, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 158
    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;[F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 140
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 141
    aget v0, p1, v3

    aget v1, p1, v3

    aget v2, p1, v3

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 142
    return-void
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->l:[F

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/dz;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F[F)V

    .line 133
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->l:[F

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/dz;->a(Ljavax/microedition/khronos/opengles/GL10;[F)V

    .line 134
    return-void
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F[F)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;FZ[F)V

    .line 61
    return-void
.end method
