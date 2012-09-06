.class public final Ln/p;
.super Ln/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Ln/n;-><init>(JJ)V

    .line 344
    return-void
.end method

.method public static b(Ljava/lang/String;)Ln/p;
    .registers 7
    .parameter

    .prologue
    .line 352
    :try_start_0
    invoke-static {p0}, Ln/m;->a(Ljava/lang/String;)Ln/m;

    move-result-object v2

    .line 353
    instance-of v1, v2, Ln/n;

    if-eqz v1, :cond_1a

    .line 354
    new-instance v3, Ln/p;

    move-object v0, v2

    check-cast v0, Ln/n;

    move-object v1, v0

    iget-wide v4, v1, Ln/n;->c:J

    check-cast v2, Ln/n;

    iget-wide v1, v2, Ln/n;->d:J

    invoke-direct {v3, v4, v5, v1, v2}, Ln/p;-><init>(JJ)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_19

    move-object v1, v3

    .line 360
    :goto_18
    return-object v1

    .line 357
    :catch_19
    move-exception v1

    .line 360
    :cond_1a
    const/4 v1, 0x0

    goto :goto_18
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 395
    iget-wide v0, p0, Ln/p;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    if-ne p0, p1, :cond_5

    .line 381
    :cond_4
    :goto_4
    return v0

    .line 373
    :cond_5
    instance-of v2, p1, Ln/p;

    if-eqz v2, :cond_15

    .line 374
    iget-wide v2, p0, Ln/p;->d:J

    check-cast p1, Ln/p;

    iget-wide v4, p1, Ln/p;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 377
    :cond_15
    instance-of v2, p1, Ln/B;

    if-eqz v2, :cond_29

    .line 378
    iget-wide v2, p0, Ln/p;->d:J

    check-cast p1, Ln/B;

    invoke-virtual {p1}, Ln/B;->a()Ln/p;

    move-result-object v4

    iget-wide v4, v4, Ln/p;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_29
    move v0, v1

    .line 381
    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 386
    iget-wide v0, p0, Ln/p;->d:J

    iget-wide v2, p0, Ln/p;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
