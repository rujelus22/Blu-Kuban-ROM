.class public Ll/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/e;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Z

.field private d:Z

.field private volatile e:Ll/e;

.field private volatile f:Ll/e;

.field private g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final h:Ll/i;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/g;->b:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll/g;->c:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ll/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 156
    new-instance v0, Ll/h;

    invoke-direct {v0, p0}, Ll/h;-><init>(Ll/g;)V

    iput-object v0, p0, Ll/g;->h:Ll/i;

    .line 167
    invoke-direct {p0}, Ll/g;->b()Z

    .line 168
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    .line 83
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v3

    invoke-virtual {v3}, Lt/k;->F()Z

    move-result v3

    if-eqz v3, :cond_33

    move v2, v1

    .line 93
    :goto_e
    if-eqz v1, :cond_31

    .line 94
    iget-object v1, p0, Ll/g;->h:Ll/i;

    invoke-interface {v1}, Ll/i;->a()Ll/e;

    move-result-object v1

    .line 98
    :goto_16
    if-eqz v2, :cond_20

    .line 99
    iget-object v0, p0, Ll/g;->h:Ll/i;

    const-string v2, "/new.building.list"

    invoke-interface {v0, v2}, Ll/i;->a(Ljava/lang/String;)Ll/e;

    move-result-object v0

    .line 102
    :cond_20
    if-nez v0, :cond_2c

    if-nez v1, :cond_2c

    .line 103
    iget-object v0, p0, Ll/g;->h:Ll/i;

    const-string v2, "/building.list"

    invoke-interface {v0, v2}, Ll/i;->a(Ljava/lang/String;)Ll/e;

    move-result-object v0

    .line 107
    :cond_2c
    iput-object v0, p0, Ll/g;->f:Ll/e;

    .line 108
    iput-object v1, p0, Ll/g;->e:Ll/e;

    .line 109
    return-void

    :cond_31
    move-object v1, v0

    goto :goto_16

    :cond_33
    move v1, v2

    goto :goto_e
.end method

.method private b(Ll/f;)V
    .registers 3
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Ll/g;->f:Ll/e;

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Ll/g;->f:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->a(Ll/f;)V

    .line 242
    :cond_9
    iget-object v0, p0, Ll/g;->e:Ll/e;

    if-eqz v0, :cond_12

    .line 243
    iget-object v0, p0, Ll/g;->e:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->a(Ll/f;)V

    .line 245
    :cond_12
    return-void
.end method

.method private b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 115
    .line 119
    iget-object v3, p0, Ll/g;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 120
    :try_start_5
    iget-boolean v2, p0, Ll/g;->d:Z

    if-eqz v2, :cond_c

    .line 121
    monitor-exit v3

    move v0, v1

    .line 149
    :cond_b
    :goto_b
    return v0

    .line 124
    :cond_c
    iget-boolean v2, p0, Ll/g;->c:Z

    if-eqz v2, :cond_4a

    invoke-static {}, Lt/m;->c()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 125
    const/4 v2, 0x0

    iput-boolean v2, p0, Ll/g;->c:Z

    move v2, v1

    .line 128
    :goto_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_3f

    .line 130
    if-eqz v2, :cond_b

    .line 136
    invoke-direct {p0}, Ll/g;->a()V

    .line 138
    iget-object v2, p0, Ll/g;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 139
    const/4 v0, 0x1

    :try_start_24
    iput-boolean v0, p0, Ll/g;->d:Z

    .line 143
    iget-object v0, p0, Ll/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/f;

    .line 144
    invoke-direct {p0, v0}, Ll/g;->b(Ll/f;)V

    goto :goto_2c

    .line 147
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3c

    throw v0

    .line 128
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    .line 146
    :cond_42
    :try_start_42
    iget-object v0, p0, Ll/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 147
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_3c

    move v0, v1

    .line 149
    goto :goto_b

    :cond_4a
    move v2, v0

    goto :goto_1a
.end method


# virtual methods
.method public a(Ln/am;)Ljava/util/Collection;
    .registers 7
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Ll/g;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 179
    sget-object v0, Ll/e;->a:Ljava/util/Collection;

    .line 218
    :goto_8
    return-object v0

    .line 182
    :cond_9
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 185
    iget-object v1, p0, Ll/g;->f:Ll/e;

    if-eqz v1, :cond_83

    .line 186
    iget-object v0, p0, Ll/g;->f:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->a(Ln/am;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v0

    .line 189
    :goto_1c
    iget-object v0, p0, Ll/g;->e:Ll/e;

    if-eqz v0, :cond_27

    .line 190
    iget-object v0, p0, Ll/g;->e:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->a(Ln/am;)Ljava/util/Collection;

    move-result-object v0

    move-object v2, v0

    .line 194
    :cond_27
    sget-object v0, Ll/e;->a:Ljava/util/Collection;

    if-eq v1, v0, :cond_2f

    sget-object v0, Ll/e;->a:Ljava/util/Collection;

    if-ne v2, v0, :cond_32

    .line 196
    :cond_2f
    sget-object v0, Ll/e;->a:Ljava/util/Collection;

    goto :goto_8

    .line 200
    :cond_32
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 201
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_8

    .line 206
    :cond_43
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v3

    .line 207
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/a;

    .line 208
    invoke-virtual {v0}, Ll/a;->a()Ln/p;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 211
    :cond_5f
    invoke-static {v1}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 212
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_67
    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/a;

    .line 213
    invoke-virtual {v0}, Ll/a;->a()Ln/p;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 214
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_81
    move-object v0, v1

    .line 218
    goto :goto_8

    :cond_83
    move-object v1, v0

    goto :goto_1c
.end method

.method public a(Ll/f;)V
    .registers 3
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Ll/g;->b()Z

    move-result v0

    if-nez v0, :cond_c

    .line 250
    iget-object v0, p0, Ll/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_b
    return-void

    .line 253
    :cond_c
    invoke-direct {p0, p1}, Ll/g;->b(Ll/f;)V

    goto :goto_b
.end method

.method public a(Ln/m;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-direct {p0}, Ll/g;->b()Z

    move-result v1

    if-nez v1, :cond_8

    .line 235
    :cond_7
    :goto_7
    return v0

    .line 229
    :cond_8
    iget-object v1, p0, Ll/g;->f:Ll/e;

    if-eqz v1, :cond_12

    .line 230
    iget-object v0, p0, Ll/g;->f:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->a(Ln/m;)Z

    move-result v0

    .line 232
    :cond_12
    if-nez v0, :cond_7

    iget-object v1, p0, Ll/g;->e:Ll/e;

    if-eqz v1, :cond_7

    .line 233
    iget-object v0, p0, Ll/g;->e:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->a(Ln/m;)Z

    move-result v0

    goto :goto_7
.end method
