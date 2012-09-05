.class public final Lcom/google/common/collect/Lists;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/util/ArrayList;
    .registers 7
    .parameter

    .prologue
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    if-ltz p0, :cond_1c

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    const-wide/16 v2, 0x5

    int-to-long v4, p0

    add-long/2addr v2, v4

    div-int/lit8 v0, p0, 0xa

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_1c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 108
    invoke-static {p0}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_f

    .line 112
    check-cast p0, Ljava/util/Collection;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    :goto_e
    return-object v0

    :cond_f
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_e
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 131
    invoke-static {p0}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 136
    :cond_16
    return-object v0
.end method
