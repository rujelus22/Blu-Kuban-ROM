.class public final Lt/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/m;


# direct methods
.method public constructor <init>(Lt/m;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lt/m;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "full feature ID required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-object p1, p0, Lt/r;->a:Lt/m;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lt/r;
    .registers 3

    :try_start_0
    new-instance v0, Lt/r;

    invoke-static {p0}, Lt/m;->a(Ljava/lang/String;)Lt/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lt/r;-><init>(Lt/m;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a()Lt/m;
    .registers 2

    iget-object v0, p0, Lt/r;->a:Lt/m;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lt/r;->a:Lt/m;

    invoke-virtual {v0}, Lt/m;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lt/r;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lt/r;->a:Lt/m;

    invoke-virtual {v2}, Lt/m;->a()J

    move-result-wide v2

    check-cast p1, Lt/r;

    iget-object v4, p1, Lt/r;->a:Lt/m;

    invoke-virtual {v4}, Lt/m;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1d
    instance-of v2, p1, Lt/y;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lt/r;->a:Lt/m;

    invoke-virtual {v2}, Lt/m;->a()J

    move-result-wide v2

    check-cast p1, Lt/y;

    invoke-virtual {p1}, Lt/y;->a()Lt/r;

    move-result-object v4

    iget-object v4, v4, Lt/r;->a:Lt/m;

    invoke-virtual {v4}, Lt/m;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_39
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lt/r;->a:Lt/m;

    invoke-virtual {v0}, Lt/m;->a()J

    move-result-wide v0

    iget-object v2, p0, Lt/r;->a:Lt/m;

    invoke-virtual {v2}, Lt/m;->a()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/r;->a:Lt/m;

    invoke-virtual {v0}, Lt/m;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
