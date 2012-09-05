.class public abstract Lcom/google/android/maps/driveabout/vector/af;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field protected final a:Lt/l;

.field protected final b:Lt/Z;

.field protected final c:Lcom/google/android/maps/driveabout/vector/bF;

.field protected final d:F

.field protected final e:F

.field protected final f:I

.field protected final g:Z

.field protected h:Z

.field private i:Z


# direct methods
.method protected constructor <init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Lt/Z;FFIZ)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lt/l;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/af;->b:Lt/Z;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Lcom/google/android/maps/driveabout/vector/bF;

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/af;->d:F

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/af;->e:F

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/af;->f:I

    iput-boolean p7, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Z

    return-void
.end method

.method public static a(Lt/Z;FIIF)F
    .registers 8

    invoke-virtual {p0}, Lt/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lt/Z;->h()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lt/Z;->k()Lt/ad;

    move-result-object v0

    invoke-virtual {v0}, Lt/ad;->c()I

    move-result v0

    :goto_14
    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, p4

    return v0

    :cond_22
    invoke-virtual {p0}, Lt/Z;->f()I

    move-result v0

    goto :goto_14
.end method

.method static a(I)I
    .registers 4

    const/16 v0, 0xa0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/vector/af;->a(II)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/af;->d(I)I

    move-result v1

    const/16 v2, 0xc0

    if-lt v1, v2, :cond_13

    const v1, 0x808080

    or-int/2addr v0, v1

    :goto_12
    return v0

    :cond_13
    const v1, 0xffffff

    or-int/2addr v0, v1

    goto :goto_12
.end method

.method private static a(II)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x18

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static a(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I
    .registers 5

    const/high16 v0, -0x100

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ag;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/I;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    invoke-virtual {p0}, Lt/Z;->b()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lt/Z;->h()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lt/Z;->k()Lt/ad;

    move-result-object v1

    invoke-virtual {v1}, Lt/ad;->a()I

    move-result v1

    :goto_21
    if-nez v1, :cond_31

    :goto_23
    return v0

    :pswitch_24
    const/4 v0, -0x1

    goto :goto_23

    :pswitch_26
    const v0, -0x3f3f40

    goto :goto_23

    :cond_2a
    move v1, v0

    goto :goto_21

    :cond_2c
    invoke-virtual {p0}, Lt/Z;->e()I

    move-result v1

    goto :goto_21

    :cond_31
    move v0, v1

    goto :goto_23

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_26
    .end packed-switch
.end method

.method static b(I)I
    .registers 4

    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/vector/af;->a(II)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/af;->d(I)I

    move-result v1

    const/16 v2, 0xc0

    if-lt v1, v2, :cond_11

    or-int/lit8 v0, v0, 0x0

    :goto_10
    return v0

    :cond_11
    const v1, 0xffffff

    or-int/2addr v0, v1

    goto :goto_10
.end method

.method public static b(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I
    .registers 4

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ag;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/I;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    invoke-virtual {p0}, Lt/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lt/Z;->h()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lt/Z;->k()Lt/ad;

    move-result-object v0

    invoke-virtual {v0}, Lt/ad;->b()I

    move-result v0

    :goto_1f
    return v0

    :pswitch_20
    const/high16 v0, -0x6000

    goto :goto_1f

    :pswitch_23
    const/high16 v0, -0x8000

    goto :goto_1f

    :cond_26
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/af;->a(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/af;->a(I)I

    move-result v0

    goto :goto_1f

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method private static d(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x4d

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x97

    add-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method


# virtual methods
.method public a(Lt/av;)Z
    .registers 4

    invoke-virtual {p1}, Lt/av;->a()Lt/au;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/af;->p()Lt/V;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/au;->a(Lt/W;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/af;->o()Lt/W;

    move-result-object v0

    invoke-virtual {p1, v0}, Lt/av;->a(Lt/W;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/aE;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/af;->i:Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/af;->h:Z

    return-void
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract n()F
.end method

.method public abstract o()Lt/W;
.end method

.method public p()Lt/V;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/af;->o()Lt/W;

    move-result-object v0

    invoke-virtual {v0}, Lt/W;->a()Lt/V;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/android/maps/driveabout/vector/bF;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->c:Lcom/google/android/maps/driveabout/vector/bF;

    return-object v0
.end method

.method public r()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->d:F

    return v0
.end method

.method public s()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->e:F

    return v0
.end method

.method public s_()I
    .registers 2

    const v0, 0x30d40

    return v0
.end method

.method public t()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/af;->f:I

    return v0
.end method

.method public abstract u()Ljava/lang/String;
.end method

.method public final v()Lt/l;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/af;->a:Lt/l;

    return-object v0
.end method

.method public w()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/af;->g:Z

    return v0
.end method
