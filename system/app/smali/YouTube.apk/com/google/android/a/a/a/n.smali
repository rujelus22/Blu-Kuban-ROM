.class public Lcom/google/android/a/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/a/b/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/List;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private g:Lcom/google/android/a/a/a/a;

.field private h:Lcom/google/android/a/a/c/a;

.field private final i:Landroid/content/Context;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Z

.field private m:Ljava/lang/Thread;

.field private n:Z

.field private o:Z

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/util/concurrent/Executor;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Ljava/util/Timer;

.field private t:J

.field private u:Lcom/google/android/a/a/a/v;

.field private v:Lcom/google/android/a/a/c/c;

.field private w:Lcom/google/android/a/a/c/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/a/n;->a:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/google/android/a/a/a/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/a/n;->c:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/a/a/n;->l:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/a/a/a/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    iput-object p5, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    .line 96
    iput-object p4, p0, Lcom/google/android/a/a/a/n;->j:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/google/android/a/a/a/n;->f:Ljava/lang/String;

    .line 98
    const/16 v0, 0x50

    iput v0, p0, Lcom/google/android/a/a/a/n;->e:I

    .line 99
    iput-object p3, p0, Lcom/google/android/a/a/a/n;->d:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->h()V

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/a/a/a/n;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/a/a/a/n;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 107
    const-wide/16 v3, 0xe10

    .line 108
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 109
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 110
    new-instance v7, Lcom/google/android/a/a/a/o;

    invoke-direct {v7, p0}, Lcom/google/android/a/a/a/o;-><init>(Lcom/google/android/a/a/a/n;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 105
    iput-object v0, p0, Lcom/google/android/a/a/a/n;->q:Ljava/util/concurrent/Executor;

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/a;)Lcom/google/android/a/a/a/a;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 347
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/a/a/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "method"

    invoke-virtual {p1}, Lcom/google/android/a/a/c/a;->b()Lcom/google/android/a/a/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/a/a/c/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/a/a/c/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "params"

    invoke-virtual {p1}, Lcom/google/android/a/a/c/a;->c()Lcom/google/android/a/a/c/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/a/f/c;->a(Lcom/google/android/a/a/c/d;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/a/a/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "X-YouTube-LoungeId-Token"

    invoke-virtual {p1}, Lcom/google/android/a/a/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    invoke-virtual {p1}, Lcom/google/android/a/a/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "Authorization"

    invoke-virtual {p1}, Lcom/google/android/a/a/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    new-instance v0, Lcom/google/android/a/a/a/a;

    iget-object v1, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    invoke-static {}, Lcom/google/net/async/x;->a()Lcom/google/net/async/p;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/a/a/a/n;->f:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/a/a/a/n;->e:I

    iget-object v5, p0, Lcom/google/android/a/a/a/n;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/a/a/a/n;->u:Lcom/google/android/a/a/a/v;

    iget-object v7, p0, Lcom/google/android/a/a/a/n;->j:Ljava/lang/String;

    sget-object v8, Lcom/google/android/a/a/a/n;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/a/a/a/a;-><init>(Landroid/content/Context;Lcom/google/net/async/p;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/a/a/a/v;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/a/a/a/n;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/a/a;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/a/a/a/n;->g:Lcom/google/android/a/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/a/a/n;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    if-eqz p1, :cond_13

    sget-object v0, Lcom/google/android/a/c/b;->k:Lcom/google/android/a/c/b;

    invoke-virtual {v0}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_13
    sget-object v0, Lcom/google/android/a/c/b;->l:Lcom/google/android/a/c/b;

    invoke-virtual {v0}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v0

    goto :goto_f
.end method

.method private a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;Ljava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 459
    sget-object v0, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Calling "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-object v6, p0, Lcom/google/android/a/a/a/n;->v:Lcom/google/android/a/a/c/c;

    .line 461
    iput-object v6, p0, Lcom/google/android/a/a/a/n;->w:Lcom/google/android/a/a/c/d;

    .line 462
    iget-boolean v0, p0, Lcom/google/android/a/a/a/n;->o:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/a/a/a/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 465
    const-wide/16 v6, 0x64

    :try_start_3a
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_18c

    .line 469
    :cond_3d
    :goto_3d
    iget-boolean v0, p0, Lcom/google/android/a/a/a/n;->o:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/a/a/a/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 470
    :cond_49
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_86

    .line 473
    sget-object v1, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dropping call for method:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], because"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 474
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, " still connecting, but not done"

    :goto_7a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_85
    return-void

    .line 470
    :cond_86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    sget-object v1, Lcom/google/android/a/a/b/c;->b:Lcom/google/android/a/a/b/c;

    goto :goto_4d

    .line 474
    :cond_8c
    const-string v0, " not connected"

    goto :goto_7a

    :cond_8f
    move v0, v5

    move v2, v5

    .line 480
    :goto_91
    if-ge v0, v1, :cond_95

    if-eqz v2, :cond_e3

    .line 524
    :cond_95
    invoke-direct {p0, v5}, Lcom/google/android/a/a/a/n;->a(Z)V

    .line 525
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    sget-object v1, Lcom/google/android/a/c/b;->p:Lcom/google/android/a/c/b;

    invoke-virtual {v1}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 526
    if-nez v2, :cond_15e

    .line 527
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->e()V

    .line 528
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->i()V

    .line 529
    iput-object p1, p0, Lcom/google/android/a/a/a/n;->v:Lcom/google/android/a/a/c/c;

    .line 530
    iput-object p2, p0, Lcom/google/android/a/a/a/n;->w:Lcom/google/android/a/a/c/d;

    .line 531
    sget-object v0, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error sending message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_d3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    sget-object v1, Lcom/google/android/a/a/b/c;->c:Lcom/google/android/a/a/b/c;

    goto :goto_d7

    .line 482
    :cond_e3
    :try_start_e3
    iget-object v4, p0, Lcom/google/android/a/a/a/n;->g:Lcom/google/android/a/a/a/a;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/a/a/a/a;->a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)Lcom/google/android/a/a/a/j;

    move-result-object v4

    .line 483
    invoke-virtual {v4}, Lcom/google/android/a/a/a/j;->b()I

    move-result v4

    sparse-switch v4, :sswitch_data_198

    .line 480
    :goto_f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 486
    :sswitch_f3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 487
    sget-object v6, Lcom/google/android/a/a/b/c;->a:Lcom/google/android/a/a/b/c;
    :try_end_102
    .catch Lcom/google/android/a/a/a/w; {:try_start_e3 .. :try_end_102} :catch_107
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_102} :catch_195
    .catch Ljava/lang/InterruptedException; {:try_start_e3 .. :try_end_102} :catch_192
    .catch Lcom/google/android/a/d/a/a; {:try_start_e3 .. :try_end_102} :catch_18f
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_102} :catch_138

    goto :goto_f7

    :sswitch_103
    move v2, v3

    .line 494
    goto :goto_f0

    :sswitch_105
    move v0, v1

    .line 499
    goto :goto_f0

    .line 502
    :catch_107
    move-exception v4

    .line 503
    sget-object v6, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while sending message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v4}, Lcom/google/android/a/a/a/w;->a()I

    move-result v4

    packed-switch v4, :pswitch_data_1b2

    :pswitch_133
    goto :goto_f0

    :pswitch_134
    move v0, v1

    .line 514
    goto :goto_f0

    :pswitch_136
    move v2, v3

    .line 509
    goto :goto_f0

    .line 520
    :catch_138
    move-exception v4

    .line 521
    sget-object v6, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while sending message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f0

    .line 533
    :cond_15e
    sget-object v0, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fatal error while sending message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Closing connection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lcom/google/android/a/a/a/n;->a()V

    .line 536
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_d3

    :catch_18c
    move-exception v0

    goto/16 :goto_3d

    .line 519
    :catch_18f
    move-exception v4

    goto/16 :goto_f0

    .line 518
    :catch_192
    move-exception v4

    goto/16 :goto_f0

    .line 517
    :catch_195
    move-exception v4

    goto/16 :goto_f0

    .line 483
    :sswitch_data_198
    .sparse-switch
        0xc8 -> :sswitch_f3
        0x190 -> :sswitch_105
        0x191 -> :sswitch_103
        0x193 -> :sswitch_103
        0x194 -> :sswitch_105
        0x19a -> :sswitch_105
    .end sparse-switch

    .line 504
    :pswitch_data_1b2
    .packed-switch 0x190
        :pswitch_134
        :pswitch_136
        :pswitch_133
        :pswitch_136
        :pswitch_134
        :pswitch_133
        :pswitch_133
        :pswitch_133
        :pswitch_133
        :pswitch_133
        :pswitch_134
    .end packed-switch
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/google/android/a/a/a/n;->o:Z

    .line 545
    iget-object v1, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    if-eqz p1, :cond_10

    sget-object v0, Lcom/google/android/a/c/b;->i:Lcom/google/android/a/c/b;

    invoke-virtual {v0}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    return-void

    .line 546
    :cond_10
    sget-object v0, Lcom/google/android/a/c/b;->j:Lcom/google/android/a/c/b;

    invoke-virtual {v0}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v0

    goto :goto_c
.end method

.method static synthetic b(Lcom/google/android/a/a/a/n;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/a/a/a/n;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/a/a/n;->o:Z

    return-void
.end method

.method static synthetic c(Lcom/google/android/a/a/a/n;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/android/a/a/a/n;->n:Z

    return-void
.end method

.method static synthetic c(Lcom/google/android/a/a/a/n;)Z
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/a/a/a/n;->o:Z

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/a/a/a/n;)V
    .registers 1
    .parameter

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->e()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/a/a;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->g:Lcom/google/android/a/a/a/a;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->g:Lcom/google/android/a/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/a;->a(Z)V

    .line 272
    return-void
.end method

.method private static f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 384
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 383
    if-nez v0, :cond_c

    .line 397
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 385
    :cond_c
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 386
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 387
    :cond_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 386
    if-eqz v0, :cond_4

    .line 388
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 389
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_16

    .line 390
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_b

    .line 394
    :catch_31
    move-exception v0

    .line 395
    sget-object v1, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method static synthetic f(Lcom/google/android/a/a/a/n;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 381
    invoke-static {}, Lcom/google/android/a/a/a/n;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/a/a/a/n;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/a/a/a/n;->a(Z)V

    .line 402
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->e()V

    .line 403
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->i()V

    .line 404
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    sget-object v1, Lcom/google/android/a/c/b;->p:Lcom/google/android/a/c/b;

    invoke-virtual {v1}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/a/a/n;->l:Z

    .line 409
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x7d0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/a/a/a/n;->t:J

    .line 410
    return-void
.end method

.method static synthetic h(Lcom/google/android/a/a/a/n;)V
    .registers 5
    .parameter

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->g:Lcom/google/android/a/a/a/a;

    invoke-virtual {v0}, Lcom/google/android/a/a/a/a;->a()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/a/a/a/n;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->h()V
    :try_end_c
    .catch Lcom/google/android/a/a/a/w; {:try_start_0 .. :try_end_c} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_43

    new-instance v0, Lcom/google/android/a/a/a/r;

    const-string v1, "HangingGetThread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/a/a/a/r;-><init>(Lcom/google/android/a/a/a/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/a/a/a/n;->m:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/a/a/a/n;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response when binding channel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/a/a/a/w;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/android/a/a/a/w;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    :goto_3b
    :pswitch_3b
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->g()V

    goto :goto_1a

    :pswitch_3f
    invoke-virtual {p0}, Lcom/google/android/a/a/a/n;->a()V

    goto :goto_3b

    :catch_43
    move-exception v0

    sget-object v1, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    const-string v2, "Error connecting to Remote Control server:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->g()V

    goto :goto_1a

    nop

    :pswitch_data_50
    .packed-switch 0x191
        :pswitch_3f
        :pswitch_3b
        :pswitch_3f
    .end packed-switch
.end method

.method static synthetic i(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/c/c;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->v:Lcom/google/android/a/a/c/c;

    return-object v0
.end method

.method private i()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x2

    .line 413
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 450
    :cond_a
    :goto_a
    return-void

    .line 418
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/a/a/a/n;->l:Z

    if-eqz v0, :cond_18

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/a/a/n;->l:Z

    .line 420
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->h:Lcom/google/android/a/a/c/a;

    invoke-virtual {p0, v0}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/c/a;)V

    goto :goto_a

    .line 423
    :cond_18
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/a/b/b/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 424
    sget-object v0, Lcom/google/android/a/c/b;->h:Lcom/google/android/a/c/b;

    invoke-virtual {v0}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 430
    :cond_2b
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    .line 434
    iget-wide v0, p0, Lcom/google/android/a/a/a/n;->t:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x3a980

    cmp-long v0, v0, v2

    if-gez v0, :cond_42

    .line 435
    iget-wide v0, p0, Lcom/google/android/a/a/a/n;->t:J

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/a/a/a/n;->t:J

    .line 438
    :cond_42
    sget-object v0, Lcom/google/android/a/a/a/n;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reconnecting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/a/a/a/n;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 441
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Timer - Reconnect to RC server"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/a/a/a/n;->s:Ljava/util/Timer;

    .line 442
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->s:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/a/a/a/s;

    invoke-direct {v1, p0}, Lcom/google/android/a/a/a/s;-><init>(Lcom/google/android/a/a/a/n;)V

    .line 449
    iget-wide v2, p0, Lcom/google/android/a/a/a/n;->t:J

    .line 442
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_a
.end method

.method static synthetic j(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/c/d;
    .registers 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->w:Lcom/google/android/a/a/c/d;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/a/a/a/n;)Z
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/a/a/a/n;->n:Z

    return v0
.end method

.method static synthetic l(Lcom/google/android/a/a/a/n;)V
    .registers 1
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->g()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/a/a/a/n;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/c/a;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->h:Lcom/google/android/a/a/c/a;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/a/a/a/n;)Ljava/util/Timer;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->s:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->s:Ljava/util/Timer;

    if-eqz v0, :cond_12

    .line 221
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->s:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/a/a/n;->s:Ljava/util/Timer;

    .line 224
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/a/a/a/n;->o:Z

    if-eqz v0, :cond_19

    .line 225
    invoke-direct {p0}, Lcom/google/android/a/a/a/n;->e()V

    .line 227
    :cond_19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/a/a/a/n;->a(Z)V

    .line 228
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->i:Landroid/content/Context;

    sget-object v1, Lcom/google/android/a/c/b;->b:Lcom/google/android/a/c/b;

    invoke-virtual {v1}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public final a(Lcom/google/android/a/a/a/v;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/a/a/a/n;->u:Lcom/google/android/a/a/a/v;

    .line 265
    return-void
.end method

.method public final a(Lcom/google/android/a/a/c/a;)V
    .registers 4
    .parameter

    .prologue
    .line 120
    invoke-static {p1}, Lcom/google/android/a/f/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iput-object p1, p0, Lcom/google/android/a/a/a/n;->h:Lcom/google/android/a/a/c/a;

    .line 123
    new-instance v0, Lcom/google/android/a/a/a/p;

    const-string v1, "asyncConnect"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/a/a/a/p;-><init>(Lcom/google/android/a/a/a/n;Ljava/lang/String;Lcom/google/android/a/a/c/a;)V

    .line 177
    invoke-virtual {v0}, Lcom/google/android/a/a/a/p;->start()V

    .line 178
    return-void
.end method

.method public final a(Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/a/a/a/n;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/a/a/a/n;->q:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/a/a/a/q;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/a/a/a/q;-><init>(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/a/a/a/n;->o:Z

    return v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/a/a/a/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
