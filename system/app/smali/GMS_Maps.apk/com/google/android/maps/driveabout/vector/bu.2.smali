.class public Lcom/google/android/maps/driveabout/vector/bU;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;

.field private b:Ljava/util/Set;

.field private c:Ljava/util/Set;

.field private d:Lcom/google/googlenav/intersectionexplorer/c;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->f:Z

    .line 59
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->c()Lcom/google/googlenav/intersectionexplorer/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lcom/google/android/maps/driveabout/vector/bU;)V

    .line 60
    return-void
.end method

.method private static a(Lcom/google/googlenav/intersectionexplorer/c;Lcom/google/googlenav/intersectionexplorer/c;)Lcom/google/android/maps/driveabout/vector/X;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v1

    .line 142
    new-instance v2, Ln/W;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ln/W;-><init>(I)V

    .line 143
    invoke-virtual {v2, v0}, Ln/W;->a(Ln/Q;)Z

    .line 144
    invoke-virtual {v2, v1}, Ln/W;->a(Ln/Q;)Z

    .line 146
    new-instance v0, Lcom/google/android/maps/driveabout/vector/X;

    invoke-virtual {v2}, Ln/W;->d()Ln/U;

    move-result-object v1

    const/high16 v2, 0x3f80

    const v3, -0xffff01

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/X;-><init>(Ln/U;FILn/p;)V

    return-object v0
.end method

.method private declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:Ljava/util/Set;

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bU;->e:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_5b

    if-nez v1, :cond_c

    .line 185
    :goto_a
    monitor-exit p0

    return v0

    .line 170
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:Ljava/util/Set;

    .line 171
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->c:Ljava/util/Set;

    .line 172
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 173
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/intersectionexplorer/c;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 174
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/intersectionexplorer/c;

    .line 176
    new-instance v4, Lcom/google/android/maps/driveabout/vector/bV;

    invoke-direct {v4, v0, v1}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(Lcom/google/googlenav/intersectionexplorer/c;Lcom/google/googlenav/intersectionexplorer/c;)V

    .line 177
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bU;->c:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 178
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bU;->a(Lcom/google/googlenav/intersectionexplorer/c;Lcom/google/googlenav/intersectionexplorer/c;)Lcom/google/android/maps/driveabout/vector/X;

    move-result-object v1

    .line 179
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 180
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_5b

    goto :goto_35

    .line 166
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 184
    :cond_5e
    const/4 v0, 0x0

    :try_start_5f
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->e:Z
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_5b

    .line 185
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3a

    move-result v0

    if-lez v0, :cond_9

    .line 95
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 71
    :cond_9
    :try_start_9
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->f:Z

    if-eqz v0, :cond_1a

    .line 73
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->c()Lcom/google/googlenav/intersectionexplorer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/d;->g()Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->f:Z

    .line 77
    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->a:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/bU;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 84
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/intersectionexplorer/c;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_3a

    goto :goto_2a

    .line 64
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_3d
    const/4 v0, 0x0

    goto :goto_18

    .line 86
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/X;

    .line 87
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_45

    .line 92
    :cond_55
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->d:Lcom/google/googlenav/intersectionexplorer/c;

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->d:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/intersectionexplorer/c;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    :try_end_5e
    .catchall {:try_start_3f .. :try_end_5e} :catchall_3a

    goto :goto_7
.end method

.method public declared-synchronized a(Lcom/google/googlenav/intersectionexplorer/c;)V
    .registers 4
    .parameter

    .prologue
    .line 121
    monitor-enter p0

    if-nez p1, :cond_5

    .line 131
    :goto_3
    monitor-exit p0

    return-void

    .line 126
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->d:Lcom/google/googlenav/intersectionexplorer/c;

    if-eqz v0, :cond_f

    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->d:Lcom/google/googlenav/intersectionexplorer/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/c;->b(Z)V

    .line 129
    :cond_f
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bU;->d:Lcom/google/googlenav/intersectionexplorer/c;

    .line 130
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->d:Lcom/google/googlenav/intersectionexplorer/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/c;->b(Z)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_3

    .line 121
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/Set;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->e:Z

    .line 107
    if-nez p1, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:Ljava/util/Set;

    if-eqz v0, :cond_11

    .line 108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_18

    .line 115
    :goto_f
    monitor-exit p0

    return-void

    .line 114
    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/google/common/collect/dm;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->a:Ljava/util/Set;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_18

    goto :goto_f

    .line 106
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bU;->f:Z

    .line 155
    return-void
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 99
    const v0, 0x5f370

    return v0
.end method
