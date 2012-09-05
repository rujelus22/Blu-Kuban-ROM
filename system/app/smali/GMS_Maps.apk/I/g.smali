.class public LI/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/graphics/Point;

.field private static final b:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, LI/g;->a:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, LI/g;->b:Landroid/graphics/Point;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LaJ/B;LaJ/B;)F
    .registers 4

    invoke-virtual {p0, p1}, LaJ/B;->b(LaJ/B;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(LaJ/B;LaJ/B;LaJ/B;)F
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LI/g;->a(LaJ/B;LaJ/B;LaJ/B;Z)F

    move-result v0

    return v0
.end method

.method private static a(LaJ/B;LaJ/B;LaJ/B;Z)F
    .registers 8

    invoke-static {p0, p1, p2}, LI/g;->c(LaJ/B;LaJ/B;LaJ/B;)F

    move-result v0

    if-eqz p3, :cond_11

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_33

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_33

    :cond_11
    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v1

    sget-object v2, LI/g;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v2

    sget-object v3, LI/g;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    new-instance v2, LaJ/B;

    invoke-direct {v2, v1, v0}, LaJ/B;-><init>(II)V

    invoke-static {v2, p0}, LI/g;->a(LaJ/B;LaJ/B;)F

    move-result v0

    :goto_32
    return v0

    :cond_33
    const/high16 v0, -0x4080

    goto :goto_32
.end method

.method private static a(Landroid/graphics/Point;)F
    .registers 3

    invoke-static {p0}, LI/g;->b(Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lbc/d;Lbc/a;Lbc/a;)F
    .registers 10

    iget-object v0, p1, Lbc/a;->a:Lbc/t;

    iget-object v1, p2, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/t;->a(Lbc/t;)I

    move-result v1

    if-nez v1, :cond_1b

    iget-object v0, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {p0, v0}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->w()F

    move-result v0

    iget v1, p2, Lbc/a;->b:F

    iget v2, p1, Lbc/a;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    if-lez v1, :cond_66

    :goto_1d
    iget-object v0, p2, Lbc/a;->a:Lbc/t;

    invoke-virtual {p0, v0}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    iget-object v2, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {p0, v2}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v2

    invoke-virtual {v0}, Lbc/h;->w()F

    move-result v0

    const/high16 v3, 0x3f80

    iget v4, p2, Lbc/a;->b:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    new-instance v3, Lbc/v;

    invoke-direct {v3, p0}, Lbc/v;-><init>(Lbc/d;)V

    iget-object v4, p2, Lbc/a;->a:Lbc/t;

    invoke-virtual {v3, v4}, Lbc/v;->a(Lbc/t;)Lbc/v;

    move-result-object v3

    :goto_3e
    invoke-virtual {v3}, Lbc/v;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v3}, Lbc/v;->a()Lbc/t;

    move-result-object v4

    iget-object v5, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v4, v5}, Lbc/t;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    :cond_50
    invoke-virtual {v2}, Lbc/h;->w()F

    move-result v2

    iget v3, p1, Lbc/a;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    if-lez v1, :cond_1a

    neg-float v0, v0

    goto :goto_1a

    :cond_5c
    invoke-virtual {p0, v4}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v4

    invoke-virtual {v4}, Lbc/h;->w()F

    move-result v4

    add-float/2addr v0, v4

    goto :goto_3e

    :cond_66
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_1d
.end method

.method static a(D)I
    .registers 4

    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method static a(Landroid/graphics/Point;Landroid/graphics/Point;)J
    .registers 8

    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-long v0, v0

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/graphics/Point;->y:I

    int-to-long v2, v2

    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/location/Location;)LaJ/B;
    .registers 5

    new-instance v0, LaJ/B;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, LI/g;->a(D)I

    move-result v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, LI/g;->a(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    return-object v0
.end method

.method public static a(Lbc/d;Lbc/a;F)Lbc/a;
    .registers 11

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    iget-object v0, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {p0, v0}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->w()F

    move-result v2

    cmpl-float v0, p2, v6

    if-lez v0, :cond_62

    iget v0, p1, Lbc/a;->b:F

    sub-float v0, v5, v0

    mul-float v1, v2, v0

    cmpl-float v0, v1, p2

    if-lez v0, :cond_29

    iget v0, p1, Lbc/a;->b:F

    div-float v1, p2, v2

    add-float/2addr v1, v0

    new-instance v0, Lbc/a;

    iget-object v2, p1, Lbc/a;->a:Lbc/t;

    invoke-direct {v0, v2, v1}, Lbc/a;-><init>(Lbc/t;F)V

    move-object p1, v0

    :cond_28
    :goto_28
    return-object p1

    :cond_29
    new-instance v0, Lbc/v;

    invoke-direct {v0, p0}, Lbc/v;-><init>(Lbc/d;)V

    iget-object v3, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v3}, Lbc/v;->a(Lbc/t;)Lbc/v;

    move-result-object v3

    iget-object v0, p1, Lbc/a;->a:Lbc/t;

    :goto_36
    invoke-virtual {v3}, Lbc/v;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    cmpg-float v4, v1, p2

    if-gez v4, :cond_4e

    invoke-virtual {v3}, Lbc/v;->a()Lbc/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v2

    invoke-virtual {v2}, Lbc/h;->w()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_36

    :cond_4e
    cmpg-float v3, v1, p2

    if-gez v3, :cond_58

    new-instance p1, Lbc/a;

    invoke-direct {p1, v0, v5}, Lbc/a;-><init>(Lbc/t;F)V

    goto :goto_28

    :cond_58
    sub-float v1, p2, v1

    add-float/2addr v1, v2

    div-float/2addr v1, v2

    new-instance p1, Lbc/a;

    invoke-direct {p1, v0, v1}, Lbc/a;-><init>(Lbc/t;F)V

    goto :goto_28

    :cond_62
    cmpg-float v0, p2, v6

    if-gez v0, :cond_28

    neg-float v0, v2

    iget v1, p1, Lbc/a;->b:F

    mul-float v3, v0, v1

    cmpg-float v0, v3, p2

    if-gez v0, :cond_7d

    iget v0, p1, Lbc/a;->b:F

    div-float v1, p2, v2

    add-float/2addr v1, v0

    new-instance v0, Lbc/a;

    iget-object v2, p1, Lbc/a;->a:Lbc/t;

    invoke-direct {v0, v2, v1}, Lbc/a;-><init>(Lbc/t;F)V

    move-object p1, v0

    goto :goto_28

    :cond_7d
    new-instance v4, Lbc/v;

    invoke-direct {v4, p0}, Lbc/v;-><init>(Lbc/d;)V

    iget-object v1, p1, Lbc/a;->a:Lbc/t;

    iget-object v0, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v4, v0}, Lbc/v;->c(Lbc/t;)Lbc/t;

    move-result-object v0

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_8d
    if-eqz v0, :cond_a4

    cmpl-float v5, v2, p2

    if-lez v5, :cond_a4

    invoke-virtual {v4, v0}, Lbc/v;->c(Lbc/t;)Lbc/t;

    move-result-object v1

    invoke-virtual {p0, v0}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v3

    invoke-virtual {v3}, Lbc/h;->w()F

    move-result v3

    sub-float/2addr v2, v3

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_8d

    :cond_a4
    cmpl-float v0, v2, p2

    if-lez v0, :cond_af

    new-instance p1, Lbc/a;

    invoke-direct {p1, v1, v6}, Lbc/a;-><init>(Lbc/t;F)V

    goto/16 :goto_28

    :cond_af
    sub-float v0, p2, v2

    div-float/2addr v0, v3

    new-instance p1, Lbc/a;

    invoke-direct {p1, v1, v0}, Lbc/a;-><init>(Lbc/t;F)V

    goto/16 :goto_28
.end method

.method static a(Landroid/graphics/Point;IIII)V
    .registers 12

    const-wide v5, 0x41b5752a00000000L

    sub-int v0, p4, p2

    int-to-double v1, v0

    const-wide v3, -0x3e5a8ad600000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1b

    int-to-double v0, v0

    add-double/2addr v0, v5

    double-to-int v0, v0

    :cond_14
    :goto_14
    sub-int v1, p3, p1

    iput v1, p0, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    return-void

    :cond_1b
    int-to-double v1, v0

    const-wide v3, 0x41a5752a00000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_14

    int-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-int v0, v0

    goto :goto_14
.end method

.method public static b(LaJ/B;LaJ/B;LaJ/B;)F
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LI/g;->a(LaJ/B;LaJ/B;LaJ/B;Z)F

    move-result v0

    return v0
.end method

.method private static b(Landroid/graphics/Point;)J
    .registers 3

    invoke-static {p0, p0}, LI/g;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(LaJ/B;LaJ/B;LaJ/B;)F
    .registers 10

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v1

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v3

    invoke-virtual {p2}, LaJ/B;->c()I

    move-result v4

    invoke-virtual {p2}, LaJ/B;->e()I

    move-result v5

    sget-object v6, LI/g;->a:Landroid/graphics/Point;

    invoke-static {v6, v2, v3, v0, v1}, LI/g;->a(Landroid/graphics/Point;IIII)V

    sget-object v0, LI/g;->b:Landroid/graphics/Point;

    invoke-static {v0, v2, v3, v4, v5}, LI/g;->a(Landroid/graphics/Point;IIII)V

    sget-object v0, LI/g;->b:Landroid/graphics/Point;

    sget-object v1, LI/g;->a:Landroid/graphics/Point;

    invoke-static {v0, v1}, LI/g;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-float v0, v0

    sget-object v1, LI/g;->b:Landroid/graphics/Point;

    invoke-static {v1}, LI/g;->b(Landroid/graphics/Point;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static d(LaJ/B;LaJ/B;LaJ/B;)F
    .registers 8

    sget-object v0, LI/g;->a:Landroid/graphics/Point;

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v3

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LI/g;->a(Landroid/graphics/Point;IIII)V

    sget-object v0, LI/g;->b:Landroid/graphics/Point;

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v1

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {p2}, LaJ/B;->c()I

    move-result v3

    invoke-virtual {p2}, LaJ/B;->e()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LI/g;->a(Landroid/graphics/Point;IIII)V

    sget-object v0, LI/g;->a:Landroid/graphics/Point;

    sget-object v1, LI/g;->b:Landroid/graphics/Point;

    invoke-static {v0, v1}, LI/g;->a(Landroid/graphics/Point;Landroid/graphics/Point;)J

    move-result-wide v0

    long-to-float v0, v0

    sget-object v1, LI/g;->a:Landroid/graphics/Point;

    invoke-static {v1}, LI/g;->a(Landroid/graphics/Point;)F

    move-result v1

    sget-object v2, LI/g;->b:Landroid/graphics/Point;

    invoke-static {v2}, LI/g;->a(Landroid/graphics/Point;)F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method
