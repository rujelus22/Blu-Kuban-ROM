.class public abstract Lcom/google/android/maps/driveabout/vector/ad;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field protected final a:Ln/l;

.field protected final b:Ln/ag;

.field protected final c:Lcom/google/android/maps/driveabout/vector/bY;

.field protected final d:F

.field protected final e:F

.field protected final f:I

.field protected final g:Z

.field protected h:Z

.field protected i:Z

.field protected j:I

.field private k:Z

.field private l:Z


# direct methods
.method protected constructor <init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ln/ag;FFIZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->l:Z

    .line 35
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->i:Z

    .line 38
    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->j:I

    .line 64
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Ln/l;

    .line 65
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Ln/ag;

    .line 66
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ad;->c:Lcom/google/android/maps/driveabout/vector/bY;

    .line 67
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:F

    .line 68
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/ad;->e:F

    .line 69
    iput p6, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    .line 70
    iput-boolean p7, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Z

    .line 71
    iput-boolean p8, p0, Lcom/google/android/maps/driveabout/vector/ad;->l:Z

    .line 72
    return-void
.end method

.method public static a(Ln/ag;FIIF)F
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-virtual {p0}, Ln/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ln/ag;->h()Ln/ak;

    move-result-object v0

    invoke-virtual {v0}, Ln/ak;->f()I

    move-result v0

    .line 344
    :goto_e
    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 345
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 346
    mul-float/2addr v0, p4

    return v0

    .line 343
    :cond_1c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a(F)I
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3e80

    .line 95
    const/high16 v0, 0x3f80

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1e

    cmpl-float v0, p0, v4

    if-ltz v0, :cond_1e

    .line 96
    const-wide/high16 v0, 0x40f0

    const-wide v2, 0x3ff5555560000000L

    sub-float v4, p0, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 99
    :goto_1d
    return v0

    :cond_1e
    const/high16 v0, 0x1

    goto :goto_1d
.end method

.method private static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 315
    ushr-int/lit8 v0, p0, 0x18

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static a(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/high16 v0, -0x100

    .line 226
    sget-object v1, Lcom/google/android/maps/driveabout/vector/ae;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/D;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 236
    invoke-virtual {p0}, Ln/ag;->e()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Ln/ag;->h()Ln/ak;

    move-result-object v1

    invoke-virtual {v1}, Ln/ak;->d()I

    move-result v1

    .line 243
    :goto_1b
    if-nez v1, :cond_26

    .line 246
    :goto_1d
    return v0

    .line 231
    :pswitch_1e
    const/4 v0, -0x1

    goto :goto_1d

    .line 233
    :pswitch_20
    const v0, -0x3f3f40

    goto :goto_1d

    :cond_24
    move v1, v0

    .line 236
    goto :goto_1b

    :cond_26
    move v0, v1

    .line 246
    goto :goto_1d

    .line 226
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_20
    .end packed-switch
.end method

.method static b(I)I
    .registers 4
    .parameter

    .prologue
    .line 278
    const/16 v0, 0xa0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/vector/ad;->a(II)I

    move-result v0

    .line 281
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/ad;->d(I)I

    move-result v1

    .line 286
    const/16 v2, 0xc0

    if-lt v1, v2, :cond_13

    .line 287
    const v1, 0x808080

    or-int/2addr v0, v1

    .line 289
    :goto_12
    return v0

    :cond_13
    const v1, 0xffffff

    or-int/2addr v0, v1

    goto :goto_12
.end method

.method public static b(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 254
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ae;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/D;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 263
    invoke-virtual {p0}, Ln/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Ln/ag;->h()Ln/ak;

    move-result-object v0

    invoke-virtual {v0}, Ln/ak;->e()I

    move-result v0

    :goto_19
    return v0

    .line 259
    :pswitch_1a
    const/high16 v0, -0x6000

    goto :goto_19

    .line 261
    :pswitch_1d
    const/high16 v0, -0x8000

    goto :goto_19

    .line 263
    :cond_20
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/vector/ad;->a(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ad;->b(I)I

    move-result v0

    goto :goto_19

    .line 254
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method static c(I)I
    .registers 4
    .parameter

    .prologue
    .line 297
    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/vector/ad;->a(II)I

    move-result v0

    .line 300
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/ad;->d(I)I

    move-result v1

    .line 304
    const/16 v2, 0xc0

    if-lt v1, v2, :cond_f

    .line 307
    :goto_e
    return v0

    :cond_f
    const v1, 0xffffff

    or-int/2addr v0, v1

    goto :goto_e
.end method

.method private static d(I)I
    .registers 3
    .parameter

    .prologue
    .line 324
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

    .line 328
    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 86
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->i:Z

    .line 87
    return-void

    .line 86
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->k:Z

    .line 156
    return-void
.end method

.method public a(Ln/aM;)Z
    .registers 4
    .parameter

    .prologue
    .line 220
    invoke-virtual {p1}, Ln/aM;->a()Ln/aL;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ad;->r()Ln/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/aL;->a(Ln/ab;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ad;->q()Ln/ab;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln/aM;->a(Ln/ab;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:Z

    .line 355
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method protected o()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->l:Z

    return v0
.end method

.method public abstract p()F
.end method

.method public abstract q()Ln/ab;
.end method

.method public r()Ln/aa;
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ad;->q()Ln/ab;

    move-result-object v0

    invoke-virtual {v0}, Ln/ab;->a()Ln/aa;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/google/android/maps/driveabout/vector/bY;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->c:Lcom/google/android/maps/driveabout/vector/bY;

    return-object v0
.end method

.method public t()F
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:F

    return v0
.end method

.method public u()F
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->e:F

    return v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 125
    const v0, 0x30d40

    return v0
.end method

.method public v()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    return v0
.end method

.method public abstract w()Ljava/lang/String;
.end method

.method public final x()Ln/l;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Ln/l;

    return-object v0
.end method

.method public y()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:Z

    return v0
.end method
