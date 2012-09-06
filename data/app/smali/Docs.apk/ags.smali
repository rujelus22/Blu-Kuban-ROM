.class public final Lags;
.super Ljava/lang/Object;
.source "CacheStats.java"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4c

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, LafQ;->a(Z)V

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_4e

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, LafQ;->a(Z)V

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_50

    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, LafQ;->a(Z)V

    .line 75
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-ltz v0, :cond_52

    const/4 v0, 0x1

    :goto_28
    invoke-static {v0}, LafQ;->a(Z)V

    .line 76
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-ltz v0, :cond_54

    const/4 v0, 0x1

    :goto_32
    invoke-static {v0}, LafQ;->a(Z)V

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v0, p11, v0

    if-ltz v0, :cond_56

    const/4 v0, 0x1

    :goto_3c
    invoke-static {v0}, LafQ;->a(Z)V

    .line 79
    iput-wide p1, p0, Lags;->a:J

    .line 80
    iput-wide p3, p0, Lags;->b:J

    .line 81
    iput-wide p5, p0, Lags;->c:J

    .line 82
    iput-wide p7, p0, Lags;->d:J

    .line 83
    iput-wide p9, p0, Lags;->e:J

    .line 84
    iput-wide p11, p0, Lags;->f:J

    .line 85
    return-void

    .line 72
    :cond_4c
    const/4 v0, 0x0

    goto :goto_a

    .line 73
    :cond_4e
    const/4 v0, 0x0

    goto :goto_14

    .line 74
    :cond_50
    const/4 v0, 0x0

    goto :goto_1e

    .line 75
    :cond_52
    const/4 v0, 0x0

    goto :goto_28

    .line 76
    :cond_54
    const/4 v0, 0x0

    goto :goto_32

    .line 77
    :cond_56
    const/4 v0, 0x0

    goto :goto_3c
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 246
    instance-of v1, p1, Lags;

    if-eqz v1, :cond_38

    .line 247
    check-cast p1, Lags;

    .line 248
    iget-wide v1, p0, Lags;->a:J

    iget-wide v3, p1, Lags;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lags;->b:J

    iget-wide v3, p1, Lags;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lags;->c:J

    iget-wide v3, p1, Lags;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lags;->d:J

    iget-wide v3, p1, Lags;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lags;->e:J

    iget-wide v3, p1, Lags;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lags;->f:J

    iget-wide v3, p1, Lags;->f:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    const/4 v0, 0x1

    .line 255
    :cond_38
    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 240
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lags;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lags;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lags;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lags;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lags;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lags;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 260
    invoke-static {p0}, LafL;->a(Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lags;->a:J

    invoke-virtual {v0, v1, v2, v3}, LafN;->a(Ljava/lang/String;J)LafN;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lags;->b:J

    invoke-virtual {v0, v1, v2, v3}, LafN;->a(Ljava/lang/String;J)LafN;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lags;->c:J

    invoke-virtual {v0, v1, v2, v3}, LafN;->a(Ljava/lang/String;J)LafN;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lags;->d:J

    invoke-virtual {v0, v1, v2, v3}, LafN;->a(Ljava/lang/String;J)LafN;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lags;->e:J

    invoke-virtual {v0, v1, v2, v3}, LafN;->a(Ljava/lang/String;J)LafN;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lags;->f:J

    invoke-virtual {v0, v1, v2, v3}, LafN;->a(Ljava/lang/String;J)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
