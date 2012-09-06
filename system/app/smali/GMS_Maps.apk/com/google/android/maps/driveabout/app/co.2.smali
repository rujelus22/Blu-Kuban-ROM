.class public Lcom/google/android/maps/driveabout/app/cO;
.super Lcom/google/android/maps/driveabout/app/k;
.source "SourceFile"


# static fields
.field private static final e:F


# instance fields
.field private final d:[F

.field private final f:Z

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 39
    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/cO;->e:F

    return-void
.end method

.method public constructor <init>(FFFZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/k;-><init>()V

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cO;->d:[F

    .line 52
    iput p1, p0, Lcom/google/android/maps/driveabout/app/cO;->g:F

    .line 53
    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/app/cO;->f:Z

    .line 54
    return-void
.end method

.method private static a(Landroid/location/Location;)F
    .registers 5
    .parameter

    .prologue
    const/high16 v1, 0x4168

    const/high16 v0, 0x4138

    .line 192
    instance-of v2, p0, Lm/b;

    if-nez v2, :cond_9

    .line 205
    :cond_8
    :goto_8
    return v0

    .line 195
    :cond_9
    check-cast p0, Lm/b;

    .line 196
    invoke-virtual {p0}, Lm/b;->e()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lm/b;->h()Ln/ac;

    move-result-object v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    .line 197
    goto :goto_8

    .line 199
    :cond_19
    invoke-virtual {p0}, Lm/b;->h()Ln/ac;

    move-result-object v2

    invoke-virtual {v2}, Ln/ac;->f()I

    move-result v2

    .line 200
    const/16 v3, 0x30

    if-gt v2, v3, :cond_27

    move v0, v1

    .line 201
    goto :goto_8

    .line 202
    :cond_27
    const/16 v1, 0x50

    if-gt v2, v1, :cond_8

    .line 203
    const/high16 v0, 0x4148

    goto :goto_8
.end method

.method private a(Ln/Q;Ln/Q;IF)F
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1, p2}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    .line 100
    const/high16 v1, 0x4380

    mul-float/2addr v0, v1

    mul-float/2addr v0, p4

    int-to-float v1, p3

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 102
    const/high16 v1, 0x41f0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v0, v2

    sget v2, Lcom/google/android/maps/driveabout/app/cO;->e:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    const v1, 0x3e4ccccd

    sub-float v1, v0, v1

    .line 104
    const/4 v0, 0x0

    :goto_20
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cO;->d:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_37

    .line 105
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cO;->d:[F

    aget v2, v2, v0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_34

    .line 106
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cO;->d:[F

    aget v0, v1, v0

    .line 109
    :goto_33
    return v0

    .line 104
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 109
    :cond_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cO;->d:[F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cO;->d:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_33
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/l;F)Lcom/google/android/maps/driveabout/vector/l;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 130
    .line 131
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cO;->f:Z

    if-eqz v0, :cond_29

    move v4, p2

    .line 134
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_28

    .line 136
    :cond_16
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    move-object p1, v0

    .line 140
    :cond_28
    return-object p1

    :cond_29
    move v4, v3

    goto :goto_6
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v1

    .line 184
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-static {p2}, Lcom/google/android/maps/driveabout/app/cO;->a(Landroid/location/Location;)F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;Ln/P;Lo/I;FIIF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 67
    cmpl-float v0, p5, v3

    if-ltz v0, :cond_19

    move v2, p5

    .line 81
    :goto_6
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cO;->f:Z

    if-eqz v0, :cond_37

    .line 82
    invoke-virtual {p3}, Ln/P;->b()F

    move-result v4

    .line 84
    :goto_e
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p3}, Ln/P;->a()Ln/Q;

    move-result-object v1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0

    .line 69
    :cond_19
    if-eqz p4, :cond_34

    .line 70
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cO;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p7, v0

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 72
    invoke-virtual {p3}, Ln/P;->a()Ln/Q;

    move-result-object v1

    invoke-virtual {p4}, Lo/I;->a()Ln/Q;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, p8}, Lcom/google/android/maps/driveabout/app/cO;->a(Ln/Q;Ln/Q;IF)F

    move-result v2

    .line 74
    iput v2, p0, Lcom/google/android/maps/driveabout/app/cO;->g:F

    goto :goto_6

    .line 78
    :cond_34
    iget v2, p0, Lcom/google/android/maps/driveabout/app/cO;->g:F

    goto :goto_6

    :cond_37
    move v4, v3

    goto :goto_e
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;Ln/ai;IIF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4380

    const/4 v3, 0x0

    .line 150
    if-nez p3, :cond_6

    .line 177
    :goto_5
    return-object p1

    .line 154
    :cond_6
    invoke-virtual {p3}, Ln/ai;->f()Ln/aa;

    move-result-object v0

    .line 155
    const/4 v1, 0x3

    new-array v1, v1, [Ln/Q;

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v0}, Ln/aa;->d()Ln/Q;

    move-result-object v4

    aput-object v4, v1, v2

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v0}, Ln/aa;->e()Ln/Q;

    move-result-object v0

    aput-object v0, v1, v2

    .line 158
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v2

    aput-object v2, v1, v0

    .line 160
    invoke-static {v1}, Ln/aa;->a([Ln/Q;)Ln/aa;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ln/aa;->g()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    mul-float/2addr v0, p6

    int-to-float v2, p4

    div-float/2addr v0, v2

    .line 164
    invoke-virtual {v1}, Ln/aa;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    mul-float/2addr v2, p6

    int-to-float v4, p5

    div-float/2addr v2, v4

    .line 167
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v2, 0x3f4ccccd

    div-float/2addr v0, v2

    .line 169
    const/high16 v2, 0x41f0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v0, v4

    sget v4, Lcom/google/android/maps/driveabout/app/cO;->e:F

    mul-float/2addr v0, v4

    sub-float v0, v2, v0

    const v2, 0x3e4ccccd

    sub-float/2addr v0, v2

    .line 172
    const/high16 v2, 0x4100

    const/high16 v4, 0x4170

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 177
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1}, Ln/aa;->f()Ln/Q;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    move-object p1, v0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;Lo/I;Z)Lcom/google/android/maps/driveabout/vector/l;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lo/I;->a()Ln/Q;

    move-result-object v1

    .line 118
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cO;->f:Z

    if-eqz v0, :cond_16

    .line 119
    invoke-virtual {p2}, Lo/I;->g()F

    move-result v4

    .line 121
    :goto_d
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    const/high16 v2, 0x4182

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0

    :cond_16
    move v4, v3

    goto :goto_d
.end method
