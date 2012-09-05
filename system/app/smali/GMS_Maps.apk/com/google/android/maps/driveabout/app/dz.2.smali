.class public Lcom/google/android/maps/driveabout/app/dz;
.super Ljava/lang/Object;


# static fields
.field private static final a:F


# instance fields
.field private final b:F

.field private c:J

.field private d:Landroid/location/Location;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x3ed18d26

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/app/dz;->a:F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const v0, -0x42a988b0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dz;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dz;->e:I

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dz;->b:F

    return-void
.end method


# virtual methods
.method a(FFJ)I
    .registers 16

    const-wide v6, 0xdc6d62da00L

    const/4 v0, 0x0

    const/high16 v10, 0x4000

    const/4 v1, 0x1

    const v9, 0x40c90fdb

    float-to-double v2, p1

    const-wide v4, -0x3ff6de04abbbd2e8L

    cmpg-double v2, v2, v4

    if-lez v2, :cond_2f

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L

    cmpl-double v2, v2, v4

    if-gez v2, :cond_2f

    const v2, -0x3f36f025

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_2f

    cmpl-float v2, p2, v9

    if-gtz v2, :cond_2f

    cmp-long v2, p3, v6

    if-gez v2, :cond_31

    :cond_2f
    move v0, v1

    :cond_30
    :goto_30
    return v0

    :cond_31
    sub-long v2, p3, v6

    long-to-float v2, v2

    const v3, 0x4ca4cb80

    div-float/2addr v2, v3

    const v3, 0x40c7ae92

    mul-float v4, v2, v9

    const v5, 0x43b6a0d1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const v4, 0x3d08e2fe

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    const v5, 0x39b702d8

    mul-float v6, v10, v3

    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const v5, 0x36afb0e6

    const/high16 v6, 0x4040

    mul-float/2addr v6, v3

    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const v5, 0x3fe5f6fd

    add-float/2addr v4, v5

    const v5, 0x40490fdb

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    sget v6, Lcom/google/android/maps/driveabout/app/dz;->a:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p0, Lcom/google/android/maps/driveabout/app/dz;->b:F

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v7

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v7

    invoke-static {v5}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    mul-float/2addr v5, v7

    div-float v5, v6, v5

    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-gez v6, :cond_30

    const/high16 v6, -0x4080

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_9c

    move v0, v1

    goto :goto_30

    :cond_9c
    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v6, p2

    div-float/2addr v6, v9

    const v7, 0x3a6bedfa

    add-float/2addr v6, v7

    const v7, 0x3badab9f

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    const v6, -0x441de69b

    mul-float/2addr v4, v10

    invoke-static {v4}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v3, v5

    div-float/2addr v3, v9

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_30

    div-float v3, v5, v9

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_30

    move v0, v1

    goto/16 :goto_30
.end method

.method public a(Landroid/location/Location;)I
    .registers 12

    const/high16 v9, 0x43b4

    const v8, 0x40c90fdb

    const-wide v6, 0x3fb999999999999aL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/dz;->c:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4a

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Landroid/location/Location;

    if-eqz v2, :cond_4a

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_4a

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_4a

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->e:I

    :goto_49
    return v0

    :cond_4a
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dz;->d:Landroid/location/Location;

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/dz;->c:J

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v9

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v8

    div-float/2addr v3, v9

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/maps/driveabout/app/dz;->a(FFJ)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dz;->e:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dz;->e:I

    goto :goto_49
.end method
