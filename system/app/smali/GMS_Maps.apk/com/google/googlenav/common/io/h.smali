.class public Lcom/google/googlenav/common/io/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/j;


# instance fields
.field private final a:Ljava/util/Hashtable;

.field private b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/h;->a:Ljava/util/Hashtable;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/io/h;->b([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 189
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 179
    return-void
.end method

.method public a(Ljava/lang/String;[B)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 162
    if-nez p2, :cond_9

    .line 163
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public a_(Ljava/lang/String;)[B
    .registers 3
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public declared-synchronized b([BLjava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 116
    monitor-enter p0

    if-nez p1, :cond_6

    .line 117
    const/4 v0, 0x0

    :try_start_4
    new-array p1, v0, [B

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    array-length v0, p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 116
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 74
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 73
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 85
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 86
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 88
    iget-object v3, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_c

    .line 83
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_2b
    :try_start_2b
    iput-object v2, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    .line 92
    monitor-exit p0

    return-void
.end method

.method public d(Ljava/lang/String;)[B
    .registers 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/common/io/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 148
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 149
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 151
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_b

    .line 146
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :cond_24
    :try_start_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 155
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_21

    .line 157
    monitor-exit p0

    return-object v0
.end method
