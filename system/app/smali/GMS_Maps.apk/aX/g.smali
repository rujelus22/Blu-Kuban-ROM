.class public Lax/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/N;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lax/g;->a:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lax/g;->b:Ljava/util/List;

    .line 47
    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/N;
    .registers 3
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lax/g;->a(I)Lax/P;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lax/P;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 57
    return-object v0
.end method

.method private d(I)Lax/P;
    .registers 5
    .parameter

    .prologue
    .line 66
    new-instance v1, Lax/P;

    invoke-direct {v1, p1}, Lax/P;-><init>(I)V

    .line 67
    iget-object v0, p0, Lax/g;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lax/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/Q;

    .line 71
    invoke-virtual {v1, v0}, Lax/P;->a(Lax/Q;)V

    goto :goto_14

    .line 73
    :cond_24
    return-object v1
.end method

.method private e(I)Lax/P;
    .registers 4
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lax/g;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/P;

    return-object v0
.end method


# virtual methods
.method public a(I)Lax/P;
    .registers 3
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lax/g;->e(I)Lax/P;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1}, Lax/g;->d(I)Lax/P;

    move-result-object v0

    goto :goto_6
.end method

.method public a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lax/g;->e(I)Lax/P;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_b

    .line 102
    invoke-interface {v0, p1, p2}, Lax/N;->a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 104
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lax/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(ILax/O;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lax/g;->a(I)Lax/P;

    move-result-object v0

    .line 121
    invoke-interface {v0, p1, p2}, Lax/N;->a(ILax/O;)V

    .line 122
    return-void
.end method

.method public a(Lax/Q;)V
    .registers 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lax/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lax/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/P;

    .line 150
    invoke-virtual {v0, p1}, Lax/P;->a(Lax/Q;)V

    goto :goto_f

    .line 152
    :cond_1f
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 200
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 201
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_12

    .line 202
    invoke-virtual {p1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v2}, Lax/g;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/N;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 204
    :cond_12
    return-void
.end method

.method public a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lax/g;->a(I)Lax/P;

    move-result-object v0

    .line 127
    invoke-interface {v0, p1, p2}, Lax/N;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public b(I)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lax/g;->e(I)Lax/P;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_b

    .line 112
    invoke-interface {v0, p1}, Lax/N;->b(I)Ljava/util/List;

    move-result-object v0

    .line 114
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_a
.end method

.method public b()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lax/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/P;

    .line 170
    invoke-virtual {v0}, Lax/P;->a()V

    goto :goto_a

    .line 172
    :cond_1a
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lax/g;->a(I)Lax/P;

    move-result-object v0

    .line 138
    invoke-interface {v0, p1, p2}, Lax/N;->b(ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public b(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lax/g;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 187
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbo/j;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 188
    iget-object v0, p0, Lax/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/P;

    .line 189
    const/4 v3, 0x1

    invoke-virtual {v0}, Lax/P;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_11

    .line 191
    :cond_26
    return-object v1
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lax/g;->e(I)Lax/P;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_9

    .line 178
    invoke-interface {v0, p1}, Lax/N;->c(I)V

    .line 180
    :cond_9
    return-void
.end method
