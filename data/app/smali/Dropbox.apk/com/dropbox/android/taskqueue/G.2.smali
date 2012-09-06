.class public Lcom/dropbox/android/taskqueue/G;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/TreeSet;

.field private d:Ljava/util/Timer;

.field private e:I

.field private f:Z

.field private g:Lcom/dropbox/android/taskqueue/S;

.field private final h:I

.field private final j:Lcom/dropbox/android/provider/g;

.field private final k:Landroid/database/ContentObservable;

.field private final l:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 749
    const-class v0, Lcom/dropbox/android/taskqueue/G;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/G;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;[Ljava/lang/Class;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    .line 108
    iput-object v2, p0, Lcom/dropbox/android/taskqueue/G;->d:Ljava/util/Timer;

    .line 109
    iput v1, p0, Lcom/dropbox/android/taskqueue/G;->e:I

    .line 110
    iput-boolean v1, p0, Lcom/dropbox/android/taskqueue/G;->f:Z

    .line 111
    iput-object v2, p0, Lcom/dropbox/android/taskqueue/G;->g:Lcom/dropbox/android/taskqueue/S;

    .line 467
    const/4 v0, 0x1

    iput v0, p0, Lcom/dropbox/android/taskqueue/G;->h:I

    .line 751
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    .line 126
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/dropbox/android/taskqueue/V;

    invoke-direct {v1, p3}, Lcom/dropbox/android/taskqueue/V;-><init>([Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    .line 127
    iput-object p2, p0, Lcom/dropbox/android/taskqueue/G;->j:Lcom/dropbox/android/provider/g;

    .line 128
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/G;->l:Landroid/content/Context;

    .line 129
    iput-object p4, p0, Lcom/dropbox/android/taskqueue/G;->a:Ljava/util/List;

    .line 131
    new-instance v0, Lcom/dropbox/android/util/y;

    new-instance v1, Lcom/dropbox/android/taskqueue/H;

    invoke-direct {v1, p0}, Lcom/dropbox/android/taskqueue/H;-><init>(Lcom/dropbox/android/taskqueue/G;)V

    invoke-direct {v0, p1, v1}, Lcom/dropbox/android/util/y;-><init>(Landroid/content/Context;Lcom/dropbox/android/util/B;)V

    .line 141
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->g()V

    .line 143
    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/lang/Class;ILandroid/database/MatrixCursor;)I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 585
    .line 586
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 587
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 588
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    add-int v5, p2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->i()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 590
    invoke-virtual {p3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 591
    add-int/lit8 v0, v1, 0x1

    :goto_45
    move v1, v0

    .line 592
    goto :goto_6

    .line 594
    :cond_47
    return v1

    :cond_48
    move v0, v1

    goto :goto_45
.end method

.method private declared-synchronized a(Lcom/dropbox/android/util/aH;)Lcom/dropbox/android/taskqueue/DbTask;
    .registers 5
    .parameter

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 299
    invoke-interface {p1, v0}, Lcom/dropbox/android/util/aH;->a(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_36

    move-result v2

    if-eqz v2, :cond_7

    .line 309
    :goto_19
    monitor-exit p0

    return-object v0

    .line 304
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 305
    invoke-interface {p1, v0}, Lcom/dropbox/android/util/aH;->a(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_36

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_19

    .line 309
    :cond_34
    const/4 v0, 0x0

    goto :goto_19

    .line 298
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(ILjava/lang/Class;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 817
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 818
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 819
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 820
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_30

    move-result v0

    if-lt v0, p1, :cond_c

    move-object v0, v1

    .line 826
    :goto_2c
    monitor-exit p0

    return-object v0

    :cond_2e
    move-object v0, v1

    goto :goto_2c

    .line 817
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/dropbox/android/taskqueue/G;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->j()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/taskqueue/G;Ljava/lang/Thread;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/lang/Thread;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)V

    return-void
.end method

.method private a(Lcom/dropbox/android/taskqueue/k;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/util/Collection;)V

    .line 166
    return-void
.end method

.method private a(Ljava/lang/Class;JLjava/lang/String;Z)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    :try_start_0
    const-string v0, "restore"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dropbox/android/taskqueue/G;->l:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 149
    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->a(Lcom/dropbox/android/taskqueue/k;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->b(Lcom/dropbox/android/taskqueue/DbTask;)V
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_37} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_37} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_37} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_37} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_37} :catch_5c

    .line 162
    return-void

    .line 151
    :catch_38
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DB Restore code failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :catch_41
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DB Restore code failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :catch_4a
    move-exception v0

    .line 156
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DB Restore code failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 157
    :catch_53
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DB Restore code failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 159
    :catch_5c
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DB Restore code failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    .line 200
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/lang/Class;JLjava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    .line 204
    return-void

    .line 201
    :catch_c
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DB Restore code failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/Thread;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    monitor-enter p0

    .line 537
    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 538
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Very unexpected, a task that finished executing, was not in our list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0

    .line 542
    :cond_14
    :try_start_14
    invoke-virtual {p3}, Lcom/dropbox/android/taskqueue/m;->b()Lcom/dropbox/android/taskqueue/n;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    if-ne v0, v1, :cond_56

    .line 543
    invoke-direct {p0, p2}, Lcom/dropbox/android/taskqueue/G;->c(Lcom/dropbox/android/taskqueue/DbTask;)V

    .line 544
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->l:Landroid/content/Context;

    invoke-virtual {p2, v0, p3}, Lcom/dropbox/android/taskqueue/DbTask;->a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V

    .line 545
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/taskqueue/G;->e:I

    .line 561
    :goto_27
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 563
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->j()V

    .line 565
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->h()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->g:Lcom/dropbox/android/taskqueue/S;

    if-eqz v0, :cond_46

    .line 566
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/G;->g:Lcom/dropbox/android/taskqueue/S;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/service/t;->b(Lcom/dropbox/android/service/v;)V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/G;->g:Lcom/dropbox/android/taskqueue/S;

    .line 569
    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_11

    .line 571
    invoke-virtual {p3}, Lcom/dropbox/android/taskqueue/m;->b()Lcom/dropbox/android/taskqueue/n;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    if-ne v0, v1, :cond_52

    .line 572
    invoke-direct {p0, p2}, Lcom/dropbox/android/taskqueue/G;->b(Lcom/dropbox/android/taskqueue/k;)V

    .line 574
    :cond_52
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->f()V

    .line 575
    return-void

    .line 547
    :cond_56
    :try_start_56
    invoke-virtual {p3}, Lcom/dropbox/android/taskqueue/m;->a()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 548
    invoke-direct {p0, p2}, Lcom/dropbox/android/taskqueue/G;->b(Lcom/dropbox/android/taskqueue/DbTask;)V

    .line 549
    iget v0, p0, Lcom/dropbox/android/taskqueue/G;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/taskqueue/G;->e:I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/G;->f:Z

    .line 551
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/G;->d:Ljava/util/Timer;

    .line 552
    iget v0, p0, Lcom/dropbox/android/taskqueue/G;->e:I

    int-to-long v0, v0

    const-wide/16 v2, 0xf

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 553
    const-wide/16 v2, 0x3a98

    const-wide/high16 v4, 0x4000

    long-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long/2addr v0, v2

    .line 554
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/G;->d:Ljava/util/Timer;

    new-instance v3, Lcom/dropbox/android/taskqueue/O;

    invoke-direct {v3, p0}, Lcom/dropbox/android/taskqueue/O;-><init>(Lcom/dropbox/android/taskqueue/G;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_27

    .line 556
    :cond_8e
    invoke-direct {p0, p2}, Lcom/dropbox/android/taskqueue/G;->c(Lcom/dropbox/android/taskqueue/DbTask;)V

    .line 557
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->l:Landroid/content/Context;

    invoke-virtual {p2, v0, p3}, Lcom/dropbox/android/taskqueue/DbTask;->a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V
    :try_end_96
    .catchall {:try_start_56 .. :try_end_96} :catchall_11

    goto :goto_27
.end method

.method private a(Ljava/util/Collection;)V
    .registers 6
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->a:Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 172
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/U;

    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/taskqueue/k;

    .line 174
    invoke-interface {v0, p0, v1}, Lcom/dropbox/android/taskqueue/U;->a(Lcom/dropbox/android/taskqueue/G;Lcom/dropbox/android/taskqueue/k;)V

    goto :goto_1a

    .line 178
    :cond_2a
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/taskqueue/G;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dropbox/android/taskqueue/G;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/dropbox/android/taskqueue/G;)Landroid/database/ContentObservable;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/dropbox/android/taskqueue/DbTask;)V
    .registers 4
    .parameter

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 290
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->g:Lcom/dropbox/android/taskqueue/S;

    if-nez v0, :cond_21

    .line 291
    new-instance v0, Lcom/dropbox/android/taskqueue/S;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/taskqueue/S;-><init>(Lcom/dropbox/android/taskqueue/G;Lcom/dropbox/android/taskqueue/H;)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/G;->g:Lcom/dropbox/android/taskqueue/S;

    .line 292
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/G;->g:Lcom/dropbox/android/taskqueue/S;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/service/t;->a(Lcom/dropbox/android/service/v;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 294
    :cond_21
    monitor-exit p0

    return-void

    .line 287
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/dropbox/android/taskqueue/k;)V
    .registers 4
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->a:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 182
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/U;

    .line 183
    invoke-interface {v0, p0, p1}, Lcom/dropbox/android/taskqueue/U;->b(Lcom/dropbox/android/taskqueue/G;Lcom/dropbox/android/taskqueue/k;)V

    goto :goto_a

    .line 186
    :cond_1a
    return-void
.end method

.method private b(Lcom/dropbox/android/util/aH;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 374
    sget-object v0, Lcom/dropbox/android/taskqueue/G;->i:Ljava/lang/String;

    const-string v2, "canceled task"

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    monitor-enter p0

    .line 378
    :try_start_9
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 379
    invoke-interface {p1, v0}, Lcom/dropbox/android/util/aH;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 380
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->b()V

    .line 381
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 382
    monitor-exit p0

    .line 404
    :cond_2b
    :goto_2b
    return-void

    .line 386
    :cond_2c
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 387
    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 388
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 389
    invoke-interface {p1, v0}, Lcom/dropbox/android/util/aH;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 390
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->b()V

    .line 391
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->s()Lcom/dropbox/android/taskqueue/m;

    .line 392
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 393
    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->c(Lcom/dropbox/android/taskqueue/DbTask;)V

    .line 394
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 395
    const/4 v0, 0x1

    .line 399
    :goto_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_9 .. :try_end_58} :catchall_5e

    .line 401
    if-eqz v0, :cond_2b

    .line 402
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->f()V

    goto :goto_2b

    .line 399
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    :cond_61
    move v0, v1

    goto :goto_57
.end method

.method private declared-synchronized b(Ljava/util/Collection;)V
    .registers 12
    .parameter

    .prologue
    .line 755
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->j:Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4c

    move-result-object v1

    .line 757
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 759
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v0, Lcom/dropbox/android/provider/d;->a:Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 760
    sget-object v0, Lcom/dropbox/android/provider/d;->c:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 761
    sget-object v0, Lcom/dropbox/android/provider/d;->d:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 763
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 764
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 765
    invoke-static {v6}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "passed class must have a canonical name for restoration"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_47

    .line 786
    :catchall_47
    move-exception v0

    :try_start_48
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    .line 755
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 770
    :cond_4f
    :try_start_4f
    sget-object v7, Lcom/dropbox/android/taskqueue/G;->i:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " adding to task DB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 772
    invoke-virtual {v2, v3, v6}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 774
    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    move-result-wide v6

    .line 775
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_90

    .line 776
    sget-object v0, Lcom/dropbox/android/taskqueue/G;->i:Ljava/lang/String;

    const-string v6, "Error inserting upload entry into db!"

    invoke-static {v0, v6}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 778
    :cond_90
    invoke-virtual {v0, v6, v7}, Lcom/dropbox/android/taskqueue/DbTask;->b(J)V

    goto :goto_25

    .line 782
    :cond_94
    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 784
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9a
    .catchall {:try_start_4f .. :try_end_9a} :catchall_47

    .line 786
    :try_start_9a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_4c

    .line 788
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/Class;)Lcom/dropbox/android/taskqueue/DbTask;
    .registers 5
    .parameter

    .prologue
    .line 803
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 804
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_3e

    move-result v2

    if-eqz v2, :cond_7

    .line 813
    :goto_1d
    monitor-exit p0

    return-object v0

    .line 808
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 809
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_3e

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_1d

    .line 813
    :cond_3c
    const/4 v0, 0x0

    goto :goto_1d

    .line 803
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/dropbox/android/taskqueue/DbTask;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 792
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->j:Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 793
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/DbTask;->m()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 794
    sget-object v2, Lcom/dropbox/android/provider/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/dropbox/android/provider/d;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 796
    if-eq v0, v5, :cond_55

    .line 797
    sget-object v1, Lcom/dropbox/android/taskqueue/G;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error deleting task entry from db table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dropbox/android/provider/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_55
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->a:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 190
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/U;

    .line 191
    invoke-interface {v0, p0}, Lcom/dropbox/android/taskqueue/U;->a(Lcom/dropbox/android/taskqueue/G;)V

    goto :goto_a

    .line 194
    :cond_1a
    return-void
.end method

.method private g()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->j:Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/dropbox/android/provider/d;->a:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    :goto_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 211
    sget-object v0, Lcom/dropbox/android/provider/d;->b:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 212
    sget-object v1, Lcom/dropbox/android/provider/d;->c:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    sget-object v2, Lcom/dropbox/android/provider/d;->d:Lcom/dropbox/android/provider/a;

    iget-object v2, v2, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    int-to-long v2, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/lang/String;JLjava/lang/String;Z)V

    goto :goto_12

    .line 217
    :cond_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->j()V

    .line 220
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->f()V

    .line 221
    return-void
.end method

.method private declared-synchronized h()Z
    .registers 2

    .prologue
    .line 446
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()Lcom/dropbox/android/taskqueue/DbTask;
    .registers 4

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 471
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 472
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 473
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->q()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 474
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_20

    .line 478
    :goto_1c
    monitor-exit p0

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c

    .line 470
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .registers 7

    .prologue
    .line 511
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/G;->f:Z

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_4f

    .line 512
    const-class v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/G;->b(Ljava/lang/Class;)I

    move-result v0

    .line 513
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    .line 514
    invoke-static {}, Lcom/dropbox/android/util/h;->E()Lcom/dropbox/android/util/r;

    move-result-object v2

    const-string v3, "num.camera.tasks"

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v2, "num.all.tasks"

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 517
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->i()Lcom/dropbox/android/taskqueue/DbTask;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_4f

    .line 519
    new-instance v1, Lcom/dropbox/android/taskqueue/Q;

    new-instance v2, Lcom/dropbox/android/taskqueue/M;

    invoke-direct {v2, p0}, Lcom/dropbox/android/taskqueue/M;-><init>(Lcom/dropbox/android/taskqueue/G;)V

    invoke-direct {v1, v2, v0}, Lcom/dropbox/android/taskqueue/Q;-><init>(Lcom/dropbox/android/taskqueue/R;Lcom/dropbox/android/taskqueue/DbTask;)V

    .line 527
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/dropbox/android/taskqueue/Q;->setPriority(I)V

    .line 529
    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/Q;->start()V

    .line 532
    :cond_4f
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    .line 533
    monitor-exit p0

    return-void

    .line 511
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 408
    monitor-enter p0

    .line 409
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 411
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->d:Ljava/util/Timer;

    if-eqz v0, :cond_18

    .line 412
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/G;->d:Ljava/util/Timer;

    .line 418
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 419
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 420
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->b()V

    goto :goto_23

    .line 431
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0

    .line 423
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 424
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 426
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->b()V

    .line 427
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->s()Lcom/dropbox/android/taskqueue/m;

    .line 428
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 429
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 431
    :cond_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_33

    .line 437
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 438
    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->c(Lcom/dropbox/android/taskqueue/DbTask;)V

    goto :goto_5a

    .line 441
    :cond_6a
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->f()V

    .line 442
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 443
    return-void
.end method

.method public final declared-synchronized a(J)V
    .registers 4
    .parameter

    .prologue
    .line 365
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/dropbox/android/taskqueue/K;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/android/taskqueue/K;-><init>(Lcom/dropbox/android/taskqueue/G;J)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->b(Lcom/dropbox/android/util/aH;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 371
    monitor-exit p0

    return-void

    .line 365
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/dropbox/android/taskqueue/DbTask;)V
    .registers 3
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/taskqueue/G;->a(Lcom/dropbox/android/taskqueue/DbTask;Z)V

    .line 225
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/DbTask;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/util/List;Z)V

    .line 229
    return-void
.end method

.method public final declared-synchronized a(Ldbxyzptlk/i/i;)V
    .registers 3
    .parameter

    .prologue
    .line 352
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/dropbox/android/taskqueue/J;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/android/taskqueue/J;-><init>(Lcom/dropbox/android/taskqueue/G;Ldbxyzptlk/i/i;)V

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->b(Lcom/dropbox/android/util/aH;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 358
    monitor-exit p0

    return-void

    .line 352
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Class;)V
    .registers 6
    .parameter

    .prologue
    .line 314
    monitor-enter p0

    .line 315
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 319
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->b()V

    goto :goto_12

    .line 333
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0

    .line 323
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 324
    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 327
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->b()V

    .line 328
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->s()Lcom/dropbox/android/taskqueue/m;

    .line 329
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 330
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 333
    :cond_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_2f .. :try_end_59} :catchall_2c

    .line 339
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 340
    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->c(Lcom/dropbox/android/taskqueue/DbTask;)V

    goto :goto_5d

    .line 343
    :cond_6d
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->f()V

    .line 344
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 345
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/util/List;Z)V

    .line 233
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    .line 239
    if-eqz p2, :cond_51

    .line 241
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 243
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DbTask;->d()Ljava/lang/String;

    move-result-object v5

    .line 244
    new-instance v1, Lcom/dropbox/android/taskqueue/I;

    invoke-direct {v1, p0, v5}, Lcom/dropbox/android/taskqueue/I;-><init>(Lcom/dropbox/android/taskqueue/G;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/dropbox/android/taskqueue/G;->a(Lcom/dropbox/android/util/aH;)Lcom/dropbox/android/taskqueue/DbTask;

    move-result-object v1

    .line 250
    if-nez v1, :cond_10

    .line 252
    const/4 v3, 0x0

    .line 253
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/taskqueue/DbTask;

    .line 254
    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/DbTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 255
    const/4 v1, 0x1

    .line 259
    :goto_47
    if-nez v1, :cond_10

    .line 260
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 276
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    move-object p1, v2

    .line 268
    :cond_51
    :try_start_51
    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/G;->b(Ljava/util/Collection;)V

    .line 270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 271
    const-string v2, "enqueue"

    invoke-static {v2, v0}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/r;->c()V

    .line 272
    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/G;->b(Lcom/dropbox/android/taskqueue/DbTask;)V

    goto :goto_58

    .line 275
    :cond_71
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->j()V

    .line 276
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_51 .. :try_end_75} :catchall_4d

    .line 282
    invoke-direct {p0, p1}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/util/Collection;)V

    .line 283
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/G;->f()V

    .line 284
    return-void

    :cond_7c
    move v1, v3

    goto :goto_47
.end method

.method public final declared-synchronized b(Ljava/lang/Class;)I
    .registers 5
    .parameter

    .prologue
    .line 450
    monitor-enter p0

    const/4 v1, 0x0

    .line 452
    :try_start_2
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 453
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 454
    add-int/lit8 v0, v1, 0x1

    :goto_20
    move v1, v0

    goto :goto_8

    .line 458
    :cond_22
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DbTask;

    .line 459
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_44

    move-result v0

    if-eqz v0, :cond_47

    .line 460
    add-int/lit8 v0, v1, 0x1

    :goto_40
    move v1, v0

    goto :goto_28

    .line 464
    :cond_42
    monitor-exit p0

    return v1

    .line 450
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_47
    move v0, v1

    goto :goto_40

    :cond_49
    move v0, v1

    goto :goto_20
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 492
    new-instance v0, Lcom/dropbox/android/taskqueue/L;

    invoke-direct {v0, p0}, Lcom/dropbox/android/taskqueue/L;-><init>(Lcom/dropbox/android/taskqueue/G;)V

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/L;->start()V

    .line 502
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 507
    return-void
.end method

.method public final declared-synchronized d()Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 598
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "local_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    .line 600
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 602
    const/4 v0, 0x0

    .line 603
    const-class v2, Lcom/dropbox/android/taskqueue/UserImportUploadTask;

    .line 606
    iget-object v3, p0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-static {v3, v2, v0, v1}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/util/Collection;Ljava/lang/Class;ILandroid/database/MatrixCursor;)I

    move-result v0

    add-int/2addr v0, v4

    .line 607
    iget-object v3, p0, Lcom/dropbox/android/taskqueue/G;->c:Ljava/util/TreeSet;

    invoke-static {v3, v2, v0, v1}, Lcom/dropbox/android/taskqueue/G;->a(Ljava/util/Collection;Ljava/lang/Class;ILandroid/database/MatrixCursor;)I

    .line 609
    new-instance v0, Lcom/dropbox/android/provider/p;

    invoke-direct {v0, v1}, Lcom/dropbox/android/provider/p;-><init>(Landroid/database/Cursor;)V

    .line 610
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/provider/p;->a(Landroid/database/ContentObservable;)V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_39

    .line 612
    monitor-exit p0

    return-object v0

    .line 598
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Landroid/database/Cursor;
    .registers 19

    .prologue
    .line 624
    monitor-enter p0

    const/16 v1, 0x9

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "camera_upload_status"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "camera_upload_initial_scan"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "camera_upload_num_remaining"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "camera_upload_local_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "camera_upload_local_mime_type"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "camera_upload_file_path"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "camera_upload_pending_paths_json"

    aput-object v3, v1, v2

    .line 633
    new-instance v11, Landroid/database/MatrixCursor;

    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 635
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v12

    .line 636
    invoke-virtual {v12}, Ldbxyzptlk/j/m;->f()Z

    move-result v1

    if-eqz v1, :cond_1bc

    .line 637
    sget-object v8, Lcom/dropbox/android/taskqueue/P;->f:Lcom/dropbox/android/taskqueue/P;

    .line 638
    const/4 v9, 0x0

    .line 639
    const-class v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/G;->b(Ljava/lang/Class;)I

    move-result v13

    .line 640
    const/4 v7, 0x0

    .line 641
    const/4 v6, 0x0

    .line 642
    const/4 v5, 0x0

    .line 643
    const-wide/16 v3, -0x1

    .line 644
    const/4 v2, 0x0

    .line 646
    invoke-virtual {v12}, Ldbxyzptlk/j/m;->i()Ldbxyzptlk/j/p;

    move-result-object v1

    sget-object v10, Ldbxyzptlk/j/p;->c:Ldbxyzptlk/j/p;

    if-ne v1, v10, :cond_6d

    .line 647
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/service/w;->a()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 648
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->d:Lcom/dropbox/android/taskqueue/P;

    .line 652
    :goto_6b
    const/4 v9, 0x1

    move-object v8, v1

    .line 655
    :cond_6d
    if-lez v13, :cond_d3

    .line 656
    if-nez v9, :cond_1d4

    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_79
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/taskqueue/DbTask;

    .line 658
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    .line 660
    sget-object v8, Lcom/dropbox/android/taskqueue/P;->g:Lcom/dropbox/android/taskqueue/P;

    .line 661
    const/4 v2, 0x1

    .line 662
    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/DbTask;->m()J

    move-result-wide v3

    move v10, v2

    move-object v2, v1

    move-object v1, v8

    .line 669
    :goto_9b
    if-nez v2, :cond_1d1

    .line 671
    const-class v2, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/dropbox/android/taskqueue/G;->c(Ljava/lang/Class;)Lcom/dropbox/android/taskqueue/DbTask;

    move-result-object v3

    .line 672
    invoke-virtual {v3}, Lcom/dropbox/android/taskqueue/DbTask;->m()J

    move-result-wide v8

    .line 674
    if-nez v10, :cond_1cc

    .line 675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/taskqueue/G;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10f

    .line 677
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->d:Lcom/dropbox/android/taskqueue/P;

    move-object v2, v3

    move-wide v3, v8

    move-object v8, v1

    .line 712
    :goto_ba
    if-eqz v2, :cond_d3

    .line 713
    invoke-virtual {v2}, Lcom/dropbox/android/taskqueue/DbTask;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 714
    invoke-virtual {v2}, Lcom/dropbox/android/taskqueue/DbTask;->k()Ljava/lang/String;

    move-result-object v5

    .line 715
    move-object v0, v2

    check-cast v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->j()Ljava/lang/String;

    move-result-object v1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v1

    .line 719
    :cond_d3
    const/16 v1, 0x8

    const-class v9, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9}, Lcom/dropbox/android/taskqueue/G;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 720
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 721
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e6
    :goto_e6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_173

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/taskqueue/DbTask;

    .line 725
    if-eqz v2, :cond_100

    invoke-virtual {v2}, Lcom/dropbox/android/taskqueue/DbTask;->m()J

    move-result-wide v14

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/DbTask;->m()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_e6

    .line 726
    :cond_100
    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/DbTask;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_107
    .catchall {:try_start_3 .. :try_end_107} :catchall_108

    goto :goto_e6

    .line 624
    :catchall_108
    move-exception v1

    monitor-exit p0

    throw v1

    .line 650
    :cond_10b
    :try_start_10b
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->b:Lcom/dropbox/android/taskqueue/P;

    goto/16 :goto_6b

    .line 680
    :cond_10f
    new-instance v1, Ldbxyzptlk/i/i;

    invoke-direct {v1, v8, v9}, Ldbxyzptlk/i/i;-><init>(J)V

    .line 681
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v2

    .line 683
    instance-of v1, v2, Ldbxyzptlk/i/j;

    if-eqz v1, :cond_141

    move-object v0, v2

    check-cast v0, Ldbxyzptlk/i/j;

    move-object v1, v0

    invoke-virtual {v1}, Ldbxyzptlk/i/j;->e()Lcom/dropbox/android/taskqueue/m;

    move-result-object v1

    sget-object v4, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    if-eq v1, v4, :cond_13a

    check-cast v2, Ldbxyzptlk/i/j;

    invoke-virtual {v2}, Ldbxyzptlk/i/j;->e()Lcom/dropbox/android/taskqueue/m;

    move-result-object v1

    sget-object v2, Lcom/dropbox/android/taskqueue/m;->l:Lcom/dropbox/android/taskqueue/m;

    if-ne v1, v2, :cond_141

    .line 686
    :cond_13a
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->h:Lcom/dropbox/android/taskqueue/P;

    move-object v2, v3

    move-wide v3, v8

    move-object v8, v1

    goto/16 :goto_ba

    .line 689
    :cond_141
    invoke-virtual {v3}, Lcom/dropbox/android/taskqueue/DbTask;->j_()Lcom/dropbox/android/taskqueue/o;

    move-result-object v1

    .line 690
    sget-object v2, Lcom/dropbox/android/taskqueue/N;->a:[I

    invoke-virtual {v1}, Lcom/dropbox/android/taskqueue/o;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1d8

    .line 704
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->d:Lcom/dropbox/android/taskqueue/P;

    move-object v2, v3

    move-wide v3, v8

    move-object v8, v1

    goto/16 :goto_ba

    .line 692
    :pswitch_157
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->b:Lcom/dropbox/android/taskqueue/P;

    move-object v2, v3

    move-wide v3, v8

    move-object v8, v1

    .line 693
    goto/16 :goto_ba

    .line 695
    :pswitch_15e
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->a:Lcom/dropbox/android/taskqueue/P;

    move-object v2, v3

    move-wide v3, v8

    move-object v8, v1

    .line 696
    goto/16 :goto_ba

    .line 698
    :pswitch_165
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->c:Lcom/dropbox/android/taskqueue/P;

    move-object v2, v3

    move-wide v3, v8

    move-object v8, v1

    .line 699
    goto/16 :goto_ba

    .line 701
    :pswitch_16c
    sget-object v1, Lcom/dropbox/android/taskqueue/P;->e:Lcom/dropbox/android/taskqueue/P;

    move-object v2, v3

    move-wide v3, v8

    move-object v8, v1

    .line 702
    goto/16 :goto_ba

    .line 730
    :cond_173
    const/16 v1, 0x9

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v1

    const/4 v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {v8}, Lcom/dropbox/android/taskqueue/P;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x3

    invoke-virtual {v12}, Ldbxyzptlk/j/m;->h()Z

    move-result v1

    if-eqz v1, :cond_1ca

    invoke-virtual {v12}, Ldbxyzptlk/j/m;->r()Z

    move-result v1

    if-nez v1, :cond_1ca

    const/4 v1, 0x1

    :goto_19b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const/4 v1, 0x7

    aput-object v5, v2, v1

    const/16 v1, 0x8

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v11, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 743
    :cond_1bc
    new-instance v1, Lcom/dropbox/android/provider/p;

    invoke-direct {v1, v11}, Lcom/dropbox/android/provider/p;-><init>(Landroid/database/Cursor;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/taskqueue/G;->k:Landroid/database/ContentObservable;

    invoke-virtual {v1, v2}, Lcom/dropbox/android/provider/p;->a(Landroid/database/ContentObservable;)V
    :try_end_1c8
    .catchall {:try_start_10b .. :try_end_1c8} :catchall_108

    .line 746
    monitor-exit p0

    return-object v1

    .line 730
    :cond_1ca
    const/4 v1, 0x0

    goto :goto_19b

    :cond_1cc
    move-object v2, v3

    move-wide v3, v8

    move-object v8, v1

    goto/16 :goto_ba

    :cond_1d1
    move-object v8, v1

    goto/16 :goto_ba

    :cond_1d4
    move v10, v9

    move-object v1, v8

    goto/16 :goto_9b

    .line 690
    :pswitch_data_1d8
    .packed-switch 0x1
        :pswitch_157
        :pswitch_15e
        :pswitch_165
        :pswitch_16c
    .end packed-switch
.end method
