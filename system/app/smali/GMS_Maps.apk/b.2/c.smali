.class Lb/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lb/d;->c:Lb/d;

    const-wide v2, 0x4061c4fdf3b645a2L

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/d;->e:Lb/d;

    const-wide v2, 0x40591cfdf3b645a2L

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/d;->f:Lb/d;

    const-wide v2, 0x4065e7e76c8b4396L

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/d;->g:Lb/d;

    const-wide v2, 0x405b5428f5c28f5cL

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/d;->h:Lb/d;

    const-wide v2, 0x40709e9374bc6a7fL

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/c;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/util/Map;Lb/d;)D
    .registers 5

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-nez v0, :cond_10

    iget-object v0, p0, Lb/c;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/util/Map;)Z
    .registers 6

    sget-object v0, Lb/d;->d:Lb/d;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_20

    sget-object v0, Lb/d;->c:Lb/d;

    invoke-direct {p0, p1, v0}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4079

    cmpl-double v0, v0, v2

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private c(Ljava/util/Map;)D
    .registers 10

    const-wide/high16 v6, 0x3ff0

    const-wide v0, -0x3fff4504816f0069L

    const-wide v2, 0x3ffffe5c91d14e3cL

    sget-object v4, Lb/d;->a:Lb/d;

    invoke-direct {p0, p1, v4}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3fd1013a92a30553L

    sget-object v4, Lb/d;->b:Lb/d;

    invoke-direct {p0, p1, v4}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, -0x409c56d5cfaacd9fL

    sget-object v4, Lb/d;->c:Lb/d;

    invoke-direct {p0, p1, v4}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x40158b0f27bb2fecL

    sget-object v4, Lb/d;->d:Lb/d;

    invoke-direct {p0, p1, v4}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, -0x40876c8b43958106L

    sget-object v4, Lb/d;->e:Lb/d;

    invoke-direct {p0, p1, v4}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, -0x408353f7ced91687L

    sget-object v4, Lb/d;->f:Lb/d;

    invoke-direct {p0, p1, v4}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, -0x406978d4fdf3b646L

    sget-object v4, Lb/d;->g:Lb/d;

    invoke-direct {p0, p1, v4}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, -0x40bf9db22d0e5604L

    sget-object v4, Lb/d;->h:Lb/d;

    invoke-direct {p0, p1, v4}, Lb/c;->a(Ljava/util/Map;Lb/d;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x4005bf0a8b145769L

    neg-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v6

    div-double v0, v6, v0

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lb/g;
    .registers 8

    invoke-direct {p0, p1}, Lb/c;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lb/e;->a:Lb/g;

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1}, Lb/c;->c(Ljava/util/Map;)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_1f

    new-instance v0, Lb/g;

    sget-object v3, Le/G;->b:Le/G;

    const-wide/high16 v4, 0x3ff0

    sub-double v1, v4, v1

    invoke-direct {v0, v3, v1, v2}, Lb/g;-><init>(Le/G;D)V

    goto :goto_8

    :cond_1f
    new-instance v0, Lb/g;

    sget-object v3, Le/G;->a:Le/G;

    invoke-direct {v0, v3, v1, v2}, Lb/g;-><init>(Le/G;D)V

    goto :goto_8
.end method
