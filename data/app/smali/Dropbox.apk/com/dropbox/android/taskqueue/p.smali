.class public Lcom/dropbox/android/taskqueue/p;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected final a:Ljava/util/List;

.field private final c:I

.field private final d:I

.field private e:I

.field private f:Z

.field private final g:Ljava/util/HashSet;

.field private final h:Ljava/util/LinkedList;

.field private final i:Ljava/util/HashSet;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/android/taskqueue/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/p;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/dropbox/android/taskqueue/p;->e:I

    .line 26
    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/p;->f:Z

    .line 30
    iput v0, p0, Lcom/dropbox/android/taskqueue/p;->j:I

    .line 39
    iput p1, p0, Lcom/dropbox/android/taskqueue/p;->c:I

    .line 40
    iput p2, p0, Lcom/dropbox/android/taskqueue/p;->d:I

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/p;->g:Ljava/util/HashSet;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    .line 44
    iput-object p3, p0, Lcom/dropbox/android/taskqueue/p;->a:Ljava/util/List;

    .line 45
    return-void
.end method

.method private declared-synchronized a()V
    .registers 5

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/dropbox/android/taskqueue/p;->c:I

    iget v1, p0, Lcom/dropbox/android/taskqueue/p;->e:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 198
    :goto_10
    if-lez v0, :cond_43

    .line 199
    iget v1, p0, Lcom/dropbox/android/taskqueue/p;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dropbox/android/taskqueue/p;->e:I

    .line 200
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/android/taskqueue/p;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 201
    iget v2, p0, Lcom/dropbox/android/taskqueue/p;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 202
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 203
    iget v1, p0, Lcom/dropbox/android/taskqueue/p;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dropbox/android/taskqueue/p;->j:I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_45

    .line 204
    add-int/lit8 v0, v0, -0x1

    .line 205
    goto :goto_10

    .line 206
    :cond_43
    monitor-exit p0

    return-void

    .line 197
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/dropbox/android/taskqueue/k;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/p;->c(Lcom/dropbox/android/taskqueue/k;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_34

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 176
    :cond_9
    if-eqz p2, :cond_37

    .line 177
    :try_start_b
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 181
    :goto_11
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->a:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 186
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/j;

    .line 187
    invoke-interface {v0, p1}, Lcom/dropbox/android/taskqueue/j;->a(Lcom/dropbox/android/taskqueue/k;)V
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_34

    goto :goto_24

    .line 171
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 191
    :cond_3d
    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/p;->f:Z

    if-nez v0, :cond_7

    .line 192
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/p;->a()V
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_34

    goto :goto_7
.end method

.method private declared-synchronized d(Lcom/dropbox/android/taskqueue/k;)V
    .registers 4
    .parameter

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 221
    monitor-exit p0

    return-void

    .line 219
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(Lcom/dropbox/android/taskqueue/k;)V
    .registers 3
    .parameter

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/p;->d(Lcom/dropbox/android/taskqueue/k;)V

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/taskqueue/p;->a(Lcom/dropbox/android/taskqueue/k;Z)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 226
    monitor-exit p0

    return-void

    .line 224
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f(Lcom/dropbox/android/taskqueue/k;)V
    .registers 6
    .parameter

    .prologue
    .line 230
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/p;->a(Lcom/dropbox/android/taskqueue/k;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 231
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->c()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/m;->b()Lcom/dropbox/android/taskqueue/n;

    move-result-object v1

    sget-object v2, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    if-ne v1, v2, :cond_16

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/taskqueue/p;->a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;)V

    .line 250
    :goto_15
    return-void

    .line 234
    :cond_16
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/m;->a()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->n()I

    move-result v1

    if-lez v1, :cond_2c

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->p()I

    move-result v1

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->n()I

    move-result v2

    if-ge v1, v2, :cond_82

    .line 235
    :cond_2c
    sget-object v0, Lcom/dropbox/android/taskqueue/p;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temp error with task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retrying."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/p;->e(Lcom/dropbox/android/taskqueue/k;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_15

    .line 244
    :catch_52
    move-exception v0

    .line 246
    sget-object v1, Lcom/dropbox/android/taskqueue/p;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error running task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in task queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V

    .line 248
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/taskqueue/p;->a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;)V

    goto :goto_15

    .line 238
    :cond_82
    :try_start_82
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/taskqueue/p;->a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;)V

    goto :goto_15

    .line 242
    :cond_86
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->j:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/taskqueue/p;->a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_8b} :catch_52

    goto :goto_15
.end method


# virtual methods
.method protected a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/p;->d(Lcom/dropbox/android/taskqueue/k;)V

    .line 216
    return-void
.end method

.method protected a(Lcom/dropbox/android/taskqueue/k;)Z
    .registers 3
    .parameter

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 97
    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 98
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/k;

    .line 99
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 100
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->b()V

    .line 103
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->s()Lcom/dropbox/android/taskqueue/m;

    .line 104
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 105
    sget-object v0, Lcom/dropbox/android/taskqueue/p;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_48

    .line 107
    const/4 v0, 0x1

    .line 110
    :goto_44
    monitor-exit p0

    return v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_44

    .line 96
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/k;

    .line 69
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->b()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 68
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 74
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/k;

    .line 76
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->b()V

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    .line 81
    :cond_38
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_17

    .line 82
    monitor-exit p0

    return-void
.end method

.method public b(Lcom/dropbox/android/taskqueue/k;)V
    .registers 5
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/taskqueue/p;->a(Lcom/dropbox/android/taskqueue/k;Z)V

    .line 52
    sget-object v0, Lcom/dropbox/android/taskqueue/p;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 114
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/p;->a(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4e

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 130
    :goto_9
    monitor-exit p0

    return v0

    .line 119
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/k;

    .line 121
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 122
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->b()V

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 124
    sget-object v0, Lcom/dropbox/android/taskqueue/p;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_4e

    move v0, v1

    .line 126
    goto :goto_9

    .line 130
    :cond_4c
    const/4 v0, 0x0

    goto :goto_9

    .line 114
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/k;

    .line 89
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->b()V

    .line 90
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_7

    .line 88
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    .line 93
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c(Lcom/dropbox/android/taskqueue/k;)Z
    .registers 4
    .parameter

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 2

    .prologue
    .line 139
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/p;->f:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .registers 3

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/p;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/p;->f:Z

    .line 150
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/p;->a()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 152
    :cond_c
    monitor-exit p0

    return-void

    .line 148
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()I
    .registers 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I
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

.method public run()V
    .registers 5

    .prologue
    .line 256
    .line 257
    :goto_0
    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/p;->f:Z

    if-eqz v0, :cond_15

    .line 260
    :cond_d
    iget v0, p0, Lcom/dropbox/android/taskqueue/p;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dropbox/android/taskqueue/p;->e:I

    .line 261
    monitor-exit p0

    return-void

    .line 263
    :cond_15
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/p;->h:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/k;

    .line 264
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/p;->g:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3d

    .line 269
    :try_start_24
    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/p;->f(Lcom/dropbox/android/taskqueue/k;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_0

    .line 270
    :catch_28
    move-exception v1

    .line 271
    sget-object v2, Lcom/dropbox/android/taskqueue/p;->b:Ljava/lang/String;

    const-string v3, "Error in task queue"

    invoke-static {v2, v3, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V

    .line 273
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/taskqueue/p;->a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;)V

    goto :goto_0

    .line 266
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method
