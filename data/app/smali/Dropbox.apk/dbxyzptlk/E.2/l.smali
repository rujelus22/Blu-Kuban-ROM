.class public final Ldbxyzptlk/E/l;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field public d:[I

.field public e:[I

.field public f:[F

.field public g:[F


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x5e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Ldbxyzptlk/E/l;->a:I

    const/16 v0, 0xc8

    iput v0, p0, Ldbxyzptlk/E/l;->b:I

    iput v2, p0, Ldbxyzptlk/E/l;->c:I

    new-array v0, v1, [I

    iput-object v0, p0, Ldbxyzptlk/E/l;->d:[I

    new-array v0, v1, [I

    iput-object v0, p0, Ldbxyzptlk/E/l;->e:[I

    new-array v0, v1, [F

    iput-object v0, p0, Ldbxyzptlk/E/l;->f:[F

    new-array v0, v1, [F

    iput-object v0, p0, Ldbxyzptlk/E/l;->g:[F

    invoke-virtual {p0}, Ldbxyzptlk/E/l;->a()V

    return-void
.end method


# virtual methods
.method final a([FF[FF)F
    .registers 7

    iget-object v0, p0, Ldbxyzptlk/E/l;->f:[F

    invoke-virtual {p0, p1, v0}, Ldbxyzptlk/E/l;->a([F[F)F

    move-result v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Ldbxyzptlk/E/l;->g:[F

    invoke-virtual {p0, p3, v1}, Ldbxyzptlk/E/l;->a([F[F)F

    move-result v1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    return v0
.end method

.method final a([F[F)F
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x5e

    if-ge v0, v2, :cond_10

    aget v2, p1, v0

    aget v3, p2, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42bc

    div-float/2addr v0, v1

    return v0
.end method

.method public final a()V
    .registers 5

    const/4 v1, 0x0

    iput v1, p0, Ldbxyzptlk/E/l;->a:I

    iput v1, p0, Ldbxyzptlk/E/l;->c:I

    move v0, v1

    :goto_6
    const/16 v2, 0x5e

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Ldbxyzptlk/E/l;->d:[I

    iget-object v3, p0, Ldbxyzptlk/E/l;->e:[I

    aput v1, v3, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method final a([BI)Z
    .registers 12

    const/16 v8, 0xff

    const/16 v7, 0xa1

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Ldbxyzptlk/E/l;->c:I

    if-ne v2, v0, :cond_b

    :goto_a
    return v1

    :cond_b
    move v2, v1

    move v3, v1

    :goto_d
    if-ge v2, p2, :cond_7b

    iget v4, p0, Ldbxyzptlk/E/l;->c:I

    if-eq v0, v4, :cond_7b

    iget v4, p0, Ldbxyzptlk/E/l;->c:I

    packed-switch v4, :pswitch_data_84

    iput v0, p0, Ldbxyzptlk/E/l;->c:I

    :cond_1a
    :goto_1a
    :pswitch_1a
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :pswitch_1f
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1a

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    if-eq v8, v4, :cond_31

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    if-le v7, v4, :cond_34

    :cond_31
    iput v0, p0, Ldbxyzptlk/E/l;->c:I

    goto :goto_1a

    :cond_34
    iget v4, p0, Ldbxyzptlk/E/l;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ldbxyzptlk/E/l;->a:I

    iget-object v4, p0, Ldbxyzptlk/E/l;->d:[I

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, -0xa1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    const/4 v4, 0x2

    iput v4, p0, Ldbxyzptlk/E/l;->c:I

    goto :goto_1a

    :pswitch_4c
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_78

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    if-eq v8, v4, :cond_5e

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    if-le v7, v4, :cond_61

    :cond_5e
    iput v0, p0, Ldbxyzptlk/E/l;->c:I

    goto :goto_1a

    :cond_61
    iget v4, p0, Ldbxyzptlk/E/l;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ldbxyzptlk/E/l;->a:I

    iget-object v4, p0, Ldbxyzptlk/E/l;->e:[I

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, -0xa1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    iput v1, p0, Ldbxyzptlk/E/l;->c:I

    goto :goto_1a

    :cond_78
    iput v0, p0, Ldbxyzptlk/E/l;->c:I

    goto :goto_1a

    :cond_7b
    iget v2, p0, Ldbxyzptlk/E/l;->c:I

    if-eq v0, v2, :cond_81

    :goto_7f
    move v1, v0

    goto :goto_a

    :cond_81
    move v0, v1

    goto :goto_7f

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1a
        :pswitch_4c
    .end packed-switch
.end method

.method final b()Z
    .registers 3

    iget v0, p0, Ldbxyzptlk/E/l;->a:I

    iget v1, p0, Ldbxyzptlk/E/l;->b:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final c()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Ldbxyzptlk/E/l;->a:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final d()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Ldbxyzptlk/E/l;->f:[F

    iget-object v2, p0, Ldbxyzptlk/E/l;->d:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Ldbxyzptlk/E/l;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Ldbxyzptlk/E/l;->g:[F

    iget-object v2, p0, Ldbxyzptlk/E/l;->e:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Ldbxyzptlk/E/l;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method
