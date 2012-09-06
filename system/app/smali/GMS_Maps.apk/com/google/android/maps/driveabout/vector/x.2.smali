.class public Lcom/google/android/maps/driveabout/vector/X;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# static fields
.field private static final a:Ln/Q;

.field private static final b:Ln/Q;


# instance fields
.field private final c:Ln/U;

.field private d:Ln/U;

.field private e:Ln/U;

.field private final f:Ljava/util/List;

.field private final g:Ln/p;

.field private h:Ln/aa;

.field private i:F

.field private j:F

.field private final k:Lcom/google/android/maps/driveabout/vector/dY;

.field private final l:Lcom/google/android/maps/driveabout/vector/bI;

.field private final m:Lcom/google/android/maps/driveabout/vector/cM;

.field private n:F

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Ln/Q;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/X;->a:Ln/Q;

    .line 41
    new-instance v0, Ln/Q;

    const/high16 v1, -0x4000

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/X;->b:Ln/Q;

    return-void
.end method

.method public constructor <init>(Ln/U;FILn/p;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/X;->c:Ln/U;

    .line 118
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/X;->n:F

    .line 119
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/X;->o:I

    .line 120
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    .line 121
    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/X;->g:Ln/p;

    .line 127
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ljava/util/List;)I

    move-result v1

    .line 131
    new-instance v2, Lcom/google/android/maps/driveabout/vector/dY;

    invoke-direct {v2, v1}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/dY;

    .line 132
    new-instance v2, Lcom/google/android/maps/driveabout/vector/cM;

    invoke-direct {v2, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/X;->m:Lcom/google/android/maps/driveabout/vector/cM;

    .line 133
    new-instance v1, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bc;->b(Ljava/util/List;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->l:Lcom/google/android/maps/driveabout/vector/bI;

    .line 134
    return-void
.end method

.method private a(F)Ln/U;
    .registers 3
    .parameter

    .prologue
    .line 379
    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    .line 380
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->c:Ln/U;

    .line 386
    :goto_8
    return-object v0

    .line 382
    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/X;->h()V

    .line 383
    const/high16 v0, 0x40c0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    .line 384
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ln/U;

    goto :goto_8

    .line 386
    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->e:Ln/U;

    goto :goto_8
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x1

    .line 182
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 186
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/X;->e()Lcom/google/android/maps/driveabout/vector/cx;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_1a

    .line 188
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    invoke-virtual {v0, v3}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    invoke-interface {v2, p1, p3, p2, v0}, Lcom/google/android/maps/driveabout/vector/cx;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;Ln/Q;)V

    .line 192
    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    invoke-virtual {v0}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    .line 193
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    invoke-virtual {v3}, Ln/aa;->g()I

    move-result v3

    int-to-float v3, v3

    .line 198
    invoke-static {p1, p3, v0, v3}, Lcom/google/android/maps/driveabout/vector/dz;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 201
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 202
    const/4 v0, 0x1

    const/16 v3, 0x303

    invoke-interface {v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 206
    const/16 v0, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x2100

    invoke-interface {v1, v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 207
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/X;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 208
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->m:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->l:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 215
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 218
    if-eqz v2, :cond_64

    .line 219
    invoke-interface {v2, p1, p2}, Lcom/google/android/maps/driveabout/vector/cx;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 221
    :cond_64
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 342
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->m:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 345
    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/X;->a(Ln/U;Lcom/google/android/maps/driveabout/vector/k;)V

    goto :goto_15

    .line 347
    :cond_25
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/X;->j:F

    .line 348
    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0xff00

    .line 227
    monitor-enter p0

    .line 228
    :try_start_4
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/X;->o:I

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v4

    .line 229
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/X;->o:I

    shr-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v4

    .line 230
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/X;->o:I

    and-int/2addr v2, v4

    .line 231
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/X;->o:I

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v4

    .line 232
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 233
    invoke-interface {p1, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 234
    return-void

    .line 232
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private a(Ln/U;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    invoke-virtual {v0}, Ln/aa;->d()Ln/Q;

    move-result-object v4

    .line 359
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    invoke-virtual {v0}, Ln/aa;->g()I

    move-result v5

    .line 367
    monitor-enter p0

    .line 368
    :try_start_d
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/X;->n:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    const/high16 v1, 0x40e0

    div-float/2addr v0, v1

    const/high16 v1, 0x4100

    mul-float v2, v0, v1

    .line 369
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_32

    .line 372
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Lcom/google/android/maps/driveabout/vector/bc;

    move-result-object v0

    const/4 v6, 0x0

    const/high16 v7, 0x1

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/X;->l:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/X;->m:Lcom/google/android/maps/driveabout/vector/cM;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;FFLn/Q;IIILcom/google/android/maps/driveabout/vector/dY;Lcom/google/android/maps/driveabout/vector/bI;Lcom/google/android/maps/driveabout/vector/cM;)V

    .line 375
    return-void

    .line 369
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x3fa0

    .line 241
    monitor-enter p0

    .line 242
    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/X;->p:Z

    if-eqz v2, :cond_e

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/X;->p:Z

    .line 244
    monitor-exit p0

    .line 248
    :goto_d
    return v1

    .line 246
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_24

    .line 247
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v2

    .line 248
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/X;->j:F

    mul-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_21

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/X;->j:F

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_22

    :cond_21
    move v0, v1

    :cond_22
    move v1, v0

    goto :goto_d

    .line 246
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private static b(I)I
    .registers 3
    .parameter

    .prologue
    .line 401
    const/4 v0, 0x2

    rsub-int/lit8 v1, p0, 0x1e

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/4 v0, 0x1

    .line 256
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    if-nez v1, :cond_8

    .line 270
    :cond_7
    :goto_7
    return v0

    .line 261
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v1

    .line 262
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/X;->i:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/X;->i:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_7

    .line 267
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v2

    invoke-virtual {v2}, Ln/aK;->c()Ln/ab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/aa;->b(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 270
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 10
    .parameter

    .prologue
    const/high16 v5, 0x2000

    .line 278
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/X;->a(F)Ln/U;

    move-result-object v3

    .line 283
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v0

    invoke-virtual {v0}, Ln/aK;->b()Ln/aa;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Ln/aa;->g()I

    move-result v0

    .line 286
    invoke-virtual {v2}, Ln/aa;->h()I

    move-result v1

    .line 287
    const v4, 0x71c71c7

    .line 289
    if-gt v0, v4, :cond_26

    if-le v1, v4, :cond_a7

    .line 291
    :cond_26
    new-instance v1, Ln/Q;

    invoke-virtual {v2}, Ln/aa;->f()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    sub-int/2addr v0, v5

    const/high16 v4, -0x4000

    invoke-direct {v1, v0, v4}, Ln/Q;-><init>(II)V

    .line 292
    new-instance v0, Ln/Q;

    invoke-virtual {v2}, Ln/aa;->f()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x1

    const v4, 0x3fffffff

    invoke-direct {v0, v2, v4}, Ln/Q;-><init>(II)V

    move-object v2, v1

    move-object v1, v0

    .line 298
    :goto_4b
    new-instance v0, Ln/aa;

    invoke-direct {v0, v2, v1}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    .line 302
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/X;->b(I)I

    move-result v0

    .line 303
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Ln/U;->b(F)Ln/U;

    move-result-object v3

    .line 305
    new-instance v0, Ln/f;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    invoke-direct {v0, v4}, Ln/f;-><init>(Ln/ab;)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Ln/f;->a(Ln/U;Ljava/util/List;)V

    .line 317
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 318
    new-instance v0, Ln/aa;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/X;->a:Ln/Q;

    invoke-virtual {v2, v5}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v5

    sget-object v6, Lcom/google/android/maps/driveabout/vector/X;->a:Ln/Q;

    invoke-virtual {v1, v6}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    .line 320
    new-instance v5, Ln/f;

    invoke-direct {v5, v0}, Ln/f;-><init>(Ln/ab;)V

    invoke-virtual {v5, v3, v4}, Ln/f;->a(Ln/U;Ljava/util/List;)V

    .line 321
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 323
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    sget-object v7, Lcom/google/android/maps/driveabout/vector/X;->b:Ln/Q;

    invoke-virtual {v0, v7}, Ln/U;->b(Ln/Q;)Ln/U;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 294
    :cond_a7
    new-instance v4, Ln/Q;

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v4, v0, v1}, Ln/Q;-><init>(II)V

    .line 295
    invoke-virtual {v2}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    invoke-virtual {v0, v4}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 296
    invoke-virtual {v2}, Ln/aa;->e()Ln/Q;

    move-result-object v0

    invoke-virtual {v0, v4}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_4b

    .line 326
    :cond_c3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 327
    new-instance v0, Ln/aa;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/X;->b:Ln/Q;

    invoke-virtual {v2, v5}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v2

    sget-object v5, Lcom/google/android/maps/driveabout/vector/X;->b:Ln/Q;

    invoke-virtual {v1, v5}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    .line 329
    new-instance v1, Ln/f;

    invoke-direct {v1, v0}, Ln/f;-><init>(Ln/ab;)V

    invoke-virtual {v1, v3, v4}, Ln/f;->a(Ln/U;Ljava/util/List;)V

    .line 330
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 332
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/X;->a:Ln/Q;

    invoke-virtual {v0, v3}, Ln/U;->b(Ln/Q;)Ln/U;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e3

    .line 335
    :cond_fb
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/X;->i:F

    .line 336
    return-void
.end method

.method private e()Lcom/google/android/maps/driveabout/vector/cx;
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->g:Ln/p;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    if-nez v0, :cond_1d

    .line 175
    :cond_1b
    const/4 v0, 0x0

    .line 177
    :goto_1c
    return-object v0

    :cond_1d
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/X;->g:Ln/p;

    invoke-virtual {v0, v1}, Ll/q;->e(Ln/p;)Ll/k;

    move-result-object v0

    goto :goto_1c
.end method

.method private h()V
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ln/U;

    if-nez v0, :cond_21

    .line 394
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->c:Ln/U;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/X;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ln/U;->b(F)Ln/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ln/U;

    .line 395
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->d:Ln/U;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/X;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ln/U;->b(F)Ln/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->e:Ln/U;

    .line 397
    :cond_21
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_29

    .line 156
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->h:Ln/aa;

    if-nez v0, :cond_d

    .line 158
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/X;->c(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 160
    :cond_d
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 163
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/X;->k:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v0

    if-lez v0, :cond_29

    .line 164
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 165
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 166
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 167
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 170
    :cond_29
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/X;->b(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/X;->c(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 146
    monitor-enter p0

    .line 147
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/X;->p:Z

    .line 148
    monitor-exit p0

    .line 150
    :cond_f
    return v1

    .line 148
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method
