.class public LTC;
.super Ljava/lang/Object;
.source "ContentSyncTasks.java"


# instance fields
.field private a:I

.field private a:J

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lld;",
            "LTE;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lld;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v0, p0, LTC;->a:I

    .line 125
    iput v0, p0, LTC;->b:I

    .line 126
    iput v0, p0, LTC;->c:I

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LTC;->a:J

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LTC;->a:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LTC;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_1
    iget v0, p0, LTC;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()J
    .registers 3

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, LTC;->a:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lld;)LTE;
    .registers 3
    .parameter

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LTC;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTE;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lld;)V
    .registers 5
    .parameter

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LTC;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTE;

    .line 170
    if-eqz v0, :cond_16

    .line 171
    invoke-virtual {v0}, LTE;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 172
    iget-object v0, p0, LTC;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_27

    .line 182
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 174
    :cond_18
    :try_start_18
    invoke-virtual {v0}, LTE;->a()LTD;

    move-result-object v1

    sget-object v2, LTD;->c:LTD;

    if-ne v1, v2, :cond_2a

    .line 175
    iget v0, p0, LTC;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LTC;->a:I
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_27

    goto :goto_16

    .line 169
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 176
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, LTE;->a()LTD;

    move-result-object v0

    sget-object v1, LTD;->e:LTD;

    if-ne v0, v1, :cond_39

    .line 177
    iget v0, p0, LTC;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LTC;->c:I

    goto :goto_16

    .line 179
    :cond_39
    iget v0, p0, LTC;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LTC;->b:I
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_27

    goto :goto_16
.end method

.method public declared-synchronized a(Lld;LTE;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, LTC;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTE;

    .line 139
    invoke-virtual {p2}, LTE;->a()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 140
    iget-object v1, p0, LTC;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_17
    :goto_17
    invoke-virtual {p2}, LTE;->a()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p2}, LTE;->a()LTD;

    move-result-object v1

    sget-object v2, LTD;->b:LTD;

    if-ne v1, v2, :cond_3a

    .line 146
    invoke-virtual {p2}, LTE;->a()J

    move-result-wide v1

    .line 147
    iget-wide v3, p0, LTC;->a:J

    add-long/2addr v1, v3

    iput-wide v1, p0, LTC;->a:J

    .line 148
    if-eqz v0, :cond_3a

    .line 149
    invoke-virtual {v0}, LTE;->a()J

    move-result-wide v1

    .line 150
    iget-wide v3, p0, LTC;->a:J

    sub-long v1, v3, v1

    iput-wide v1, p0, LTC;->a:J

    .line 154
    :cond_3a
    if-eqz v0, :cond_43

    .line 155
    invoke-virtual {v0}, LTE;->a()LTD;

    move-result-object v0

    invoke-virtual {p2, v0}, LTE;->a(LTD;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_52

    .line 157
    :cond_43
    monitor-exit p0

    return-void

    .line 141
    :cond_45
    :try_start_45
    iget-object v1, p0, LTC;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 142
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, LTE;->a(Z)V
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_52

    goto :goto_17

    .line 137
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LTC;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lld;)Z
    .registers 3
    .parameter

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LTC;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .registers 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    iget v0, p0, LTC;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lld;LTE;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LTC;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    move-result v0

    if-nez v0, :cond_b

    .line 166
    :goto_9
    monitor-exit p0

    return-void

    .line 163
    :cond_b
    :try_start_b
    iget-object v0, p0, LTC;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTE;

    .line 164
    invoke-static {v0, p2}, LTE;->a(LTE;LTE;)LTE;

    move-result-object v0

    .line 165
    invoke-virtual {p0, p1, v0}, LTC;->a(Lld;LTE;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    goto :goto_9

    .line 160
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .registers 3

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LTC;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, LTC;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .registers 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    iget v0, p0, LTC;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
