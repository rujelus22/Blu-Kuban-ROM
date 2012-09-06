.class public Lcom/google/android/maps/driveabout/vector/aX;
.super Lcom/google/android/maps/driveabout/vector/Z;
.source "SourceFile"


# static fields
.field private static final b:[I

.field private static final c:I

.field private static volatile d:Z

.field private static final j:F


# instance fields
.field private final e:Ln/am;

.field private final f:Lcom/google/android/maps/driveabout/vector/dY;

.field private final g:Lcom/google/android/maps/driveabout/vector/p;

.field private final h:Lcom/google/android/maps/driveabout/vector/cM;

.field private final i:Lcom/google/android/maps/driveabout/vector/bI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aX;->b:[I

    .line 50
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aX;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x64

    sput v0, Lcom/google/android/maps/driveabout/vector/aX;->c:I

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/aX;->d:Z

    .line 82
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aX;->j:F

    return-void

    .line 35
    nop

    :array_1e
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aZ;Ljava/util/Set;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/Z;-><init>(Ljava/util/Set;)V

    .line 143
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aX;->e:Ln/am;

    .line 152
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dY;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aZ;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->f:Lcom/google/android/maps/driveabout/vector/dY;

    .line 153
    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aZ;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->g:Lcom/google/android/maps/driveabout/vector/p;

    .line 154
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aZ;->a:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->h:Lcom/google/android/maps/driveabout/vector/cM;

    .line 155
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget v1, p2, Lcom/google/android/maps/driveabout/vector/aZ;->b:I

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->i:Lcom/google/android/maps/driveabout/vector/bI;

    .line 157
    return-void
.end method

.method private static a(FI)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 267
    int-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4380

    div-float/2addr v0, v1

    return v0
.end method

.method private static a(IF)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 363
    packed-switch p0, :pswitch_data_14

    .line 371
    const/high16 v0, 0x42a0

    div-float/2addr v0, p1

    :goto_6
    return v0

    .line 365
    :pswitch_7
    const/high16 v0, 0x43b4

    div-float/2addr v0, p1

    goto :goto_6

    .line 367
    :pswitch_b
    const/high16 v0, 0x4370

    div-float/2addr v0, p1

    goto :goto_6

    .line 369
    :pswitch_f
    const/high16 v0, 0x4320

    div-float/2addr v0, p1

    goto :goto_6

    .line 363
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public static a(Ln/am;[Ljava/lang/String;Ln/aI;)Lcom/google/android/maps/driveabout/vector/aX;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 104
    new-instance v3, Lcom/google/android/maps/driveabout/vector/aZ;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/android/maps/driveabout/vector/aZ;-><init>(Lcom/google/android/maps/driveabout/vector/aY;)V

    .line 105
    invoke-interface {p2}, Ln/aI;->c()V

    .line 106
    :cond_e
    invoke-interface {p2}, Ln/aI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 107
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    .line 108
    instance-of v1, v0, Ln/aw;

    if-eqz v1, :cond_27

    move-object v1, v0

    check-cast v1, Ln/aw;

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/vector/aX;->a(Ln/aw;Lcom/google/android/maps/driveabout/vector/aZ;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 117
    :cond_27
    invoke-interface {p2}, Ln/aI;->d()V

    .line 119
    new-instance v1, Lcom/google/android/maps/driveabout/vector/aX;

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/maps/driveabout/vector/aX;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aZ;Ljava/util/Set;)V

    .line 120
    invoke-virtual {p0}, Ln/am;->h()Ln/aa;

    move-result-object v2

    .line 122
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Lcom/google/android/maps/driveabout/vector/bc;

    move-result-object v3

    .line 124
    :goto_37
    invoke-interface {p2}, Ln/aI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 125
    invoke-interface {p2}, Ln/aI;->b()Ln/l;

    move-result-object v0

    .line 126
    instance-of v4, v0, Ln/aw;

    if-eqz v4, :cond_4d

    .line 127
    check-cast v0, Ln/aw;

    .line 128
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/maps/driveabout/vector/aX;->a(Ln/aa;Ln/aw;Lcom/google/android/maps/driveabout/vector/bc;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 136
    :cond_4d
    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/vector/aX;->a(Ln/am;)V

    .line 137
    return-object v1

    .line 111
    :cond_51
    invoke-interface {v0}, Ln/l;->l()[I

    move-result-object v1

    array-length v4, v1

    const/4 v0, 0x0

    :goto_57
    if-ge v0, v4, :cond_e

    aget v5, v1, v0

    .line 112
    if-ltz v5, :cond_65

    array-length v6, p1

    if-ge v5, v6, :cond_65

    .line 113
    aget-object v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 134
    :cond_68
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    goto :goto_37
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 163
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 164
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 168
    return-void
.end method

.method private a(Ln/am;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    return-void
.end method

.method public static a(Z)V
    .registers 1
    .parameter

    .prologue
    .line 91
    sput-boolean p0, Lcom/google/android/maps/driveabout/vector/aX;->d:Z

    .line 92
    return-void
.end method

.method private a(Ln/aa;Ln/aw;Lcom/google/android/maps/driveabout/vector/bc;)Z
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    .line 271
    invoke-virtual {p2}, Ln/aw;->b()Ln/U;

    move-result-object v0

    .line 272
    invoke-virtual {p1}, Ln/aa;->g()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ln/U;->b(F)Ln/U;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ln/U;->b()I

    move-result v0

    .line 275
    add-int/lit8 v0, v0, -0x1

    .line 276
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aX;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v2

    .line 278
    mul-int/lit8 v3, v0, 0x4

    .line 279
    add-int v5, v2, v3

    .line 281
    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v3

    .line 282
    invoke-virtual {p1}, Ln/aa;->g()I

    move-result v4

    .line 284
    invoke-virtual {p2}, Ln/aw;->e()Ln/ag;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ln/ag;->b()I

    move-result v6

    if-gtz v6, :cond_37

    .line 312
    :goto_36
    return v10

    .line 289
    :cond_37
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ln/ag;->b(I)Ln/af;

    move-result-object v6

    invoke-virtual {v6}, Ln/af;->c()F

    move-result v6

    .line 290
    invoke-virtual {v2}, Ln/ag;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ln/ag;->b(I)Ln/af;

    move-result-object v2

    invoke-virtual {v2}, Ln/af;->b()I

    move-result v7

    .line 293
    invoke-static {v6, v4}, Lcom/google/android/maps/driveabout/vector/aX;->a(FI)F

    move-result v2

    .line 294
    invoke-virtual {p2}, Ln/aw;->c()Z

    move-result v8

    if-nez v8, :cond_59

    .line 295
    neg-float v2, v2

    .line 306
    :cond_59
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aX;->g:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v8, v5}, Lcom/google/android/maps/driveabout/vector/p;->b(I)V

    .line 307
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aX;->g:Lcom/google/android/maps/driveabout/vector/p;

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v5, v7, v0}, Lcom/google/android/maps/driveabout/vector/p;->b(II)V

    .line 308
    invoke-virtual {p2}, Ln/aw;->d()I

    move-result v0

    invoke-static {v0, v6}, Lcom/google/android/maps/driveabout/vector/aX;->a(IF)F

    move-result v5

    .line 309
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aX;->f:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aX;->i:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aX;->h:Lcom/google/android/maps/driveabout/vector/cM;

    const/4 v9, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;FLn/Q;IFLcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;Lcom/google/android/maps/driveabout/vector/cO;Lcom/google/android/maps/driveabout/vector/cO;)V

    goto :goto_36
.end method

.method public static a(Ln/aw;Lcom/google/android/maps/driveabout/vector/aZ;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-virtual {p0}, Ln/aw;->b()Ln/U;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    .line 342
    add-int/lit8 v0, v0, -0x1

    .line 343
    mul-int/lit8 v1, v0, 0x4

    .line 344
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/aZ;->a:I

    add-int/2addr v2, v1

    const/16 v3, 0x1000

    if-le v2, v3, :cond_15

    .line 345
    const/4 v0, 0x0

    .line 353
    :goto_14
    return v0

    .line 347
    :cond_15
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/aZ;->a:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/android/maps/driveabout/vector/aZ;->a:I

    .line 350
    mul-int/lit8 v1, v0, 0x2

    .line 351
    add-int/lit8 v0, v0, -0x1

    .line 352
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/aZ;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v2

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aZ;->b:I

    .line 353
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/high16 v2, 0x1

    .line 240
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p2, v0, :cond_b

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->d:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_20

    .line 241
    :cond_b
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 242
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 244
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->i:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 247
    :cond_20
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 248
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->m()V

    .line 250
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/aX;->d:Z

    if-eqz v0, :cond_39

    .line 251
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->g:Lcom/google/android/maps/driveabout/vector/p;

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(I)V

    .line 254
    :cond_39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->g:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->i:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 256
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aX;->g:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aX;->h:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aX;->i:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aX;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 177
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x1702

    const/16 v4, 0x1700

    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->i:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->b()I

    move-result v0

    if-nez v0, :cond_e

    .line 213
    :cond_d
    :goto_d
    return-void

    .line 189
    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->h:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 193
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aX;->e:Ln/am;

    invoke-virtual {v1}, Ln/am;->b()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5c

    const/4 v0, 0x1

    .line 194
    :goto_2b
    if-eqz v0, :cond_43

    .line 195
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 196
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 197
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    sget v2, Lcom/google/android/maps/driveabout/vector/aX;->j:F

    invoke-interface {v1, v2, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 198
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 204
    :cond_43
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/aX;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)V

    .line 207
    if-eqz v0, :cond_d

    .line 209
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 210
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 211
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto :goto_d

    .line 193
    :cond_5c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public b()I
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aX;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v0

    add-int/lit16 v0, v0, 0xb8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aX;->g:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/p;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aX;->h:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aX;->i:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    return-void
.end method
