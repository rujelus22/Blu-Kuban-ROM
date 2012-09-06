.class final Lcom/google/android/youtube/core/transfer/TransfersExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/n;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/core/transfer/w;

.field private final c:Lcom/google/android/youtube/core/transfer/s;

.field private final d:Ljava/util/Random;

.field private final e:Landroid/os/HandlerThread;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Object;

.field private h:I

.field private i:I

.field private j:Z

.field private final k:Lcom/google/android/youtube/core/transfer/o;

.field private final l:Ljava/util/Map;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field private final o:Ljava/util/HashSet;

.field private final p:Landroid/os/PowerManager$WakeLock;

.field private final q:Landroid/net/wifi/WifiManager$WifiLock;

.field private final r:Lcom/google/android/youtube/core/transfer/v;

.field private final s:Lcom/google/android/youtube/core/transfer/t;

.field private final t:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/s;Lcom/google/android/youtube/core/transfer/w;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    .line 122
    iput-object p3, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b:Lcom/google/android/youtube/core/transfer/w;

    .line 123
    iput-boolean v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Z

    .line 125
    new-instance v0, Lcom/google/android/youtube/core/transfer/o;

    invoke-direct {v0, p1, p4}, Lcom/google/android/youtube/core/transfer/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    .line 126
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->d:Ljava/util/Random;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Ljava/util/HashSet;

    .line 133
    new-instance v0, Lcom/google/android/youtube/core/transfer/t;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/t;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->s:Lcom/google/android/youtube/core/transfer/t;

    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->s:Lcom/google/android/youtube/core/transfer/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/t;->b()V

    .line 135
    new-instance v0, Lcom/google/android/youtube/core/transfer/v;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/v;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/v;

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/v;->c()V

    .line 137
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->t:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->t:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->a()V

    .line 140
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/os/PowerManager$WakeLock;

    .line 142
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Landroid/net/wifi/WifiManager$WifiLock;

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->e:Landroid/os/HandlerThread;

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v0, Lcom/google/android/youtube/core/transfer/q;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/transfer/q;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method private a(IIILjava/lang/Object;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Z

    .line 224
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return v0

    .line 225
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Z

    .line 216
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return v0

    .line 217
    :catchall_17
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
    .line 229
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, p3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Z

    .line 232
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    return v0

    .line 233
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->p:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 205
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Z

    .line 208
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return v0

    .line 209
    :catchall_17
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

    .line 423
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->x:Z

    if-nez v0, :cond_7

    .line 468
    :cond_6
    :goto_6
    return-void

    .line 430
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->u:Z

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/v;->b()Z

    move-result v0

    if-nez v0, :cond_c1

    move v0, v2

    .line 431
    :goto_14
    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->v:Z

    if-eqz v1, :cond_c4

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->t:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->c()Z

    move-result v1

    if-nez v1, :cond_c4

    move v4, v2

    .line 432
    :goto_21
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->s:Lcom/google/android/youtube/core/transfer/t;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/t;->a()Z

    move-result v1

    if-nez v1, :cond_c7

    move v5, v2

    .line 434
    :goto_2a
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/v;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/v;->a()Z

    move-result v1

    if-nez v1, :cond_ca

    const/4 v1, 0x2

    :goto_33
    or-int/lit8 v6, v1, 0x0

    .line 436
    if-eqz v5, :cond_cd

    const/4 v1, 0x4

    :goto_38
    or-int/2addr v1, v6

    .line 437
    if-eqz v0, :cond_d0

    const/16 v0, 0x8

    :goto_3d
    or-int/2addr v1, v0

    .line 438
    if-eqz v4, :cond_d3

    const/16 v0, 0x10

    :goto_42
    or-int v8, v1, v0

    .line 439
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/youtube/core/transfer/u;

    .line 440
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->b()Z

    move-result v7

    if-eqz v7, :cond_143

    .line 443
    iget v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->w:I

    if-lt v6, v1, :cond_d6

    const/16 v1, 0x20

    :goto_68
    or-int v10, v8, v1

    .line 445
    if-nez v10, :cond_dc

    .line 446
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Ljava/util/HashSet;

    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    :cond_80
    move v1, v2

    .line 448
    :goto_81
    if-nez v1, :cond_bc

    .line 449
    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_da

    move v1, v2

    :goto_8e
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/n;->b(Z)V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b:Lcom/google/android/youtube/core/transfer/w;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v10

    invoke-interface {v1, v10, p0}, Lcom/google/android/youtube/core/transfer/w;->a(Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/n;)Lcom/google/android/youtube/core/transfer/m;

    move-result-object v1

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v10, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v7, v0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput v3, v0, Lcom/google/android/youtube/core/transfer/u;->d:I

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v7, v0}, Lcom/google/android/youtube/core/transfer/o;->b(Lcom/google/android/youtube/core/transfer/u;)V

    new-instance v7, Lcom/google/android/youtube/core/transfer/r;

    invoke-direct {v7, p0, v1}, Lcom/google/android/youtube/core/transfer/r;-><init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Lcom/google/android/youtube/core/transfer/r;->start()V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/s;->f(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 451
    :cond_bc
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v2

    .line 452
    goto :goto_50

    :cond_c1
    move v0, v3

    .line 430
    goto/16 :goto_14

    :cond_c4
    move v4, v3

    .line 431
    goto/16 :goto_21

    :cond_c7
    move v5, v3

    .line 432
    goto/16 :goto_2a

    :cond_ca
    move v1, v3

    .line 434
    goto/16 :goto_33

    :cond_cd
    move v1, v3

    .line 436
    goto/16 :goto_38

    :cond_d0
    move v0, v3

    .line 437
    goto/16 :goto_3d

    :cond_d3
    move v0, v3

    .line 438
    goto/16 :goto_42

    :cond_d6
    move v1, v3

    .line 443
    goto :goto_68

    :cond_d8
    move v1, v3

    .line 446
    goto :goto_81

    :cond_da
    move v1, v3

    .line 449
    goto :goto_8e

    .line 453
    :cond_dc
    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v7, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v1, v7, :cond_141

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v1, v0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move v7, v2

    :goto_e7
    iget-object v11, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/m;

    if-eqz v1, :cond_f6

    invoke-interface {v1}, Lcom/google/android/youtube/core/transfer/m;->a()V

    :cond_f6
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Ljava/util/HashSet;

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/google/android/youtube/core/transfer/u;->d:I

    if-eq v1, v10, :cond_107

    iput v10, v0, Lcom/google/android/youtube/core/transfer/u;->d:I

    move v7, v2

    :cond_107
    if-eqz v7, :cond_117

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/o;->b(Lcom/google/android/youtube/core/transfer/u;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/s;->f(Lcom/google/android/youtube/core/transfer/Transfer;)V

    :cond_117
    move v0, v2

    :goto_118
    move v1, v0

    .line 455
    goto/16 :goto_50

    .line 458
    :cond_11b
    iput-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->y:Z

    .line 459
    if-eqz v1, :cond_132

    if-nez v4, :cond_132

    if-nez v5, :cond_132

    .line 460
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_6

    .line 463
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto/16 :goto_6

    .line 465
    :cond_132
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 466
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_6

    :cond_141
    move v7, v3

    goto :goto_e7

    :cond_143
    move v0, v1

    goto :goto_118
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Z

    if-nez v0, :cond_b

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(I)I

    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(I)I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .registers 5
    .parameter

    .prologue
    .line 177
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
    .line 165
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x2

    new-instance v1, Lcom/google/android/youtube/core/transfer/u;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/youtube/core/transfer/u;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(Z)I
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 169
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
    .registers 9
    .parameter

    .prologue
    const/16 v5, 0x1f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a6

    .line 410
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_c
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->h:I

    iget v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    if-ne v0, v2, :cond_2a0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->y:Z

    if-nez v0, :cond_2a0

    :goto_1a
    iput-boolean v3, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Z

    .line 412
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->j:Z

    if-eqz v0, :cond_27

    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    iget v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->h:I

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/transfer/s;->a(I)V

    .line 415
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2a3

    :cond_28
    return-void

    .line 248
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/o;->a()V

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/o;->b()Ljava/util/List;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/u;

    .line 252
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->b()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 254
    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v5, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v2, v5, :cond_38

    .line 256
    sget-object v2, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v2, v0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 257
    iput v3, v0, Lcom/google/android/youtube/core/transfer/u;->d:I

    .line 258
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/transfer/o;->b(Lcom/google/android/youtube/core/transfer/u;)V

    goto :goto_38

    .line 264
    :cond_63
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/u;

    .line 266
    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 268
    :cond_8e
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/transfer/s;->a(Ljava/util/Map;)V

    .line 269
    iput-boolean v3, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->x:Z

    .line 270
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 275
    :pswitch_9a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_aa

    move v0, v3

    .line 276
    :goto_9f
    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->v:Z

    if-eq v1, v0, :cond_9

    .line 277
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->v:Z

    .line 278
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    :cond_aa
    move v0, v4

    .line 275
    goto :goto_9f

    .line 284
    :pswitch_ac
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_bc

    move v0, v3

    .line 285
    :goto_b1
    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->u:Z

    if-eq v1, v0, :cond_9

    .line 286
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->u:Z

    .line 287
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    :cond_bc
    move v0, v4

    .line 284
    goto :goto_b1

    .line 293
    :pswitch_be
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 294
    iget v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->w:I

    if-eq v1, v0, :cond_9

    .line 295
    iput v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->w:I

    .line 296
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 302
    :pswitch_cb
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 307
    :pswitch_d0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->x:Z

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->b(Z)V

    .line 308
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/u;

    .line 309
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 312
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/o;->a(Lcom/google/android/youtube/core/transfer/u;)V

    .line 313
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/s;->b(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 315
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 321
    :pswitch_fd
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->x:Z

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->b(Z)V

    .line 322
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 326
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/m;

    .line 327
    if-eqz v1, :cond_11b

    .line 328
    invoke-interface {v1}, Lcom/google/android/youtube/core/transfer/m;->a()V

    .line 330
    :cond_11b
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 333
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/u;

    .line 334
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/o;->c(Lcom/google/android/youtube/core/transfer/u;)V

    .line 335
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b:Lcom/google/android/youtube/core/transfer/w;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/w;->a(Lcom/google/android/youtube/core/transfer/Transfer;)Ljava/lang/Runnable;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_146

    .line 338
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 340
    :cond_146
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/s;->c(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 341
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 347
    :pswitch_150
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/u;

    .line 348
    if-eqz v0, :cond_28

    .line 352
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    shl-long/2addr v1, v5

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/android/youtube/core/transfer/u;->f:J

    .line 353
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/o;->b(Lcom/google/android/youtube/core/transfer/u;)V

    .line 354
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/s;->d(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto/16 :goto_9

    .line 359
    :pswitch_176
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/u;

    .line 360
    if-eqz v0, :cond_28

    .line 364
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    shl-long/2addr v1, v5

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/android/youtube/core/transfer/u;->e:J

    .line 366
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/o;->b(Lcom/google/android/youtube/core/transfer/u;)V

    .line 367
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/s;->e(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto/16 :goto_9

    .line 373
    :pswitch_1a3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 374
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 375
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/transfer/u;

    .line 376
    if-eqz v2, :cond_28

    .line 380
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_1e5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/transfer/d;

    :goto_1bd
    iput-object v0, v2, Lcom/google/android/youtube/core/transfer/u;->h:Lcom/google/android/youtube/core/transfer/d;

    .line 381
    sget-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, v2, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/transfer/o;->b(Lcom/google/android/youtube/core/transfer/u;)V

    .line 386
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/transfer/s;->f(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 387
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    .line 380
    :cond_1e5
    new-instance v0, Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/d;-><init>()V

    goto :goto_1bd

    .line 392
    :pswitch_1eb
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->l:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/u;

    .line 393
    if-eqz v0, :cond_28

    .line 397
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_249

    move v2, v3

    :goto_1fc
    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_24b

    move v1, v4

    :goto_209
    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_211

    const/16 v2, 0x14

    if-le v1, v2, :cond_250

    :cond_211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transfer fatal fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v1, v0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/transfer/o;->b(Lcom/google/android/youtube/core/transfer/u;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c:Lcom/google/android/youtube/core/transfer/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/u;->a()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/transfer/s;->f(Lcom/google/android/youtube/core/transfer/Transfer;)V

    :goto_244
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    :cond_249
    move v2, v4

    goto :goto_1fc

    :cond_24b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_209

    :cond_250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "transfer fail "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->m:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    shl-int v0, v3, v1

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

    goto :goto_244

    .line 402
    :pswitch_28f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->o:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 404
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c()V

    goto/16 :goto_9

    :cond_2a0
    move v3, v4

    .line 411
    goto/16 :goto_1a

    .line 415
    :catchall_2a3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 245
    :pswitch_data_2a6
    .packed-switch 0x1
        :pswitch_29
        :pswitch_d0
        :pswitch_fd
        :pswitch_ac
        :pswitch_9a
        :pswitch_be
        :pswitch_cb
        :pswitch_150
        :pswitch_176
        :pswitch_1a3
        :pswitch_1eb
        :pswitch_28f
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 555
    const/16 v0, 0x8

    const/16 v1, 0x1f

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v2, p2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    .line 556
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 567
    const/16 v2, 0xb

    iget-boolean v0, p2, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    .line 568
    return-void

    :cond_c
    move v0, v1

    .line 567
    goto :goto_8
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 563
    const/16 v0, 0xa

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(ILjava/lang/Object;)I

    .line 564
    return-void
.end method

.method public final b(Z)I
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 173
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
    .line 188
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    const-string v0, "wifiLock held in quit"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->q:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0

    .line 192
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->s:Lcom/google/android/youtube/core/transfer/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/t;->c()V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->r:Lcom/google/android/youtube/core/transfer/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/v;->d()V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->t:Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->b()V

    .line 196
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_25
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->i:I

    iget v2, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->h:I

    sub-int v2, v0, v2

    .line 198
    if-nez v2, :cond_4c

    const/4 v0, 0x1

    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pendingMessages = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 199
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_4e

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->k:Lcom/google/android/youtube/core/transfer/o;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/o;->c()V

    .line 202
    return-void

    .line 198
    :cond_4c
    const/4 v0, 0x0

    goto :goto_2e

    .line 199
    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 559
    const/16 v0, 0x9

    const/16 v1, 0x1f

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v2, p2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(IIILjava/lang/Object;)I

    .line 560
    return-void
.end method
