.class public final Lcom/google/common/cache/h;
.super Ljava/lang/Object;
.source "SourceFile"


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
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_4e

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_50

    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 75
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-ltz v0, :cond_52

    const/4 v0, 0x1

    :goto_28
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 76
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-ltz v0, :cond_54

    const/4 v0, 0x1

    :goto_32
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v0, p11, v0

    if-ltz v0, :cond_56

    const/4 v0, 0x1

    :goto_3c
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 79
    iput-wide p1, p0, Lcom/google/common/cache/h;->a:J

    .line 80
    iput-wide p3, p0, Lcom/google/common/cache/h;->b:J

    .line 81
    iput-wide p5, p0, Lcom/google/common/cache/h;->c:J

    .line 82
    iput-wide p7, p0, Lcom/google/common/cache/h;->d:J

    .line 83
    iput-wide p9, p0, Lcom/google/common/cache/h;->e:J

    .line 84
    iput-wide p11, p0, Lcom/google/common/cache/h;->f:J

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
.method public final a()J
    .registers 3

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/common/cache/h;->a:J

    return-wide v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/common/cache/h;->b:J

    return-wide v0
.end method

.method public final c()J
    .registers 3

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/google/common/cache/h;->c:J

    return-wide v0
.end method

.method public final d()J
    .registers 3

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/google/common/cache/h;->d:J

    return-wide v0
.end method

.method public final e()J
    .registers 3

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/google/common/cache/h;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 246
    instance-of v1, p1, Lcom/google/common/cache/h;

    if-eqz v1, :cond_38

    .line 247
    check-cast p1, Lcom/google/common/cache/h;

    .line 248
    iget-wide v1, p0, Lcom/google/common/cache/h;->a:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/common/cache/h;->b:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/common/cache/h;->c:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/common/cache/h;->d:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/common/cache/h;->e:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-wide v1, p0, Lcom/google/common/cache/h;->f:J

    iget-wide v3, p1, Lcom/google/common/cache/h;->f:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    const/4 v0, 0x1

    .line 255
    :cond_38
    return v0
.end method

.method public final f()J
    .registers 3

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/google/common/cache/h;->f:J

    return-wide v0
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    .line 240
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/common/cache/h;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/cache/h;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/cache/h;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/common/cache/h;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/common/cache/h;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/cache/h;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 260
    invoke-static {p0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ab;->a(Ljava/lang/String;J)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ab;->a(Ljava/lang/String;J)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ab;->a(Ljava/lang/String;J)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ab;->a(Ljava/lang/String;J)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lcom/google/common/cache/h;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ab;->a(Ljava/lang/String;J)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lcom/google/common/cache/h;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ab;->a(Ljava/lang/String;J)Lcom/google/common/base/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
