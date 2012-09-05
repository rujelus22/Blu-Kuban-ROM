.class public Lcom/google/android/maps/driveabout/vector/aR;
.super Lcom/google/android/maps/driveabout/vector/aE;


# static fields
.field private static final a:F

.field private static final b:F


# instance fields
.field private c:Lt/L;

.field private d:I

.field private e:Lcom/google/android/maps/driveabout/vector/I;

.field private f:Z

.field private final g:Lcom/google/android/maps/driveabout/vector/di;

.field private final h:Lcom/google/android/maps/driveabout/vector/y;

.field private final i:Lcom/google/android/maps/driveabout/vector/y;

.field private final j:Lt/L;

.field private final k:Lt/L;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide v0, 0x3fb657184ae74487L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aR;->a:F

    const-wide v0, 0x3faacee9f37bebd6L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aR;->b:F

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->f:Lcom/google/android/maps/driveabout/vector/I;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->e:Lcom/google/android/maps/driveabout/vector/I;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->j:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->k:Lt/L;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/y;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/y;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->h:Lcom/google/android/maps/driveabout/vector/y;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/I;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aR;->a([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->h:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/y;->a(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->h:Lcom/google/android/maps/driveabout/vector/y;

    or-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0, v4}, Lcom/google/android/maps/driveabout/vector/y;->a(II)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/y;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/y;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->i:Lcom/google/android/maps/driveabout/vector/y;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/I;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aR;->a([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->i:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/y;->a(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->i:Lcom/google/android/maps/driveabout/vector/y;

    or-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0, v4}, Lcom/google/android/maps/driveabout/vector/y;->a(II)V

    return-void
.end method

.method private static a([I)I
    .registers 4

    const v2, 0xff00

    const/4 v0, 0x0

    aget v0, p0, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget v1, p0, v1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->f:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p3, v0, :cond_17

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->e:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p3, v0, :cond_17

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/t;->c(F)F

    move-result v1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p3, v0, :cond_c2

    const/high16 v0, 0x4040

    :goto_2b
    sub-float v0, v1, v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->g()F

    move-result v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-lez v1, :cond_17

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/vector/t;->d(F)Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->c()Lt/W;

    move-result-object v0

    check-cast v0, Lt/n;

    invoke-virtual {v0}, Lt/n;->g()Lt/L;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->c:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->j:Lt/L;

    invoke-virtual {v2, v4, v4}, Lt/L;->d(II)V

    invoke-virtual {v0}, Lt/n;->f()Lt/L;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->c:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aR;->k:Lt/L;

    invoke-static {v0, v2, v3}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->j:Lt/L;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->k:Lt/L;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->c:Lt/L;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt/L;->c(Lt/L;)F

    move-result v2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p3, v0, :cond_c6

    sget v0, Lcom/google/android/maps/driveabout/vector/aR;->b:F

    :goto_86
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->j:Lt/L;

    invoke-virtual {v2, v0}, Lt/L;->c(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->k:Lt/L;

    invoke-virtual {v2, v0}, Lt/L;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->j:Lt/L;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->k:Lt/L;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->j:Lt/L;

    invoke-virtual {v0, v1}, Lt/L;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->k:Lt/L;

    invoke-virtual {v0, v1}, Lt/L;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->j:Lt/L;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->k:Lt/L;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    goto/16 :goto_17

    :cond_c2
    const/high16 v0, 0x40a0

    goto/16 :goto_2b

    :cond_c6
    sget v0, Lcom/google/android/maps/driveabout/vector/aR;->a:F

    goto :goto_86
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/I;)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->f:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->e:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p1, v1, :cond_e

    :cond_9
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aR;->e:Lcom/google/android/maps/driveabout/vector/I;

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->f:Z

    const/4 v0, 0x1

    :cond_e
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aR;->a(Lcom/google/android/maps/driveabout/vector/I;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/aR;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    if-nez v0, :cond_1a

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->c:Lt/L;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aR;->d:I

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->m()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->s()V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v1, v2, :cond_55

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->i:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/y;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    :goto_46
    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aR;->g:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_19

    :cond_55
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aR;->h:Lcom/google/android/maps/driveabout/vector/y;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/y;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_46
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aR;->f:Z

    return v0
.end method

.method public s_()I
    .registers 2

    const v0, 0x61a80

    return v0
.end method
