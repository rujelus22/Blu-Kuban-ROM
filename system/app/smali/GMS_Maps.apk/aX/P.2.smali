.class public Lax/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/N;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/List;

.field private final d:I

.field private e:Lax/O;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lax/P;->a:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lax/P;->b:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lax/P;->c:Ljava/util/List;

    .line 50
    iput p1, p0, Lax/P;->d:I

    .line 51
    return-void
.end method

.method private a(J)V
    .registers 6
    .parameter

    .prologue
    .line 105
    iget-object v1, p0, Lax/P;->b:Ljava/util/Map;

    monitor-enter v1

    .line 106
    :try_start_3
    iget-object v0, p0, Lax/P;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    if-nez v0, :cond_13

    .line 108
    monitor-exit v1

    .line 112
    :goto_12
    return-void

    .line 110
    :cond_13
    iget-object v2, p0, Lax/P;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit v1

    goto :goto_12

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 125
    const/4 v0, 0x0

    .line 150
    :cond_9
    :goto_9
    return v0

    .line 128
    :cond_a
    invoke-direct {p0, p2}, Lax/P;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v1

    .line 129
    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    iget-object v4, p0, Lax/P;->e:Lax/O;

    if-eqz v4, :cond_27

    iget-object v4, p0, Lax/P;->e:Lax/O;

    invoke-interface {v4, p2}, Lax/O;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 134
    invoke-direct {p0, v1, v2}, Lax/P;->a(J)V

    .line 135
    if-eqz p3, :cond_9

    .line 137
    invoke-direct {p0, p1, v3}, Lax/P;->c(ILjava/lang/String;)V

    goto :goto_9

    .line 142
    :cond_27
    iget-object v4, p0, Lax/P;->b:Ljava/util/Map;

    monitor-enter v4

    .line 143
    :try_start_2a
    invoke-direct {p0, v1, v2}, Lax/P;->a(J)V

    .line 144
    iget-object v5, p0, Lax/P;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lax/P;->b:Ljava/util/Map;

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_42

    .line 147
    if-eqz p3, :cond_9

    .line 148
    invoke-direct {p0, p1, v3}, Lax/P;->c(ILjava/lang/String;)V

    goto :goto_9

    .line 146
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x7

    .line 115
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 116
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 120
    :goto_b
    return-wide v0

    .line 119
    :cond_c
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_b
.end method

.method private c(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lax/P;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/Q;

    .line 58
    invoke-interface {v0, p1, p2}, Lax/Q;->a_(ILjava/lang/String;)V

    goto :goto_6

    .line 60
    :cond_16
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    iget v0, p0, Lax/P;->d:I

    if-ne p1, v0, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move-object v0, v1

    .line 85
    :cond_8
    :goto_8
    return-object v0

    .line 67
    :cond_9
    iget-object v0, p0, Lax/P;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 68
    if-nez v0, :cond_8

    .line 74
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3f

    .line 75
    iget-object v0, p0, Lax/P;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 76
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_21

    .line 78
    invoke-static {v3}, Lax/a;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_8

    :cond_3f
    move-object v0, v1

    .line 85
    goto :goto_8
.end method

.method public a()V
    .registers 3

    .prologue
    .line 207
    iget-object v1, p0, Lax/P;->b:Ljava/util/Map;

    monitor-enter v1

    .line 208
    :try_start_3
    iget-object v0, p0, Lax/P;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 209
    iget-object v0, p0, Lax/P;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    monitor-exit v1

    .line 211
    return-void

    .line 210
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(ILax/O;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lax/P;->d:I

    if-eq p1, v0, :cond_5

    .line 102
    :goto_4
    return-void

    .line 101
    :cond_5
    iput-object p2, p0, Lax/P;->e:Lax/O;

    goto :goto_4
.end method

.method public a(Lax/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lax/P;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 228
    iget-object v2, p0, Lax/P;->b:Ljava/util/Map;

    monitor-enter v2

    .line 229
    :try_start_9
    invoke-virtual {p0}, Lax/P;->a()V

    .line 230
    :goto_c
    if-ge v0, v1, :cond_1c

    .line 231
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 232
    iget v4, p0, Lax/P;->d:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lax/P;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Z

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 234
    :cond_1c
    monitor-exit v2

    .line 235
    return-void

    .line 234
    :catchall_1e
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 156
    iget v1, p0, Lax/P;->d:I

    if-eq p1, v1, :cond_7

    .line 165
    :cond_6
    :goto_6
    return v0

    .line 161
    :cond_7
    invoke-virtual {p2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 164
    invoke-virtual {p2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 165
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lax/P;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)Z

    move-result v0

    goto :goto_6
.end method

.method public b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 242
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbo/j;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 243
    const/4 v0, 0x1

    iget v2, p0, Lax/P;->d:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 244
    iget-object v0, p0, Lax/P;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 245
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_17

    .line 247
    :cond_28
    return-object v1
.end method

.method public b(I)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lax/P;->d:I

    if-eq p1, v0, :cond_9

    .line 91
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lax/P;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_8
.end method

.method public b(ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 175
    iget v0, p0, Lax/P;->d:I

    if-eq p1, v0, :cond_5

    .line 187
    :goto_4
    return-void

    .line 179
    :cond_5
    iget-object v1, p0, Lax/P;->b:Ljava/util/Map;

    monitor-enter v1

    .line 180
    :try_start_8
    iget-object v0, p0, Lax/P;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 181
    if-eqz v0, :cond_19

    .line 182
    invoke-direct {p0, v0}, Lax/P;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v2

    .line 183
    invoke-direct {p0, v2, v3}, Lax/P;->a(J)V

    .line 185
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1e

    .line 186
    invoke-direct {p0, p1, p2}, Lax/P;->c(ILjava/lang/String;)V

    goto :goto_4

    .line 185
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public b(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0, p1, p2}, Lax/P;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 215
    iget v0, p0, Lax/P;->d:I

    if-ne p1, v0, :cond_7

    .line 216
    invoke-virtual {p0}, Lax/P;->a()V

    .line 218
    :cond_7
    return-void
.end method
