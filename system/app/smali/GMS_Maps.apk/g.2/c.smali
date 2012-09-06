.class public Lg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/internal/NlpPackageUpdateReceiver$Listener;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/location/internal/d;

.field private c:Lg/f;

.field private d:Z

.field private e:I

.field private final f:Lg/f;

.field private final g:Lg/a;

.field private final h:Lcom/google/android/location/internal/a;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Lg/e;

.field private final k:Landroid/content/Context;

.field private final l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lg/c;-><init>(Landroid/content/Context;ILandroid/location/LocationListener;ZLandroid/os/Looper;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/location/LocationListener;ZLandroid/os/Looper;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/c;->a:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/c;->d:Z

    .line 105
    new-instance v0, Lg/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/f;-><init>(Lg/c;Lg/d;)V

    iput-object v0, p0, Lg/c;->f:Lg/f;

    .line 110
    new-instance v0, Lg/d;

    invoke-direct {v0, p0}, Lg/d;-><init>(Lg/c;)V

    iput-object v0, p0, Lg/c;->h:Lcom/google/android/location/internal/a;

    .line 144
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NLP Client"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lg/c;->i:Landroid/os/HandlerThread;

    .line 186
    iput p2, p0, Lg/c;->e:I

    .line 187
    iput-object p1, p0, Lg/c;->k:Landroid/content/Context;

    .line 188
    iput-boolean p4, p0, Lg/c;->l:Z

    .line 189
    new-instance v0, Lg/a;

    invoke-direct {v0, p3, p5}, Lg/a;-><init>(Landroid/location/LocationListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lg/c;->g:Lg/a;

    .line 192
    iget-object v0, p0, Lg/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 193
    new-instance v0, Lg/e;

    iget-object v1, p0, Lg/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p6}, Lg/e;-><init>(Lg/c;Landroid/os/Looper;I)V

    iput-object v0, p0, Lg/c;->j:Lg/e;

    .line 195
    iget-object v1, p0, Lg/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_47
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->addListener(Lcom/google/android/location/internal/NlpPackageUpdateReceiver$Listener;)V

    .line 199
    invoke-direct {p0}, Lg/c;->e()Lcom/google/android/location/internal/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lg/c;->a(Lcom/google/android/location/internal/d;)V

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_53
    move-exception v0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_53

    throw v0
.end method

.method static synthetic a(Lg/c;)Lg/a;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lg/c;->g:Lg/a;

    return-object v0
.end method

.method private a(Lcom/google/android/location/internal/d;)V
    .registers 6
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lg/c;->b:Lcom/google/android/location/internal/d;

    .line 210
    sget-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    if-ne p1, v0, :cond_a

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lg/c;->c:Lg/f;

    .line 219
    :goto_9
    return-void

    .line 215
    :cond_a
    iget-object v0, p0, Lg/c;->f:Lg/f;

    iput-object v0, p0, Lg/c;->c:Lg/f;

    .line 217
    iget-object v0, p0, Lg/c;->k:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/location/internal/d;->e:Landroid/content/Intent;

    iget-object v2, p0, Lg/c;->c:Lg/f;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_9
.end method

.method static synthetic a(Lg/c;Lcom/google/android/location/internal/d;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lg/c;->a(Lcom/google/android/location/internal/d;)V

    return-void
.end method

.method static synthetic b(Lg/c;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lg/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lg/c;)Lg/f;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lg/c;->c:Lg/f;

    return-object v0
.end method

.method private d()Lcom/google/android/location/internal/INetworkLocationInternal;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 265
    .line 266
    iget-object v1, p0, Lg/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_4
    iget-boolean v2, p0, Lg/c;->d:Z

    if-eqz v2, :cond_a

    .line 269
    monitor-exit v1

    .line 274
    :goto_9
    return-object v0

    .line 271
    :cond_a
    iget-object v2, p0, Lg/c;->c:Lg/f;

    if-eqz v2, :cond_19

    .line 272
    iget-object v0, p0, Lg/c;->c:Lg/f;

    invoke-static {v0}, Lg/f;->a(Lg/f;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v0

    monitor-exit v1

    goto :goto_9

    .line 276
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v0

    .line 274
    :cond_19
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_16

    goto :goto_9
.end method

.method static synthetic d(Lg/c;)Lg/e;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lg/c;->j:Lg/e;

    return-object v0
.end method

.method private e()Lcom/google/android/location/internal/d;
    .registers 3

    .prologue
    .line 334
    sget-object v0, Lcom/google/android/location/internal/e;->b:Lcom/google/android/location/internal/e;

    iget-object v1, p0, Lg/c;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/location/internal/d;->a(Lcom/google/android/location/internal/e;Landroid/content/Context;)Lcom/google/android/location/internal/d;

    move-result-object v0

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 339
    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lcom/google/android/location/internal/d;->f:Lcom/google/android/location/internal/d;

    goto :goto_f
.end method

.method static synthetic e(Lg/c;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lg/c;->d:Z

    return v0
.end method

.method static synthetic f(Lg/c;)Z
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lg/c;->l:Z

    return v0
.end method

.method static synthetic g(Lg/c;)I
    .registers 2
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lg/c;->e:I

    return v0
.end method

.method static synthetic h(Lg/c;)Lcom/google/android/location/internal/a;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lg/c;->h:Lcom/google/android/location/internal/a;

    return-object v0
.end method

.method static synthetic i(Lg/c;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lg/c;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lg/c;)Lcom/google/android/location/internal/d;
    .registers 2
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lg/c;->e()Lcom/google/android/location/internal/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lg/c;)Lcom/google/android/location/internal/d;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lg/c;->b:Lcom/google/android/location/internal/d;

    return-object v0
.end method

.method static synthetic l(Lg/c;)Landroid/os/HandlerThread;
    .registers 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lg/c;->i:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 348
    iget-object v1, p0, Lg/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_3
    iget-object v0, p0, Lg/c;->j:Lg/e;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 249
    iget-object v1, p0, Lg/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_3
    iget-boolean v0, p0, Lg/c;->d:Z

    if-eqz v0, :cond_9

    .line 252
    monitor-exit v1

    .line 259
    :goto_8
    return-void

    .line 254
    :cond_9
    iput p1, p0, Lg/c;->e:I

    .line 255
    iget-object v0, p0, Lg/c;->c:Lg/f;

    if-eqz v0, :cond_1b

    .line 256
    iget-object v0, p0, Lg/c;->j:Lg/e;

    const/4 v2, 0x1

    iget-object v3, p0, Lg/c;->c:Lg/f;

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 258
    :cond_1b
    monitor-exit v1

    goto :goto_8

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public a(Landroid/location/Location;)[B
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 286
    const-string v1, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 301
    :cond_d
    :goto_d
    return-object v0

    .line 290
    :cond_e
    invoke-direct {p0}, Lg/c;->d()Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_d

    .line 293
    :try_start_14
    invoke-interface {v1, p1}, Lcom/google/android/location/internal/INetworkLocationInternal;->a(Landroid/location/Location;)[B
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_d

    .line 295
    :catch_19
    move-exception v1

    goto :goto_d
.end method

.method public b()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lg/c;->e:I

    return v0
.end method

.method public c()V
    .registers 5

    .prologue
    .line 310
    iget-object v1, p0, Lg/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_3
    iget-boolean v0, p0, Lg/c;->d:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    .line 325
    :goto_8
    return-void

    .line 313
    :cond_9
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->removeListener(Lcom/google/android/location/internal/NlpPackageUpdateReceiver$Listener;)V

    .line 316
    iget-object v0, p0, Lg/c;->c:Lg/f;

    if-eqz v0, :cond_2c

    .line 317
    iget-boolean v0, p0, Lg/c;->l:Z

    if-eqz v0, :cond_20

    .line 318
    iget-object v0, p0, Lg/c;->j:Lg/e;

    const/4 v2, 0x6

    iget-object v3, p0, Lg/c;->c:Lg/f;

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    :cond_20
    iget-object v0, p0, Lg/c;->j:Lg/e;

    const/4 v2, 0x2

    iget-object v3, p0, Lg/c;->c:Lg/f;

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 322
    :cond_2c
    iget-object v0, p0, Lg/c;->j:Lg/e;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/c;->d:Z

    .line 324
    monitor-exit v1

    goto :goto_8

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method
