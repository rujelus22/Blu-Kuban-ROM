.class final Lcom/google/android/youtube/core/transfer/TransfersExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/core/transfer/r;

.field private final c:Lcom/google/android/youtube/core/transfer/n;

.field private final d:Ljava/util/Random;

.field private final e:Landroid/os/HandlerThread;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Object;

.field private h:I

.field private i:I

.field private final j:Lcom/google/android/youtube/core/transfer/j;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Map;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/HashSet;

.field private final o:Landroid/os/PowerManager$WakeLock;

.field private final p:Landroid/net/wifi/WifiManager$WifiLock;

.field private final q:Lcom/google/android/youtube/core/transfer/q;

.field private final r:Lcom/google/android/youtube/core/transfer/o;

.field private final s:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/n;Lcom/google/android/youtube/core/transfer/r;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    .line 115
    iput-object p3, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b:Lcom/google/android/youtube/core/transfer/r;

    .line 117
    new-instance v0, Lcom/google/android/youtube/core/transfer/j;

    invoke-direct {v0, p1, p4}, Lcom/google/android/youtube/core/transfer/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    .line 118
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->d:Ljava/util/Random;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/HashSet;

    .line 125
    new-instance v0, Lcom/google/android/youtube/core/transfer/o;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/o;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/o;

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/o;->b()V

    .line 127
    new-instance v0, Lcom/google/android/youtube/core/transfer/q;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/q;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Lcom/google/android/youtube/core/transfer/q;

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Lcom/google/android/youtube/core/transfer/q;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/q;->c()V

    .line 129
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->s:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->s:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->a()V

    .line 132
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 133
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Landroid/os/PowerManager$WakeLock;

    .line 134
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/net/wifi/WifiManager$WifiLock;

    .line 137
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->e:Landroid/os/HandlerThread;

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v0, Lcom/google/android/youtube/core/transfer/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/transfer/l;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    .line 145
    return-void
.end method

.method private a(IIILjava/lang/Object;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    return v0

    .line 214
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    return v0

    .line 207
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/Object;I)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return v0

    .line 221
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransfersExecutor;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 197
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    return v0

    .line 200
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a:Landroid/content/Context;

    return-object v0
.end method

.method private final c()V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 397
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->w:Z

    if-nez v0, :cond_7

    .line 442
    :cond_6
    :goto_6
    return-void

    .line 404
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->t:Z

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Lcom/google/android/youtube/core/transfer/q;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/q;->b()Z

    move-result v0

    if-nez v0, :cond_c1

    move v0, v2

    .line 405
    :goto_14
    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->u:Z

    if-eqz v1, :cond_c4

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->s:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->c()Z

    move-result v1

    if-nez v1, :cond_c4

    move v4, v2

    .line 406
    :goto_21
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/o;->a()Z

    move-result v1

    if-nez v1, :cond_c7

    move v5, v2

    .line 408
    :goto_2a
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Lcom/google/android/youtube/core/transfer/q;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/q;->a()Z

    move-result v1

    if-nez v1, :cond_ca

    const/4 v1, 0x2

    :goto_33
    or-int/lit8 v6, v1, 0x0

    .line 410
    if-eqz v5, :cond_cd

    const/4 v1, 0x4

    :goto_38
    or-int/2addr v1, v6

    .line 411
    if-eqz v0, :cond_d0

    const/16 v0, 0x8

    :goto_3d
    or-int/2addr v1, v0

    .line 412
    if-eqz v4, :cond_d3

    const/16 v0, 0x10

    :goto_42
    or-int v8, v1, v0

    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v3

    move v1, v3

    :goto_50
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/p;

    .line 414
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->b()Z

    move-result v7

    if-eqz v7, :cond_143

    .line 417
    iget v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->v:I

    if-lt v6, v1, :cond_d6

    const/16 v1, 0x20

    :goto_68
    or-int v10, v8, v1

    .line 419
    if-nez v10, :cond_dc

    .line 420
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/HashSet;

    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    :cond_80
    move v1, v2

    .line 422
    :goto_81
    if-nez v1, :cond_bc

    .line 423
    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_da

    move v1, v2

    :goto_8e
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/k;->b(Z)V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b:Lcom/google/android/youtube/core/transfer/r;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v10

    invoke-interface {v1, v10, p0}, Lcom/google/android/youtube/core/transfer/r;->a(Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/transfer/h;

    move-result-object v1

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v10, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v7, v0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput v3, v0, Lcom/google/android/youtube/core/transfer/p;->d:I

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v7, v0}, Lcom/google/android/youtube/core/transfer/j;->b(Lcom/google/android/youtube/core/transfer/p;)V

    new-instance v7, Lcom/google/android/youtube/core/transfer/m;

    invoke-direct {v7, p0, v1}, Lcom/google/android/youtube/core/transfer/m;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Lcom/google/android/youtube/core/transfer/m;->start()V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/n;->e(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 425
    :cond_bc
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v2

    .line 426
    goto :goto_50

    :cond_c1
    move v0, v3

    .line 404
    goto/16 :goto_14

    :cond_c4
    move v4, v3

    .line 405
    goto/16 :goto_21

    :cond_c7
    move v5, v3

    .line 406
    goto/16 :goto_2a

    :cond_ca
    move v1, v3

    .line 408
    goto/16 :goto_33

    :cond_cd
    move v1, v3

    .line 410
    goto/16 :goto_38

    :cond_d0
    move v0, v3

    .line 411
    goto/16 :goto_3d

    :cond_d3
    move v0, v3

    .line 412
    goto/16 :goto_42

    :cond_d6
    move v1, v3

    .line 417
    goto :goto_68

    :cond_d8
    move v1, v3

    .line 420
    goto :goto_81

    :cond_da
    move v1, v3

    .line 423
    goto :goto_8e

    .line 427
    :cond_dc
    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v7, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v1, v7, :cond_141

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v1, v0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move v7, v2

    :goto_e7
    iget-object v11, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/h;

    if-eqz v1, :cond_f6

    invoke-interface {v1}, Lcom/google/android/youtube/core/transfer/h;->a()V

    :cond_f6
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/HashSet;

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/google/android/youtube/core/transfer/p;->d:I

    if-eq v1, v10, :cond_107

    iput v10, v0, Lcom/google/android/youtube/core/transfer/p;->d:I

    move v7, v2

    :cond_107
    if-eqz v7, :cond_117

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/j;->b(Lcom/google/android/youtube/core/transfer/p;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/n;->e(Lcom/google/android/youtube/core/transfer/Transfer;)V

    :cond_117
    move v0, v2

    :goto_118
    move v1, v0

    .line 429
    goto/16 :goto_50

    .line 432
    :cond_11b
    iput-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->x:Z

    .line 433
    if-eqz v1, :cond_132

    if-nez v4, :cond_132

    if-nez v5, :cond_132

    .line 434
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto/16 :goto_6

    .line 439
    :cond_132
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 440
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_6

    :cond_141
    move v7, v3

    goto :goto_e7

    :cond_143
    move v0, v1

    goto :goto_118
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(I)I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .registers 5
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x2

    new-instance v1, Lcom/google/android/youtube/core/transfer/p;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/youtube/core/transfer/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Z)I
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 161
    const/4 v2, 0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_5
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    move-result v0

    return v0

    :cond_b
    move v0, v1

    goto :goto_5
.end method

.method public final a(Landroid/os/Message;)V
    .registers 8
    .parameter

    .prologue
    const/16 v4, 0x1f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_298

    .line 385
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_c
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->h:I

    iget v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    if-ne v0, v2, :cond_21

    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->x:Z

    if-nez v0, :cond_21

    .line 387
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    iget v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->h:I

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/transfer/n;->a(I)V

    .line 389
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_295

    :cond_22
    return-void

    .line 228
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/j;->a()V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/j;->b()Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/p;

    .line 232
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->b()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 234
    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v3, v4, :cond_32

    .line 236
    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v3, v0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 237
    iput v2, v0, Lcom/google/android/youtube/core/transfer/p;->d:I

    .line 238
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/transfer/j;->b(Lcom/google/android/youtube/core/transfer/p;)V

    goto :goto_32

    .line 244
    :cond_5d
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/p;

    .line 246
    iget-object v4, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 248
    :cond_88
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/util/Map;)V

    .line 249
    iput-boolean v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->w:Z

    .line 250
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 255
    :pswitch_94
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_a4

    move v0, v2

    .line 256
    :goto_99
    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->u:Z

    if-eq v1, v0, :cond_9

    .line 257
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->u:Z

    .line 258
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    :cond_a4
    move v0, v3

    .line 255
    goto :goto_99

    .line 264
    :pswitch_a6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_b5

    .line 265
    :goto_aa
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->t:Z

    if-eq v0, v2, :cond_9

    .line 266
    iput-boolean v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->t:Z

    .line 267
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    :cond_b5
    move v2, v3

    .line 264
    goto :goto_aa

    .line 273
    :pswitch_b7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 274
    iget v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->v:I

    if-eq v1, v0, :cond_9

    .line 275
    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->v:I

    .line 276
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 282
    :pswitch_c4
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 287
    :pswitch_c9
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->w:Z

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->b(Z)V

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/p;

    .line 289
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 292
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/j;->a(Lcom/google/android/youtube/core/transfer/p;)V

    .line 293
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/n;->a(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 295
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 301
    :pswitch_f6
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->w:Z

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/k;->b(Z)V

    .line 302
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 306
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/h;

    .line 307
    if-eqz v1, :cond_114

    .line 308
    invoke-interface {v1}, Lcom/google/android/youtube/core/transfer/h;->a()V

    .line 310
    :cond_114
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/p;

    .line 314
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/j;->c(Lcom/google/android/youtube/core/transfer/p;)V

    .line 315
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/n;->b(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 316
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 322
    :pswitch_13e
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/p;

    .line 323
    if-eqz v0, :cond_22

    .line 327
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    shl-long/2addr v1, v4

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/youtube/core/transfer/p;->f:J

    .line 328
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/j;->b(Lcom/google/android/youtube/core/transfer/p;)V

    .line 329
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/n;->c(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto/16 :goto_9

    .line 334
    :pswitch_164
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/p;

    .line 335
    if-eqz v0, :cond_22

    .line 339
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    shl-long/2addr v1, v4

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/youtube/core/transfer/p;->e:J

    .line 341
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/j;->b(Lcom/google/android/youtube/core/transfer/p;)V

    .line 342
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/n;->d(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto/16 :goto_9

    .line 348
    :pswitch_191
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 349
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 350
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/transfer/p;

    .line 351
    if-eqz v2, :cond_22

    .line 355
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_1d3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/b;

    :goto_1ab
    iput-object v0, v2, Lcom/google/android/youtube/core/transfer/p;->h:Lcom/google/android/youtube/core/transfer/b;

    .line 356
    sget-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, v2, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 357
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/transfer/j;->b(Lcom/google/android/youtube/core/transfer/p;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/transfer/n;->e(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 362
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 355
    :cond_1d3
    new-instance v0, Lcom/google/android/youtube/core/transfer/b;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/b;-><init>()V

    goto :goto_1ab

    .line 367
    :pswitch_1d9
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/p;

    .line 368
    if-eqz v0, :cond_22

    .line 372
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_23a

    move v4, v2

    :goto_1ea
    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_23c

    :goto_1f6
    add-int/lit8 v1, v3, 0x1

    if-nez v4, :cond_1fe

    const/16 v3, 0x14

    if-le v1, v3, :cond_241

    :cond_1fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transfer fatal fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v1, v0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/j;->b(Lcom/google/android/youtube/core/transfer/p;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/p;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/n;->e(Lcom/google/android/youtube/core/transfer/Transfer;)V

    :goto_235
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    :cond_23a
    move v4, v3

    goto :goto_1ea

    :cond_23c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1f6

    :cond_241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transfer fail "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    shl-int v0, v2, v1

    mul-int/lit16 v0, v0, 0x3e8

    const v1, 0x927c0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->d:Ljava/util/Random;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-direct {p0, v1, v5, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(ILjava/lang/Object;I)I

    goto :goto_235

    .line 377
    :pswitch_284
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 378
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 379
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 389
    :catchall_295
    move-exception v0

    monitor-exit v1

    throw v0

    .line 225
    :pswitch_data_298
    .packed-switch 0x1
        :pswitch_23
        :pswitch_c9
        :pswitch_f6
        :pswitch_a6
        :pswitch_94
        :pswitch_b7
        :pswitch_c4
        :pswitch_13e
        :pswitch_164
        :pswitch_191
        :pswitch_1d9
        :pswitch_284
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 529
    const/16 v0, 0x8

    const/16 v1, 0x1f

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v2, p2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    .line 530
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 541
    const/16 v2, 0xb

    iget-boolean v0, p2, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    .line 542
    return-void

    :cond_c
    move v0, v1

    .line 541
    goto :goto_8
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 537
    const/16 v0, 0xa

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(ILjava/lang/Object;)I

    .line 538
    return-void
.end method

.method public final b(Z)I
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 165
    const/4 v2, 0x4

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_5
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    move-result v0

    return v0

    :cond_b
    move v0, v1

    goto :goto_5
.end method

.method public final b()V
    .registers 6

    .prologue
    .line 180
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 181
    const-string v0, "wifiLock held in quit"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0

    .line 184
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/o;->c()V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Lcom/google/android/youtube/core/transfer/q;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/q;->d()V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->s:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->b()V

    .line 188
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_25
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    iget v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->h:I

    sub-int v2, v0, v2

    .line 190
    if-nez v2, :cond_50

    const/4 v0, 0x1

    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pendingMessages = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/k;->b(ZLjava/lang/Object;)V

    .line 191
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_52

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Lcom/google/android/youtube/core/transfer/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/j;->c()V

    .line 194
    return-void

    .line 190
    :cond_50
    const/4 v0, 0x0

    goto :goto_2e

    .line 191
    :catchall_52
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 533
    const/16 v0, 0x9

    const/16 v1, 0x1f

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v2, p2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    .line 534
    return-void
.end method
