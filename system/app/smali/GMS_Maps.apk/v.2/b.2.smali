.class public Lv/b;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lw/e;)F
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lw/e;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lw/e;->b(I)Lt/L;

    move-result-object v0

    invoke-virtual {p0}, Lw/e;->e()Lt/L;

    move-result-object v1

    invoke-static {v0, v1}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v0

    goto :goto_3
.end method

.method public static a(Lw/e;Lw/e;)I
    .registers 4

    invoke-static {p0}, Lv/b;->a(Lw/e;)F

    move-result v0

    invoke-static {p1}, Lv/b;->b(Lw/e;)F

    move-result v1

    sub-float v0, v1, v0

    float-to-int v0, v0

    if-gez v0, :cond_f

    add-int/lit16 v0, v0, 0x168

    :cond_f
    const/16 v1, 0xb4

    if-le v0, v1, :cond_15

    add-int/lit16 v0, v0, -0x168

    :cond_15
    return v0
.end method

.method public static b(Lw/e;)F
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw/e;->b(I)Lt/L;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lw/e;->b(I)Lt/L;

    move-result-object v1

    invoke-static {v0, v1}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v0

    goto :goto_3
.end method

.method public static c(Lw/e;)I
    .registers 6

    invoke-static {p0}, Lv/b;->b(Lw/e;)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x4075180000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_18

    float-to-double v1, v0

    const-wide v3, 0x4036800000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    float-to-double v1, v0

    const-wide v3, 0x4050e00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_26

    const/4 v0, 0x2

    goto :goto_19

    :cond_26
    float-to-double v1, v0

    const-wide v3, 0x405c200000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_32

    const/4 v0, 0x3

    goto :goto_19

    :cond_32
    float-to-double v1, v0

    const-wide v3, 0x4063b00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_3e

    const/4 v0, 0x4

    goto :goto_19

    :cond_3e
    float-to-double v1, v0

    const-wide v3, 0x4069500000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_4a

    const/4 v0, 0x5

    goto :goto_19

    :cond_4a
    float-to-double v1, v0

    const-wide v3, 0x406ef00000000000L

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_56

    const/4 v0, 0x6

    goto :goto_19

    :cond_56
    float-to-double v0, v0

    const-wide v2, 0x4072480000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_62

    const/4 v0, 0x7

    goto :goto_19

    :cond_62
    const/16 v0, 0x8

    goto :goto_19
.end method
