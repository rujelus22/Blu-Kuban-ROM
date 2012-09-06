.class public Ll/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aF;


# static fields
.field private static final g:Ll/l;


# instance fields
.field private final a:Lr/aH;

.field private final b:Lr/aI;

.field private final c:Lt/f;

.field private d:I

.field private final e:Ljava/util/Set;

.field private final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Ll/l;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Ll/l;-><init>(Ljava/util/List;)V

    sput-object v0, Ll/n;->g:Ll/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Ll/n;->e:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Ll/n;->f:Ljava/util/Set;

    .line 62
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 63
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    iput-object v0, p0, Ll/n;->a:Lr/aH;

    .line 64
    new-instance v0, Lt/f;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Ll/n;->c:Lt/f;

    .line 65
    new-instance v0, Ll/o;

    invoke-direct {v0, p0}, Ll/o;-><init>(Ll/n;)V

    iput-object v0, p0, Ll/n;->b:Lr/aI;

    .line 82
    iget-object v0, p0, Ll/n;->a:Lr/aH;

    iget-object v1, p0, Ll/n;->b:Lr/aI;

    invoke-interface {v0, v1}, Lr/aH;->a(Lr/aI;)V

    .line 89
    :goto_38
    return-void

    .line 84
    :cond_39
    iput-object v1, p0, Ll/n;->a:Lr/aH;

    .line 85
    iput-object v1, p0, Ll/n;->c:Lt/f;

    .line 86
    iput-object v1, p0, Ll/n;->b:Lr/aI;

    goto :goto_38
.end method

.method static a(Ln/aF;)Ll/l;
    .registers 5
    .parameter

    .prologue
    .line 143
    new-instance v1, Ll/m;

    invoke-direct {v1}, Ll/m;-><init>()V

    .line 144
    invoke-virtual {p0}, Ln/aF;->k()Ln/aI;

    move-result-object v2

    .line 146
    :cond_9
    :goto_9
    invoke-interface {v2}, Ln/aI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 147
    invoke-interface {v2}, Ln/aI;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    .line 148
    instance-of v3, v0, Ln/d;

    if-eqz v3, :cond_9

    .line 149
    check-cast v0, Ln/d;

    .line 150
    invoke-virtual {v0}, Ln/d;->j()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 151
    invoke-virtual {v1, v0}, Ll/m;->a(Ln/d;)V

    goto :goto_9

    .line 155
    :cond_25
    invoke-virtual {v1}, Ll/m;->a()Ll/l;

    move-result-object v0

    return-object v0
.end method

.method private a(Ln/am;Ll/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Ll/n;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/p;

    .line 222
    invoke-interface {v0, p1, p2}, Ll/p;->a(Ln/am;Ll/l;)V

    goto :goto_6

    .line 224
    :cond_16
    return-void
.end method

.method private declared-synchronized b(Ln/am;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ll/n;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_16

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    :goto_9
    monitor-exit p0

    return-void

    .line 136
    :cond_b
    :try_start_b
    iget-object v0, p0, Ll/n;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Ll/n;->a:Lr/aH;

    invoke-interface {v0, p1, p0}, Lr/aH;->a(Ln/am;Lr/aF;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_9

    .line 133
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ln/am;)Ll/l;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 98
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Ll/n;->c:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/l;

    .line 101
    sget-object v2, Ll/n;->g:Ll/l;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_1e

    if-ne v0, v2, :cond_11

    move-object v0, v1

    .line 109
    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    .line 103
    :cond_11
    if-nez v0, :cond_f

    .line 107
    :try_start_13
    invoke-direct {p0, p1}, Ll/n;->b(Ln/am;)V

    .line 108
    iget v0, p0, Ll/n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll/n;->d:I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    move-object v0, v1

    .line 109
    goto :goto_f

    .line 98
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ll/n;->c:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 117
    iget-object v0, p0, Ll/n;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 118
    monitor-exit p0

    return-void

    .line 116
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ll/p;)V
    .registers 3
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Ll/n;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public a(Ln/am;ILn/al;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 165
    const/4 v1, 0x3

    if-ne p2, v1, :cond_5

    .line 191
    :goto_4
    return-void

    .line 170
    :cond_5
    if-nez p2, :cond_2c

    .line 171
    instance-of v1, p3, Ln/aF;

    if-eqz v1, :cond_37

    .line 172
    check-cast p3, Ln/aF;

    invoke-static {p3}, Ll/n;->a(Ln/aF;)Ll/l;

    move-result-object v1

    .line 178
    :goto_11
    if-eqz v1, :cond_21

    .line 179
    monitor-enter p0

    .line 180
    :try_start_14
    iget-object v2, p0, Ll/n;->c:Lt/f;

    invoke-virtual {v2, p1, v1}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_32

    .line 182
    sget-object v2, Ll/n;->g:Ll/l;

    if-ne v1, v2, :cond_35

    .line 185
    :goto_1e
    invoke-direct {p0, p1, v0}, Ll/n;->a(Ln/am;Ll/l;)V

    .line 188
    :cond_21
    monitor-enter p0

    .line 189
    :try_start_22
    iget-object v0, p0, Ll/n;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    monitor-exit p0

    goto :goto_4

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    .line 174
    :cond_2c
    const/4 v1, 0x2

    if-ne p2, v1, :cond_37

    .line 175
    sget-object v1, Ll/n;->g:Ll/l;

    goto :goto_11

    .line 181
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    move-object v0, v1

    goto :goto_1e

    :cond_37
    move-object v1, v0

    goto :goto_11
.end method
