.class public final Lcom/google/common/collect/R;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/base/G;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 336
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/G;->a(Ljava/lang/String;)Lcom/google/common/base/G;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/R;->a:Lcom/google/common/base/G;

    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 310
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/R;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    sget-object v1, Lcom/google/common/collect/R;->a:Lcom/google/common/base/G;

    new-instance v2, Lcom/google/common/collect/S;

    invoke-direct {v2, p0}, Lcom/google/common/collect/S;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2}, Lcom/google/common/collect/bT;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/G;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 318
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Ljava/lang/StringBuilder;
    .registers 6
    .parameter

    .prologue
    .line 325
    if-ltz p0, :cond_1a

    const/4 v0, 0x1

    :goto_3
    const-string v1, "size must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, p0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    .line 325
    :cond_1a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 1
    .parameter

    .prologue
    .line 333
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static a(Ljava/util/Collection;Lcom/google/common/base/Q;)Ljava/util/Collection;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 76
    instance-of v0, p0, Lcom/google/common/collect/T;

    if-eqz v0, :cond_b

    .line 79
    check-cast p0, Lcom/google/common/collect/T;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/T;->a(Lcom/google/common/base/Q;)Lcom/google/common/collect/T;

    move-result-object v0

    .line 82
    :goto_a
    return-object v0

    :cond_b
    new-instance v2, Lcom/google/common/collect/T;

    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Q;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/T;-><init>(Ljava/util/Collection;Lcom/google/common/base/Q;)V

    move-object v0, v2

    goto :goto_a
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 92
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 94
    :goto_4
    return v0

    .line 93
    :catch_5
    move-exception v0

    .line 94
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 299
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 300
    const/4 v0, 0x0

    .line 303
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method
