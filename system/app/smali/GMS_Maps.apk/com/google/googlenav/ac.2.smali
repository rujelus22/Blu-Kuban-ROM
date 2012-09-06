.class public Lcom/google/googlenav/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/h;
.implements Lcom/google/googlenav/common/util/n;


# static fields
.field private static final a:Lcom/google/googlenav/aF;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentMap;

.field private c:Lcom/google/googlenav/aE;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Lcom/google/googlenav/aF;

    invoke-direct {v0, v1, v1}, Lcom/google/googlenav/aF;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cy;)V

    sput-object v0, Lcom/google/googlenav/aC;->a:Lcom/google/googlenav/aF;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/common/collect/cF;

    invoke-direct {v0}, Lcom/google/common/collect/cF;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/collect/cF;->a(I)Lcom/google/common/collect/cF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/cF;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/aD;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/googlenav/aC;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/aC;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/googlenav/aG;->a:Lcom/google/googlenav/aC;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/googlenav/aF;
    .registers 3
    .parameter

    .prologue
    .line 132
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 133
    iget-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aF;

    .line 135
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 7
    .parameter

    .prologue
    .line 95
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bF()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 96
    iget-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aF;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bj()Lcom/google/googlenav/cy;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/aF;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cy;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_24
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 182
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/aC;->c:Lcom/google/googlenav/aE;

    if-eqz v0, :cond_e

    .line 159
    iget-object v0, p0, Lcom/google/googlenav/aC;->c:Lcom/google/googlenav/aE;

    invoke-interface {v0}, Lcom/google/googlenav/aE;->a()V

    .line 161
    :cond_e
    return-void
.end method

.method public b(Lcom/google/googlenav/ai;)V
    .registers 5
    .parameter

    .prologue
    .line 106
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/aC;->a:Lcom/google/googlenav/aF;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_13
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/aC;->a:Lcom/google/googlenav/aF;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public c(Lcom/google/googlenav/ai;)Z
    .registers 4
    .parameter

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 120
    iget-object v1, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aF;

    iget-object v0, v0, Lcom/google/googlenav/aF;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ai;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 5

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcom/google/googlenav/aC;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aF;

    .line 188
    iget-object v3, v0, Lcom/google/googlenav/aF;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v3, :cond_33

    .line 189
    iget-object v0, v0, Lcom/google/googlenav/aF;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getNumBytesUsed()I

    move-result v0

    add-int/2addr v0, v1

    :goto_23
    move v1, v0

    goto :goto_c

    .line 192
    :cond_25
    new-instance v0, Lcom/google/googlenav/common/util/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_33
    move v0, v1

    goto :goto_23
.end method
