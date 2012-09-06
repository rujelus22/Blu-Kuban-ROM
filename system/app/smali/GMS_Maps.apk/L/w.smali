.class public Ll/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/d;
.implements Ll/e;


# instance fields
.field private final b:Lr/aH;

.field private final c:Lr/Q;

.field private final d:Lr/aI;

.field private final e:Ljava/util/Map;

.field private final f:Lt/f;

.field private final g:Ljava/util/Set;

.field private volatile h:I

.field private volatile i:I

.field private volatile j:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ll/w;->e:Ljava/util/Map;

    .line 47
    new-instance v0, Lt/f;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Ll/w;->f:Lt/f;

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Ll/w;->g:Ljava/util/Set;

    .line 68
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 69
    iput-object v2, p0, Ll/w;->b:Lr/aH;

    .line 70
    iput-object v2, p0, Ll/w;->c:Lr/Q;

    .line 71
    iput-object v2, p0, Ll/w;->d:Lr/aI;

    .line 105
    :goto_28
    return-void

    .line 75
    :cond_29
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    iput-object v0, p0, Ll/w;->b:Lr/aH;

    .line 76
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v0

    iput-object v0, p0, Ll/w;->c:Lr/Q;

    .line 77
    new-instance v0, Ll/x;

    invoke-direct {v0, p0}, Ll/x;-><init>(Ll/w;)V

    iput-object v0, p0, Ll/w;->d:Lr/aI;

    .line 104
    iget-object v0, p0, Ll/w;->b:Lr/aH;

    iget-object v1, p0, Ll/w;->d:Lr/aI;

    invoke-interface {v0, v1}, Lr/aH;->a(Lr/aI;)V

    goto :goto_28
.end method

.method static synthetic a(Ll/w;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Ll/w;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Ll/w;)Lt/f;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Ll/w;->f:Lt/f;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Ll/w;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/f;

    .line 181
    invoke-interface {v0}, Ll/f;->a()V

    goto :goto_6

    .line 183
    :cond_16
    return-void
.end method

.method static synthetic c(Ll/w;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ll/w;->b()V

    return-void
.end method


# virtual methods
.method public a(Ln/am;)Ljava/util/Collection;
    .registers 7
    .parameter

    .prologue
    const/16 v1, 0xe

    .line 112
    iget v0, p0, Ll/w;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll/w;->h:I

    .line 118
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    if-le v0, v1, :cond_66

    .line 119
    invoke-virtual {p1, v1}, Ln/am;->a(I)Ln/am;

    move-result-object v0

    move-object v1, v0

    .line 124
    :goto_13
    iget-object v2, p0, Ll/w;->f:Lt/f;

    monitor-enter v2

    .line 125
    :try_start_16
    iget-object v0, p0, Ll/w;->f:Lt/f;

    invoke-virtual {v0, v1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 126
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_30

    .line 127
    if-eqz v0, :cond_33

    .line 128
    iget v1, p0, Ll/w;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ll/w;->i:I

    .line 129
    invoke-virtual {p1}, Ln/am;->h()Ln/aa;

    move-result-object v1

    invoke-static {v0, v1}, Ll/a;->a(Ljava/util/Collection;Ln/ab;)Ljava/util/Collection;

    move-result-object v0

    .line 149
    :goto_2f
    return-object v0

    .line 126
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 134
    :cond_33
    const/4 v2, 0x0

    .line 135
    iget-object v3, p0, Ll/w;->e:Ljava/util/Map;

    monitor-enter v3

    .line 136
    :try_start_37
    iget-object v0, p0, Ll/w;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/b;

    .line 137
    if-nez v0, :cond_63

    .line 138
    new-instance v2, Ll/b;

    iget-object v0, p0, Ll/w;->b:Lr/aH;

    iget-object v4, p0, Ll/w;->c:Lr/Q;

    invoke-direct {v2, v0, v4, v1}, Ll/b;-><init>(Lr/aH;Lr/Q;Ln/am;)V

    .line 139
    iget-object v0, p0, Ll/w;->e:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    move-object v1, v2

    .line 142
    :goto_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_60

    .line 144
    if-eqz v0, :cond_5d

    .line 145
    invoke-virtual {v1, p0}, Ll/b;->a(Ll/d;)V

    .line 146
    iget v0, p0, Ll/w;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll/w;->j:I

    .line 149
    :cond_5d
    sget-object v0, Ll/e;->a:Ljava/util/Collection;

    goto :goto_2f

    .line 142
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0

    :cond_63
    move-object v1, v0

    move v0, v2

    goto :goto_51

    :cond_66
    move-object v1, p1

    goto :goto_13
.end method

.method public a()V
    .registers 3

    .prologue
    .line 167
    iget-object v1, p0, Ll/w;->e:Ljava/util/Map;

    monitor-enter v1

    .line 168
    :try_start_3
    iget-object v0, p0, Ll/w;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 169
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 170
    iget-object v1, p0, Ll/w;->f:Lt/f;

    monitor-enter v1

    .line 171
    :try_start_c
    iget-object v0, p0, Ll/w;->f:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 172
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_19

    .line 173
    invoke-direct {p0}, Ll/w;->b()V

    .line 174
    return-void

    .line 169
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 172
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public a(Ll/b;Ljava/util/Collection;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v1, p0, Ll/w;->e:Ljava/util/Map;

    monitor-enter v1

    .line 199
    :try_start_3
    iget-object v0, p0, Ll/w;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ll/b;->a()Ln/am;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/b;

    .line 200
    if-eq v0, p1, :cond_13

    .line 203
    monitor-exit v1

    .line 214
    :cond_12
    :goto_12
    return-void

    .line 205
    :cond_13
    iget-object v0, p0, Ll/w;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ll/b;->a()Ln/am;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_30

    .line 208
    if-eqz p2, :cond_12

    .line 209
    iget-object v1, p0, Ll/w;->f:Lt/f;

    monitor-enter v1

    .line 210
    :try_start_22
    iget-object v0, p0, Ll/w;->f:Lt/f;

    invoke-virtual {p1}, Ll/b;->a()Ln/am;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_33

    .line 212
    invoke-direct {p0}, Ll/w;->b()V

    goto :goto_12

    .line 206
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    .line 211
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public a(Ll/f;)V
    .registers 3
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Ll/w;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public a(Ln/m;)Z
    .registers 3
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method
