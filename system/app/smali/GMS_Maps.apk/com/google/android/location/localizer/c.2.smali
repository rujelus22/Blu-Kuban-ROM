.class public Lcom/google/android/location/localizer/c;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D

.field private c:I

.field private d:I

.field private e:D

.field private f:D

.field private g:[D

.field private h:[D

.field private i:[I


# direct methods
.method constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0xa

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/location/localizer/c;->a:D

    iput-wide v0, p0, Lcom/google/android/location/localizer/c;->b:D

    iput v3, p0, Lcom/google/android/location/localizer/c;->c:I

    iput v3, p0, Lcom/google/android/location/localizer/c;->d:I

    iput-wide v0, p0, Lcom/google/android/location/localizer/c;->e:D

    iput-wide v0, p0, Lcom/google/android/location/localizer/c;->f:D

    new-array v0, v2, [D

    iput-object v0, p0, Lcom/google/android/location/localizer/c;->g:[D

    new-array v0, v2, [D

    iput-object v0, p0, Lcom/google/android/location/localizer/c;->h:[D

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/location/localizer/c;->i:[I

    invoke-virtual {p0}, Lcom/google/android/location/localizer/c;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/location/localizer/c;->a:D

    iput-wide v3, p0, Lcom/google/android/location/localizer/c;->b:D

    iput v1, p0, Lcom/google/android/location/localizer/c;->c:I

    iput v1, p0, Lcom/google/android/location/localizer/c;->d:I

    iput-wide v3, p0, Lcom/google/android/location/localizer/c;->e:D

    iput-wide v3, p0, Lcom/google/android/location/localizer/c;->f:D

    move v0, v1

    :goto_10
    const/16 v2, 0xa

    if-ge v0, v2, :cond_23

    iget-object v2, p0, Lcom/google/android/location/localizer/c;->g:[D

    aput-wide v3, v2, v0

    iget-object v2, p0, Lcom/google/android/location/localizer/c;->h:[D

    aput-wide v3, v2, v0

    iget-object v2, p0, Lcom/google/android/location/localizer/c;->i:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_23
    return-void
.end method

.method public a(DDII)V
    .registers 9

    iget v0, p0, Lcom/google/android/location/localizer/c;->c:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_32

    const/16 v0, 0x1388

    if-gt p5, v0, :cond_32

    iget-wide v0, p0, Lcom/google/android/location/localizer/c;->a:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/location/localizer/c;->a:D

    iget-wide v0, p0, Lcom/google/android/location/localizer/c;->b:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/android/location/localizer/c;->b:D

    iget v0, p0, Lcom/google/android/location/localizer/c;->d:I

    if-le p6, v0, :cond_1a

    iput p6, p0, Lcom/google/android/location/localizer/c;->d:I

    :cond_1a
    iget-object v0, p0, Lcom/google/android/location/localizer/c;->g:[D

    iget v1, p0, Lcom/google/android/location/localizer/c;->c:I

    aput-wide p1, v0, v1

    iget-object v0, p0, Lcom/google/android/location/localizer/c;->h:[D

    iget v1, p0, Lcom/google/android/location/localizer/c;->c:I

    aput-wide p3, v0, v1

    iget-object v0, p0, Lcom/google/android/location/localizer/c;->i:[I

    iget v1, p0, Lcom/google/android/location/localizer/c;->c:I

    aput p5, v0, v1

    iget v0, p0, Lcom/google/android/location/localizer/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/c;->c:I

    :cond_32
    return-void
.end method

.method public a(Le/x;)V
    .registers 9

    iget v0, p1, Le/x;->a:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v1

    iget v0, p1, Le/x;->b:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->a(I)D

    move-result-wide v3

    iget v0, p1, Le/x;->c:I

    invoke-static {v0}, Lcom/google/android/location/localizer/b;->b(I)I

    move-result v5

    iget v6, p1, Le/x;->d:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/localizer/c;->a(DDII)V

    return-void
.end method

.method public b()D
    .registers 5

    iget-wide v0, p0, Lcom/google/android/location/localizer/c;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/location/localizer/c;->c:I

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/google/android/location/localizer/c;->a:D

    iget v2, p0, Lcom/google/android/location/localizer/c;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/localizer/c;->e:D

    :cond_14
    iget-wide v0, p0, Lcom/google/android/location/localizer/c;->e:D

    return-wide v0
.end method

.method public c()D
    .registers 5

    iget-wide v0, p0, Lcom/google/android/location/localizer/c;->f:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/location/localizer/c;->c:I

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/google/android/location/localizer/c;->b:D

    iget v2, p0, Lcom/google/android/location/localizer/c;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/localizer/c;->f:D

    :cond_14
    iget-wide v0, p0, Lcom/google/android/location/localizer/c;->f:D

    return-wide v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/location/localizer/c;->d:I

    return v0
.end method

.method public e()I
    .registers 15

    iget v0, p0, Lcom/google/android/location/localizer/c;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/google/android/location/localizer/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/android/location/localizer/c;->i:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/location/localizer/c;->b()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/location/localizer/c;->c()D

    move-result-wide v2

    const/4 v8, 0x0

    const/16 v7, 0x1388

    const/16 v6, 0x1388

    const/4 v4, 0x1

    new-array v13, v4, [F

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v9, v5

    move v10, v6

    move v11, v7

    move v12, v8

    move v8, v4

    :goto_28
    iget v4, p0, Lcom/google/android/location/localizer/c;->c:I

    if-ge v8, v4, :cond_5e

    iget-object v4, p0, Lcom/google/android/location/localizer/c;->g:[D

    aget-wide v4, v4, v8

    iget-object v6, p0, Lcom/google/android/location/localizer/c;->h:[D

    aget-wide v6, v6, v8

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->a(DDDD)D

    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v4, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v13, v4

    iget-object v5, p0, Lcom/google/android/location/localizer/c;->i:[I

    aget v5, v5, v8

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6d

    const/4 v5, 0x1

    :goto_49
    iget-object v4, p0, Lcom/google/android/location/localizer/c;->i:[I

    aget v4, v4, v8

    if-ge v4, v11, :cond_6a

    iget-object v4, p0, Lcom/google/android/location/localizer/c;->i:[I

    aget v7, v4, v8

    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v6, v4

    :goto_57
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v9, v5

    move v10, v6

    move v11, v7

    goto :goto_28

    :cond_5e
    if-eqz v9, :cond_65

    iget v0, p0, Lcom/google/android/location/localizer/c;->c:I

    div-int v0, v12, v0

    goto :goto_5

    :cond_65
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    :cond_6a
    move v6, v10

    move v7, v11

    goto :goto_57

    :cond_6d
    move v5, v9

    goto :goto_49
.end method
