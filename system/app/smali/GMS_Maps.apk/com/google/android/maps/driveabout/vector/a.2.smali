.class public Lcom/google/android/maps/driveabout/vector/a;
.super Lcom/google/android/maps/driveabout/vector/aE;


# static fields
.field private static h:Lcom/google/android/maps/driveabout/vector/di;

.field private static i:Lcom/google/android/maps/driveabout/vector/bu;

.field private static j:Lcom/google/android/maps/driveabout/vector/bu;


# instance fields
.field private a:Lt/L;

.field private b:Lt/r;

.field private c:Lt/V;

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private k:F


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v9, 0x64

    const/4 v0, 0x0

    const/4 v2, 0x0

    const v1, 0x3d80adfd

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v4, v3

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    const/high16 v1, 0x3f80

    new-instance v3, Lcom/google/android/maps/driveabout/vector/di;

    const/16 v6, 0x65

    invoke-direct {v3, v6}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/a;->h:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bu;

    invoke-direct {v3, v9}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/a;->i:Lcom/google/android/maps/driveabout/vector/bu;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bu;

    const/16 v6, 0x66

    invoke-direct {v3, v6}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/a;->j:Lcom/google/android/maps/driveabout/vector/bu;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/a;->h:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v3, v2, v2, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    sget-object v3, Lcom/google/android/maps/driveabout/vector/a;->j:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/bu;->a(S)V

    move v3, v1

    move v1, v2

    :goto_38
    if-ge v0, v9, :cond_5e

    sget-object v6, Lcom/google/android/maps/driveabout/vector/a;->h:Lcom/google/android/maps/driveabout/vector/di;

    add-float v7, v3, v2

    add-float v8, v1, v2

    invoke-virtual {v6, v7, v8, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    sget-object v6, Lcom/google/android/maps/driveabout/vector/a;->i:Lcom/google/android/maps/driveabout/vector/bu;

    add-int/lit8 v7, v0, 0x1

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(S)V

    sget-object v6, Lcom/google/android/maps/driveabout/vector/a;->j:Lcom/google/android/maps/driveabout/vector/bu;

    add-int/lit8 v7, v0, 0x1

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(S)V

    neg-float v6, v1

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float v3, v6, v5

    mul-float/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_5e
    sget-object v0, Lcom/google/android/maps/driveabout/vector/a;->j:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(S)V

    return-void
.end method

.method public constructor <init>(Lt/L;IIILt/r;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/a;->d:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/a;->e()V

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/a;->f:I

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/a;->g:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/a;->k:F

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Lt/r;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;F)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/a;->h:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/a;->g:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/C;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/a;->j:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/a;->f:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/C;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/a;->k:F

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/a;->i:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/a;->d:I

    if-nez v0, :cond_c

    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/a;->e:F

    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/a;->d:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->e()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/a;->e:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/a;->e:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lt/V;->a(Lt/L;I)Lt/V;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->c:Lt/V;

    goto :goto_b
.end method


# virtual methods
.method public a(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/a;->k:F

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/a;->f:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/a;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->a()Lt/au;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/a;->c:Lt/V;

    invoke-virtual {v0, v1}, Lt/au;->b(Lt/W;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Lt/r;

    if-eqz v1, :cond_45

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Lt/r;

    invoke-virtual {v1, v2}, Lr/l;->d(Lt/r;)Lr/e;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    invoke-virtual {v1, p2, v3}, Lr/e;->a(Lcom/google/android/maps/driveabout/vector/t;Lt/L;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lt/L;->c(I)V

    :cond_45
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    invoke-static {v0, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/a;->e:F

    div-float v1, v2, v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/a;->a(Lcom/google/android/maps/driveabout/vector/aT;F)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_11
.end method

.method public a(Lt/L;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/a;->d:I

    if-eq v0, p2, :cond_f

    :cond_8
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Lt/L;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/a;->d:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/a;->e()V

    :cond_f
    return-void
.end method

.method public a(Lt/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Lt/r;

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/a;->g:I

    return-void
.end method

.method public s_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
