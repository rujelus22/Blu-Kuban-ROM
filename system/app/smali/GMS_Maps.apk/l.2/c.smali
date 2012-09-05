.class public Ll/c;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>(DDD)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Ll/c;->d:D

    iput-wide p1, p0, Ll/c;->a:D

    iput-wide p3, p0, Ll/c;->b:D

    iput-wide p5, p0, Ll/c;->c:D

    return-void
.end method

.method public constructor <init>([Ljava/lang/Double;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v3, -0x4010

    iput-wide v3, p0, Ll/c;->d:D

    array-length v0, p1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2b

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Ll/c;->a:D

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Ll/c;->b:D

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Ll/c;->c:D

    return-void

    :cond_2b
    move v0, v2

    goto :goto_e
.end method


# virtual methods
.method public a()D
    .registers 7

    const-wide/high16 v4, 0x4000

    iget-wide v0, p0, Ll/c;->d:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_24

    iget-wide v0, p0, Ll/c;->a:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Ll/c;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ll/c;->c:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Ll/c;->d:D

    :cond_24
    iget-wide v0, p0, Ll/c;->d:D

    return-wide v0
.end method

.method public a(DDD)D
    .registers 11

    iget-wide v0, p0, Ll/c;->a:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Ll/c;->b:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    iget-wide v2, p0, Ll/c;->c:D

    mul-double/2addr v2, p5

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public a(D)V
    .registers 5

    iget-wide v0, p0, Ll/c;->a:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ll/c;->a:D

    iget-wide v0, p0, Ll/c;->b:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ll/c;->b:D

    iget-wide v0, p0, Ll/c;->c:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ll/c;->c:D

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Ll/c;->d:D

    return-void
.end method

.method public a(Ll/c;)V
    .registers 6

    iget-wide v0, p0, Ll/c;->a:D

    iget-wide v2, p1, Ll/c;->a:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ll/c;->a:D

    iget-wide v0, p0, Ll/c;->b:D

    iget-wide v2, p1, Ll/c;->b:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ll/c;->b:D

    iget-wide v0, p0, Ll/c;->c:D

    iget-wide v2, p1, Ll/c;->c:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ll/c;->c:D

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Ll/c;->d:D

    return-void
.end method

.method public b(DDD)Ll/c;
    .registers 14

    new-instance v0, Ll/c;

    iget-wide v1, p0, Ll/c;->a:D

    iget-wide v3, p0, Ll/c;->b:D

    iget-wide v5, p0, Ll/c;->c:D

    invoke-direct/range {v0 .. v6}, Ll/c;-><init>(DDD)V

    invoke-virtual {v0}, Ll/c;->b()V

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ll/c;->a(DDD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ll/c;->a(D)V

    return-object v0
.end method

.method public b()V
    .registers 5

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {p0}, Ll/c;->a()D

    move-result-wide v0

    div-double v0, v2, v0

    invoke-virtual {p0, v0, v1}, Ll/c;->a(D)V

    iput-wide v2, p0, Ll/c;->d:D

    return-void
.end method
