.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public final mightContain(Ljava/lang/Object;Lcom/google/common/hash/f;ILcom/google/common/hash/e;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-static {}, Lcom/google/common/hash/m;->a()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/l;->a(Ljava/lang/Object;Lcom/google/common/hash/f;)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/g;->b()J

    move-result-wide v3

    .line 45
    long-to-int v5, v3

    .line 46
    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    long-to-int v4, v3

    move v3, v2

    .line 47
    :goto_1c
    if-gt v3, p3, :cond_45

    .line 48
    mul-int v0, v3, v4

    add-int/2addr v0, v5

    .line 49
    if-gez v0, :cond_25

    .line 50
    xor-int/lit8 v0, v0, -0x1

    .line 53
    :cond_25
    invoke-virtual {p4}, Lcom/google/common/hash/e;->a()I

    move-result v6

    rem-int/2addr v0, v6

    iget-object v6, p4, Lcom/google/common/hash/e;->a:[J

    shr-int/lit8 v7, v0, 0x6

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3f

    move v0, v2

    :goto_3b
    if-nez v0, :cond_41

    move v0, v1

    .line 57
    :goto_3e
    return v0

    :cond_3f
    move v0, v1

    .line 53
    goto :goto_3b

    .line 47
    :cond_41
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c

    :cond_45
    move v0, v2

    .line 57
    goto :goto_3e
.end method

.method public final put(Ljava/lang/Object;Lcom/google/common/hash/f;ILcom/google/common/hash/e;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/google/common/hash/m;->a()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/l;->a(Ljava/lang/Object;Lcom/google/common/hash/f;)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/g;->b()J

    move-result-wide v0

    .line 30
    long-to-int v2, v0

    .line 31
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v3, v0

    .line 32
    const/4 v0, 0x1

    move v1, v0

    :goto_1b
    if-gt v1, p3, :cond_39

    .line 33
    mul-int v0, v1, v3

    add-int/2addr v0, v2

    .line 34
    if-gez v0, :cond_24

    .line 35
    xor-int/lit8 v0, v0, -0x1

    .line 38
    :cond_24
    invoke-virtual {p4}, Lcom/google/common/hash/e;->a()I

    move-result v4

    rem-int/2addr v0, v4

    iget-object v4, p4, Lcom/google/common/hash/e;->a:[J

    shr-int/lit8 v5, v0, 0x6

    aget-wide v6, v4, v5

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 40
    :cond_39
    return-void
.end method
