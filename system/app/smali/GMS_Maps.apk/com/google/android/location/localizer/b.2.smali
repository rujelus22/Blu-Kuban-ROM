.class public Lcom/google/android/location/localizer/b;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(D)D
    .registers 6

    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DDDD)D
    .registers 16

    invoke-static {p0, p1}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v2

    invoke-static {p6, p7}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->b(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(I)D
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x3e7ad7f29abcaf48L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Le/f;)D
    .registers 3

    iget v0, p0, Le/f;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Le/f;Le/x;)D
    .registers 8

    invoke-static {p0}, Lcom/google/android/location/localizer/b;->b(Le/f;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/b;->b(Le/x;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/location/localizer/b;->a(Le/f;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/location/localizer/b;->a(Le/x;)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Le/x;)D
    .registers 3

    iget v0, p0, Le/x;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Li/B;Li/B;)D
    .registers 10

    invoke-interface {p0}, Li/B;->b()D

    move-result-wide v0

    invoke-interface {p0}, Li/B;->c()D

    move-result-wide v2

    invoke-interface {p1}, Li/B;->b()D

    move-result-wide v4

    invoke-interface {p1}, Li/B;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->c(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Le/x;Le/x;)I
    .registers 10

    iget v0, p0, Le/x;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    iget v2, p0, Le/x;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v2

    iget v4, p1, Le/x;->a:I

    invoke-static {v4}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v4

    iget v6, p1, Le/x;->b:I

    invoke-static {v6}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->a(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a(Le/z;Le/x;)I
    .registers 10

    iget v0, p0, Le/z;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    iget v2, p0, Le/z;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v2

    iget v4, p1, Le/x;->a:I

    invoke-static {v4}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v4

    iget v6, p1, Le/x;->b:I

    invoke-static {v6}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->a(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a(IILe/x;)Le/f;
    .registers 15

    const-wide v10, 0x3f847ae147ae147bL

    iget v0, p2, Le/x;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    iget v2, p2, Le/x;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v2

    add-double v4, v0, v10

    move-wide v6, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->a(DDDD)D

    move-result-wide v4

    div-double v8, v10, v4

    add-double v6, v2, v10

    move-wide v4, v0

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->a(DDDD)D

    move-result-wide v4

    div-double v4, v10, v4

    new-instance v6, Le/f;

    int-to-double v10, p0

    mul-double v7, v10, v8

    add-double/2addr v0, v7

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->b(D)I

    move-result v0

    int-to-double v7, p1

    mul-double/2addr v4, v7

    add-double v1, v4, v2

    invoke-static {v1, v2}, Lcom/google/android/location/localizer/b;->b(D)I

    move-result v1

    invoke-direct {v6, v0, v1}, Le/f;-><init>(II)V

    return-object v6
.end method

.method public static b(DDDD)D
    .registers 16

    sub-double v0, p4, p0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double v2, p6, p2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    mul-double/2addr v4, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_27

    const-wide/high16 v0, 0x3ff0

    :cond_27
    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public static b(Le/f;)D
    .registers 3

    iget v0, p0, Le/f;->b:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Le/f;Le/x;)D
    .registers 6

    invoke-static {p0}, Lcom/google/android/location/localizer/b;->a(Le/f;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/b;->a(Le/x;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(Le/x;)D
    .registers 3

    iget v0, p0, Le/x;->b:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Le/x;Le/x;)D
    .registers 10

    iget v0, p0, Le/x;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    iget v2, p0, Le/x;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v2

    iget v4, p1, Le/x;->a:I

    invoke-static {v4}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v4

    iget v6, p1, Le/x;->b:I

    invoke-static {v6}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->c(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Le/z;Le/x;)D
    .registers 10

    iget v0, p0, Le/z;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v0

    iget v2, p0, Le/z;->b:I

    invoke-static {v2}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v2

    iget v4, p1, Le/x;->a:I

    invoke-static {v4}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v4

    iget v6, p1, Le/x;->b:I

    invoke-static {v6}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->c(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static b(D)I
    .registers 4

    const-wide v0, 0x416312d000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static b(I)I
    .registers 2

    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static c(D)D
    .registers 6

    const-wide v0, -0x4006de04abbbd2e8L

    const-wide v2, 0x3ff921fb54442d18L

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static c(DDDD)D
    .registers 20

    invoke-static {p2, p3}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v0

    invoke-static/range {p6 .. p7}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v4

    invoke-static/range {p4 .. p5}, Lcom/google/android/location/localizer/b;->a(D)D

    move-result-wide v6

    sub-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2e

    sub-double v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-lez v8, :cond_33

    :cond_2e
    invoke-static/range {p0 .. p7}, Lcom/google/android/location/localizer/b;->a(DDDD)D

    move-result-wide v0

    :goto_32
    return-wide v0

    :cond_33
    sub-double v8, v4, v6

    sub-double/2addr v0, v2

    add-double v2, v4, v6

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v2

    mul-double v4, v8, v8

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    goto :goto_32
.end method

.method public static c(Le/x;Le/x;)D
    .registers 8

    invoke-static {p0}, Lcom/google/android/location/localizer/b;->b(Le/x;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/b;->b(Le/x;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/location/localizer/b;->a(Le/x;)D

    move-result-wide v2

    invoke-static {p1}, Lcom/google/android/location/localizer/b;->a(Le/x;)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static c(I)I
    .registers 2

    const v0, 0x20c49b

    if-le p0, v0, :cond_9

    const v0, 0x7fffffff

    :goto_8
    return v0

    :cond_9
    mul-int/lit16 v0, p0, 0x3e8

    goto :goto_8
.end method

.method public static c(Le/x;)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Le/x;->c:I

    const v2, 0x989680

    if-le v1, v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget v1, p0, Le/x;->a:I

    if-nez v1, :cond_11

    iget v1, p0, Le/x;->b:I

    if-eqz v1, :cond_8

    :cond_11
    iget v1, p0, Le/x;->a:I

    const v2, 0x35a4e900

    if-gt v1, v2, :cond_8

    iget v1, p0, Le/x;->a:I

    const v2, -0x35a4e900

    if-lt v1, v2, :cond_8

    iget v1, p0, Le/x;->b:I

    const v2, 0x6b49d200

    if-gt v1, v2, :cond_8

    iget v1, p0, Le/x;->b:I

    const v2, -0x6b49d200

    if-lt v1, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public static d(D)D
    .registers 4

    const-wide v0, 0x401921fb54442d18L

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static d(I)D
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x416312d000000000L

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static d(Le/x;Le/x;)D
    .registers 6

    invoke-static {p0}, Lcom/google/android/location/localizer/b;->a(Le/x;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/b;->a(Le/x;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static e(D)I
    .registers 6

    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method
