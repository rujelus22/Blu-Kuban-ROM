.class public Lbb/C;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:J


# virtual methods
.method public a(JI)F
    .registers 7

    iget-wide v0, p0, Lbb/C;->a:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v1, p0, Lbb/C;->c:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v0, v1

    return v0
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lbb/C;->b:J

    return-wide v0
.end method

.method public a(FI)J
    .registers 7

    iget-wide v0, p0, Lbb/C;->c:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-long v0, v0

    iget-wide v2, p0, Lbb/C;->a:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)J
    .registers 7

    iget-wide v0, p0, Lbb/C;->b:J

    div-long v0, p1, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lbb/C;->b:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public b(J)J
    .registers 7

    iget-wide v0, p0, Lbb/C;->b:J

    div-long v0, p1, v0

    iget-wide v2, p0, Lbb/C;->b:J

    mul-long/2addr v0, v2

    return-wide v0
.end method
