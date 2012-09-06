.class public final Lcom/android/athome/picker/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static G:Ljava/lang/Object;

.field private static H:Ljava/lang/Object;

.field static final a:Ljava/util/WeakHashMap;


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Lcom/android/athome/picker/media/d;

.field private C:Lcom/android/athome/picker/media/c;

.field private final D:Ljava/lang/Object;

.field private E:Ljava/lang/String;

.field private F:Landroid/content/Context;

.field private I:Lcom/android/athome/picker/b/w;

.field private J:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

.field private K:Ljava/lang/Runnable;

.field private L:Ljava/lang/Runnable;

.field private M:Landroid/support/place/music/TungstenGroupingService$Listener;

.field private b:Z

.field private c:Landroid/support/place/api/broker/BrokerManager;

.field private d:Landroid/support/place/music/TungstenGroupingService;

.field private e:Landroid/os/Handler;

.field private f:Landroid/support/place/connector/Broker;

.field private g:Ljava/lang/Object;

.field private h:Landroid/support/place/picker/MediaRouteProviderClient;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Z

.field private m:Ljava/util/HashMap;

.field private n:Ljava/util/HashMap;

.field private o:Ljava/util/HashMap;

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Ljava/util/ArrayList;

.field private t:Ljava/lang/Object;

.field private u:Z

.field private v:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

.field private w:Landroid/support/place/connector/ConnectorInfo;

.field private x:Ljava/lang/Runnable;

.field private y:Ljava/util/Map;

.field private z:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/athome/picker/b/a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/support/place/api/broker/BrokerManager;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/android/athome/picker/b/a;->b:Z

    .line 73
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    .line 74
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->e:Landroid/os/Handler;

    .line 77
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    .line 78
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->h:Landroid/support/place/picker/MediaRouteProviderClient;

    .line 79
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->i:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->n:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->o:Ljava/util/HashMap;

    .line 102
    iput-boolean v2, p0, Lcom/android/athome/picker/b/a;->p:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/athome/picker/b/a;->q:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/athome/picker/b/a;->r:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->s:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->t:Ljava/lang/Object;

    .line 109
    iput-boolean v2, p0, Lcom/android/athome/picker/b/a;->u:Z

    .line 112
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->v:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    .line 118
    new-instance v0, Lcom/android/athome/picker/b/b;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/b/b;-><init>(Lcom/android/athome/picker/b/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->x:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->z:Ljava/util/Map;

    .line 162
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->A:Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/android/athome/picker/b/l;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/b/l;-><init>(Lcom/android/athome/picker/b/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->B:Lcom/android/athome/picker/media/d;

    .line 195
    new-instance v0, Lcom/android/athome/picker/b/m;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/b/m;-><init>(Lcom/android/athome/picker/b/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->C:Lcom/android/athome/picker/media/c;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->D:Ljava/lang/Object;

    .line 327
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->E:Ljava/lang/String;

    .line 338
    iput-object v1, p0, Lcom/android/athome/picker/b/a;->I:Lcom/android/athome/picker/b/w;

    .line 502
    new-instance v0, Lcom/android/athome/picker/b/n;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/b/n;-><init>(Lcom/android/athome/picker/b/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->J:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 572
    new-instance v0, Lcom/android/athome/picker/b/o;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/b/o;-><init>(Lcom/android/athome/picker/b/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->K:Ljava/lang/Runnable;

    .line 882
    new-instance v0, Lcom/android/athome/picker/b/d;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/b/d;-><init>(Lcom/android/athome/picker/b/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->L:Ljava/lang/Runnable;

    .line 890
    new-instance v0, Lcom/android/athome/picker/b/e;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/b/e;-><init>(Lcom/android/athome/picker/b/a;)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->M:Landroid/support/place/music/TungstenGroupingService$Listener;

    .line 380
    iput-object p2, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    .line 381
    iput-object p3, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->F:Landroid/content/Context;

    .line 383
    sget-object v0, Lcom/android/athome/picker/b/a;->G:Ljava/lang/Object;

    if-nez v0, :cond_c0

    .line 384
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    const-string v1, "Nexus Q"

    invoke-static {v0, v1, v2}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/athome/picker/b/a;->G:Ljava/lang/Object;

    .line 388
    :cond_c0
    sget-object v0, Lcom/android/athome/picker/b/a;->H:Ljava/lang/Object;

    if-nez v0, :cond_ce

    .line 389
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    const-string v1, "Nexus Q"

    invoke-static {v0, v1, v3}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/athome/picker/b/a;->H:Ljava/lang/Object;

    .line 393
    :cond_ce
    new-instance v0, Landroid/support/place/picker/MediaRouteProviderClient;

    invoke-direct {v0, p1}, Landroid/support/place/picker/MediaRouteProviderClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->h:Landroid/support/place/picker/MediaRouteProviderClient;

    .line 394
    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/athome/picker/b/a;->f:Landroid/support/place/connector/Broker;

    return-object p1
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;)Landroid/support/place/connector/ConnectorInfo;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->w:Landroid/support/place/connector/ConnectorInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    return-object v0
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->v:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/android/athome/picker/b/a;
    .registers 5
    .parameter

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 413
    sget-object v0, Lcom/android/athome/picker/b/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 414
    invoke-static {v1}, Lcom/android/athome/picker/media/k;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 415
    if-nez v2, :cond_1a

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Media Router must be initialized before using AtHomeMediaRouter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1a
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->getInstance(Landroid/content/Context;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v3

    .line 420
    if-nez v3, :cond_28

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Broker Manager must be initialized before using AtHomeMediaRouter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_28
    new-instance v0, Lcom/android/athome/picker/b/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/athome/picker/b/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/support/place/api/broker/BrokerManager;)V

    .line 425
    sget-object v2, Lcom/android/athome/picker/b/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :goto_32
    return-object v0

    :cond_33
    sget-object v0, Lcom/android/athome/picker/b/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/b/a;

    goto :goto_32
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/athome/picker/b/a;->A:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 733
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    if-eqz p2, :cond_2c

    sget-object v0, Lcom/android/athome/picker/b/a;->H:Ljava/lang/Object;

    :goto_7
    invoke-static {v1, v0}, Lcom/android/athome/picker/media/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 735
    invoke-static {v0, p3}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 736
    invoke-static {v0, p4}, Lcom/android/athome/picker/media/r;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 737
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/r;->b(Ljava/lang/Object;I)V

    .line 738
    const/high16 v1, 0x42c8

    mul-float/2addr v1, p5

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;I)V

    .line 739
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->B:Lcom/android/athome/picker/media/d;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;Lcom/android/athome/picker/media/d;)V

    .line 740
    invoke-static {v0, v2}, Lcom/android/athome/picker/media/r;->f(Ljava/lang/Object;I)V

    .line 742
    invoke-static {v0, v2}, Lcom/android/athome/picker/media/r;->e(Ljava/lang/Object;I)V

    .line 745
    invoke-static {v0, p1, p5, p6}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;Ljava/lang/String;FZ)V

    .line 746
    return-object v0

    .line 733
    :cond_2c
    sget-object v0, Lcom/android/athome/picker/b/a;->G:Ljava/lang/Object;

    goto :goto_7
.end method

.method private declared-synchronized a(I)V
    .registers 6
    .parameter

    .prologue
    .line 802
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_18

    .line 803
    if-nez p1, :cond_c

    .line 822
    :goto_a
    monitor-exit p0

    return-void

    .line 806
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    if-nez v0, :cond_1b

    .line 807
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS is not available yet. Not adjusting Rx volumes."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_a

    .line 802
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 812
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 815
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->A:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/athome/picker/b/r;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/b/r;-><init>(Lcom/android/athome/picker/b/a;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/place/music/TungstenGroupingService;->adjustGroupVolume(Ljava/lang/String;ILandroid/support/place/rpc/RpcErrorHandler;)V
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_18

    goto :goto_a
.end method

.method private declared-synchronized a(Landroid/support/place/music/TgsGroup;)V
    .registers 17
    .parameter

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 1157
    if-lez v10, :cond_11a

    .line 1158
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1160
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/b/v;

    invoke-virtual {v1}, Lcom/android/athome/picker/b/v;->a()Ljava/lang/Object;

    move-result-object v12

    .line 1161
    invoke-static {v12}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v2

    .line 1162
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1163
    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v2, :cond_3c

    .line 1164
    invoke-static {v12, v1}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 1165
    invoke-static {v3}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1166
    if-eqz v4, :cond_39

    .line 1167
    invoke-virtual {v13, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1171
    :cond_3c
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1172
    const/4 v1, 0x0

    move v9, v1

    :goto_43
    if-ge v9, v10, :cond_ce

    .line 1173
    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/place/music/TgsService;

    move-object v8, v0

    .line 1174
    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1175
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1176
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1178
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1191
    :goto_71
    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_43

    .line 1182
    :cond_7c
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/an;

    .line 1184
    const/4 v3, 0x1

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v1, :cond_c4

    const/4 v6, 0x0

    :goto_8e
    if-nez v1, :cond_c9

    const/4 v7, 0x0

    :goto_91
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v1

    .line 1187
    invoke-static {v12, v1}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1188
    iget-object v2, p0, Lcom/android/athome/picker/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Added route: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to existing group: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_1 .. :try_end_c0} :catchall_c1

    goto :goto_71

    .line 1156
    :catchall_c1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1184
    :cond_c4
    :try_start_c4
    invoke-virtual {v1}, Lcom/android/athome/picker/an;->b()F

    move-result v6

    goto :goto_8e

    :cond_c9
    invoke-virtual {v1}, Lcom/android/athome/picker/an;->c()Z

    move-result v7

    goto :goto_91

    .line 1195
    :cond_ce
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d6
    :goto_d6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1196
    invoke-virtual {v14, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d6

    .line 1197
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1198
    iget-object v3, p0, Lcom/android/athome/picker/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    .line 1201
    :cond_f9
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/athome/picker/b/v;

    invoke-direct {v3, p0, v12, v11}, Lcom/android/athome/picker/b/v;-><init>(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Lcom/android/athome/picker/b/a;->f(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v12}, Lcom/android/athome/picker/b/a;->e(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v12, v1, v2, v3}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;Ljava/lang/String;FZ)V

    .line 1204
    const/4 v1, 0x0

    invoke-static {v12, v1, v11}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;ZLjava/util/List;)V
    :try_end_11a
    .catchall {:try_start_c4 .. :try_end_11a} :catchall_c1

    .line 1206
    :cond_11a
    monitor-exit p0

    return-void
.end method

.method private a(Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1251
    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/android/athome/picker/b/a;->f(Ljava/lang/Object;)F

    move-result v1

    invoke-static {p3}, Lcom/android/athome/picker/b/a;->e(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {p3, v0, v1, v2}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;Ljava/lang/String;FZ)V

    .line 1255
    const/4 v0, 0x1

    invoke-static {p3, v0, p2}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;ZLjava/util/List;)V

    .line 1256
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/athome/picker/b/v;

    invoke-direct {v2, p0, p3, p2}, Lcom/android/athome/picker/b/v;-><init>(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->z:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getTx()Landroid/support/place/music/TgsTxService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/music/TgsTxService;->getAppConnector()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    return-void
.end method

.method private a(Landroid/support/place/music/TgsService;)V
    .registers 7
    .parameter

    .prologue
    .line 1045
    invoke-virtual {p1}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->n:Ljava/util/HashMap;

    new-instance v2, Lcom/android/athome/picker/b/x;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/athome/picker/b/x;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    return-void
.end method

.method private a(Landroid/support/place/rpc/EndpointInfo;)V
    .registers 9
    .parameter

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/an;

    .line 1394
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1395
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "volume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/athome/picker/an;->b()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/athome/picker/an;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const-string v2, "volume"

    invoke-virtual {v0}, Lcom/android/athome/picker/an;->b()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 1397
    const-string v2, "mute"

    invoke-virtual {v0}, Lcom/android/athome/picker/an;->c()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 1398
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->f:Landroid/support/place/connector/Broker;

    if-nez v0, :cond_55

    .line 1399
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Broker not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :goto_54
    return-void

    .line 1402
    :cond_55
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->f:Landroid/support/place/connector/Broker;

    const-string v2, "setMasterVolume"

    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->ser()[B

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/athome/picker/b/i;

    invoke-direct {v5, p0}, Lcom/android/athome/picker/b/i;-><init>(Lcom/android/athome/picker/b/a;)V

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;I)V

    goto :goto_54
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 50
    const/16 v0, 0xc8

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/athome/picker/b/a;->l:Z

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/athome/picker/b/a;->K:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/athome/picker/b/a;->K:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 50
    iput-object p1, p0, Lcom/android/athome/picker/b/a;->w:Landroid/support/place/connector/ConnectorInfo;

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->f:Landroid/support/place/connector/Broker;

    if-nez v0, :cond_f

    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Broker not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void

    :cond_f
    new-instance v0, Landroid/support/place/music/TungstenGroupingService;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->f:Landroid/support/place/connector/Broker;

    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/place/music/TungstenGroupingService;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/athome/picker/b/a;->x:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/athome/picker/b/p;

    invoke-direct {v1, p0, v0}, Lcom/android/athome/picker/b/p;-><init>(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TungstenGroupingService;)V

    new-instance v2, Lcom/android/athome/picker/b/q;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/b/q;-><init>(Lcom/android/athome/picker/b/a;)V

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/support/place/music/TungstenGroupingService;->versionCheck(IILandroid/support/place/music/TungstenGroupingService$OnVersionCheck;Landroid/support/place/rpc/RpcErrorHandler;)V

    goto :goto_e
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/athome/picker/b/a;->a(Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsState;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 50
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processGroupAndReceiverList tgsState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_21

    iget-boolean v0, p0, Lcom/android/athome/picker/b/a;->p:Z

    if-eqz v0, :cond_22

    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Creating group. Ignore TGS update."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-boolean v0, p0, Lcom/android/athome/picker/b/a;->q:Z

    if-eqz v0, :cond_2e

    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Assigning rx to group. Ignore TGS update."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_2e
    iget-boolean v0, p0, Lcom/android/athome/picker/b/a;->r:Z

    if-eqz v0, :cond_3a

    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Removing rx from group. Ignore TGS update."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_3a
    iget-object v2, p0, Lcom/android/athome/picker/b/a;->t:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_3e
    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->u:Z

    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Before updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Landroid/support/place/music/TgsState;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsGroup;

    invoke-virtual {v0}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->a(Landroid/support/place/music/TgsGroup;)V

    :goto_79
    invoke-virtual {v0}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_3e .. :try_end_80} :catchall_81

    goto :goto_54

    :catchall_81
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_84
    :try_start_84
    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->b(Landroid/support/place/music/TgsGroup;)V

    goto :goto_79

    :cond_88
    iget-object v4, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    monitor-enter v4
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_81

    :try_start_8b
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9a
    :goto_9a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/b/v;

    invoke-virtual {v1}, Lcom/android/athome/picker/b/v;->a()Ljava/lang/Object;

    move-result-object v6

    const-string v1, "AtHomeMediaRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "routeGroup to be removed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_da
    if-ltz v1, :cond_e2

    invoke-static {v6, v1}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_da

    :cond_e2
    const-string v1, "AtHomeMediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remove stale group:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->z:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_100
    .catchall {:try_start_8b .. :try_end_100} :catchall_101

    goto :goto_9a

    :catchall_101
    move-exception v0

    :try_start_102
    monitor-exit v4

    throw v0
    :try_end_104
    .catchall {:try_start_102 .. :try_end_104} :catchall_81

    :cond_104
    :try_start_104
    monitor-exit v4
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_101

    :try_start_105
    sget-object v0, Lcom/android/athome/picker/b/a;->H:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/o;->a(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_110
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_110

    invoke-static {v3}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_126
    if-ltz v0, :cond_110

    invoke-static {v3, v0}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v0}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;I)V

    const-string v5, "AtHomeMediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Removed free pool rx: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_126

    :cond_14a
    invoke-virtual {p1}, Landroid/support/place/music/TgsState;->getAvailableRxs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_152
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_162

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsService;

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->b(Landroid/support/place/music/TgsService;)V

    goto :goto_152

    :cond_162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->u:Z

    const-string v0, "AtHomeMediaRouter"

    const-string v1, "After updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_16d
    .catchall {:try_start_105 .. :try_end_16d} :catchall_81

    goto/16 :goto_21
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;I)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x42c8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-eqz p1, :cond_83

    invoke-static {p1}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/athome/picker/media/r;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "AtHomeMediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RouteId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GroupId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_86

    if-eqz v0, :cond_86

    iget-object v4, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/b/v;

    invoke-virtual {v0}, Lcom/android/athome/picker/b/v;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v4, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    new-instance v6, Lcom/android/athome/picker/an;

    int-to-float v0, p2

    div-float v7, v0, v8

    if-nez p2, :cond_84

    move v0, v1

    :goto_7a
    invoke-direct {v6, v3, v7, v0}, Lcom/android/athome/picker/an;-><init>(Ljava/lang/String;FZ)V

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/android/athome/picker/b/a;->a(Landroid/support/place/rpc/EndpointInfo;)V

    :cond_83
    :goto_83
    return-void

    :cond_84
    move v0, v2

    goto :goto_7a

    :cond_86
    invoke-direct {p0}, Lcom/android/athome/picker/b/a;->f()Z

    move-result v0

    if-nez v0, :cond_83

    if-eqz v3, :cond_83

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/b/v;

    invoke-virtual {v0}, Lcom/android/athome/picker/b/v;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_83

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->b(Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v4, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/athome/picker/an;

    int-to-float v7, p2

    div-float/2addr v7, v8

    if-nez p2, :cond_d0

    :goto_c6
    invoke-direct {v6, v3, v7, v1}, Lcom/android/athome/picker/an;-><init>(Ljava/lang/String;FZ)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->a(Landroid/support/place/rpc/EndpointInfo;)V

    goto :goto_83

    :cond_d0
    move v1, v2

    goto :goto_c6
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdateGroupMembership: routeId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_32

    if-eqz v1, :cond_32

    new-instance v2, Lcom/android/athome/picker/b/z;

    invoke-direct {v2, p0, v0, v1, p3}, Lcom/android/athome/picker/b/z;-><init>(Lcom/android/athome/picker/b/a;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_32
    return-void
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 50
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "processRxVolumes:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsRxVolume;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    new-instance v2, Lcom/android/athome/picker/an;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/an;

    invoke-virtual {v1}, Lcom/android/athome/picker/an;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getVolume()F

    move-result v3

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getMute()Z

    move-result v6

    invoke-direct {v2, v1, v3, v6}, Lcom/android/athome/picker/an;-><init>(Ljava/lang/String;FZ)V

    :goto_41
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/athome/picker/b/a;->f()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v4

    :goto_5f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    :goto_89
    move-object v3, v0

    goto :goto_5f

    :cond_8b
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->E:Ljava/lang/String;

    if-nez v1, :cond_a2

    new-instance v1, Lcom/android/athome/picker/an;

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getVolume()F

    move-result v3

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getMute()Z

    move-result v6

    invoke-direct {v1, v2, v3, v6}, Lcom/android/athome/picker/an;-><init>(Ljava/lang/String;FZ)V

    move-object v2, v1

    goto :goto_41

    :cond_a2
    new-instance v1, Lcom/android/athome/picker/an;

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getVolume()F

    move-result v2

    invoke-virtual {v0}, Landroid/support/place/music/TgsRxVolume;->getMute()Z

    move-result v3

    invoke-direct {v1, v4, v2, v3}, Lcom/android/athome/picker/an;-><init>(Ljava/lang/String;FZ)V

    move-object v2, v1

    goto :goto_41

    :cond_b1
    if-eqz v3, :cond_c

    invoke-static {v3, v2}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;Lcom/android/athome/picker/an;)V

    goto/16 :goto_c

    :cond_b8
    invoke-virtual {v2}, Lcom/android/athome/picker/an;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/b/v;

    invoke-virtual {v0}, Lcom/android/athome/picker/b/v;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;Lcom/android/athome/picker/an;)V

    goto/16 :goto_c

    :cond_d7
    return-void

    :cond_d8
    move-object v0, v3

    goto :goto_89
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Ljava/util/List;Ljava/lang/Object;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    if-nez v0, :cond_c

    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS is not available. Not creating group."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    iget-object v6, p0, Lcom/android/athome/picker/b/a;->D:Ljava/lang/Object;

    monitor-enter v6

    :try_start_f
    iget-boolean v0, p0, Lcom/android/athome/picker/b/a;->p:Z

    if-nez v0, :cond_45

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->p:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Creating group "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    new-instance v0, Lcom/android/athome/picker/b/g;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/athome/picker/b/g;-><init>(Lcom/android/athome/picker/b/a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Object;)V

    new-instance v1, Lcom/android/athome/picker/b/h;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/b/h;-><init>(Lcom/android/athome/picker/b/a;)V

    invoke-virtual {v7, v2, p1, v0, v1}, Landroid/support/place/music/TungstenGroupingService;->createGroup(Ljava/lang/String;Ljava/util/List;Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;Landroid/support/place/rpc/RpcErrorHandler;)V

    :cond_45
    monitor-exit v6
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_47

    goto :goto_b

    :catchall_47
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static a(Ljava/lang/Object;Lcom/android/athome/picker/an;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 995
    if-eqz p0, :cond_28

    .line 996
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVolumeState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/athome/picker/an;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-static {p0, p1}, Lcom/android/athome/picker/media/r;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 998
    invoke-virtual {p1}, Lcom/android/athome/picker/an;->b()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;I)V

    .line 1001
    :cond_28
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;FZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 750
    new-instance v0, Lcom/android/athome/picker/an;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/athome/picker/an;-><init>(Ljava/lang/String;FZ)V

    .line 751
    invoke-static {p0, v0}, Lcom/android/athome/picker/media/q;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 752
    return-void
.end method

.method private static a(Ljava/lang/Object;ZLjava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1209
    invoke-static {p0}, Lcom/android/athome/picker/media/q;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    invoke-static {p0}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1211
    if-eqz p1, :cond_3b

    .line 1212
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add route group to cache: Name= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connector size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :goto_3a
    return-void

    .line 1215
    :cond_3b
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update route group in cache: Name= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connector size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method static synthetic a(Lcom/android/athome/picker/b/a;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->l:Z

    return v0
.end method

.method private b(Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;
    .registers 5
    .parameter

    .prologue
    .line 1472
    new-instance v0, Lcom/android/athome/picker/b/x;

    invoke-virtual {p1}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/athome/picker/b/x;-><init>(Ljava/lang/String;I)V

    .line 1473
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1474
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    .line 1476
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 825
    if-eqz p0, :cond_13

    .line 826
    invoke-static {p0}, Lcom/android/athome/picker/media/q;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/athome/picker/an;

    if-eqz v1, :cond_13

    .line 828
    check-cast v0, Lcom/android/athome/picker/an;

    invoke-virtual {v0}, Lcom/android/athome/picker/an;->a()Ljava/lang/String;

    move-result-object v0

    .line 831
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic b(Lcom/android/athome/picker/b/a;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    return-object v0
.end method

.method private declared-synchronized b(Landroid/support/place/music/TgsGroup;)V
    .registers 16
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1221
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 1222
    if-lez v12, :cond_7c

    .line 1223
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1224
    const/4 v1, 0x0

    move v10, v9

    move-object v11, v1

    .line 1225
    :goto_14
    if-ge v10, v12, :cond_77

    .line 1226
    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/place/music/TgsService;

    move-object v8, v0

    .line 1227
    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1228
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/an;

    .line 1229
    const/4 v3, 0x1

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v1, :cond_68

    const/4 v6, 0x0

    :goto_40
    if-nez v1, :cond_6d

    move v7, v9

    :goto_43
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v1

    .line 1232
    if-nez v10, :cond_72

    .line 1235
    iget-object v2, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1236
    invoke-static {v1}, Lcom/android/athome/picker/media/q;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1240
    :goto_53
    iget-object v3, p0, Lcom/android/athome/picker/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move-object v11, v2

    goto :goto_14

    .line 1229
    :cond_68
    invoke-virtual {v1}, Lcom/android/athome/picker/an;->b()F

    move-result v6

    goto :goto_40

    :cond_6d
    invoke-virtual {v1}, Lcom/android/athome/picker/an;->c()Z

    move-result v7

    goto :goto_43

    .line 1238
    :cond_72
    invoke-static {v11, v1}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v11

    goto :goto_53

    .line 1243
    :cond_77
    if-eqz v11, :cond_7c

    .line 1244
    invoke-direct {p0, p1, v13, v11}, Lcom/android/athome/picker/b/a;->a(Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_2 .. :try_end_7c} :catchall_7e

    .line 1247
    :cond_7c
    monitor-exit p0

    return-void

    .line 1221
    :catchall_7e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized b(Landroid/support/place/music/TgsService;)V
    .registers 9
    .parameter

    .prologue
    .line 1145
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1146
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/an;

    .line 1147
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/support/place/music/TgsService;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v0, :cond_55

    const/4 v5, 0x0

    :goto_1f
    if-nez v0, :cond_5a

    const/4 v6, 0x0

    :goto_22
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v0

    .line 1150
    iget-object v2, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1151
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Added user route:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_5f

    .line 1153
    monitor-exit p0

    return-void

    .line 1147
    :cond_55
    :try_start_55
    invoke-virtual {v0}, Lcom/android/athome/picker/an;->b()F

    move-result v5

    goto :goto_1f

    :cond_5a
    invoke-virtual {v0}, Lcom/android/athome/picker/an;->c()Z
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5f

    move-result v6

    goto :goto_22

    .line 1145
    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/android/athome/picker/b/a;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/b/a;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v2, Lcom/android/athome/picker/b/t;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/athome/picker/b/t;-><init>(Lcom/android/athome/picker/b/a;Ljava/lang/String;Landroid/support/place/connector/ConnectorInfo;)V

    invoke-virtual {v2}, Lcom/android/athome/picker/b/t;->a()V

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsState;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 50
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRxServiceConnector tgsState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1}, Landroid/support/place/music/TgsState;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsGroup;

    invoke-virtual {v0}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsService;

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->a(Landroid/support/place/music/TgsService;)V

    goto :goto_37

    :cond_47
    invoke-virtual {p1}, Landroid/support/place/music/TgsState;->getAvailableRxs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsService;

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->a(Landroid/support/place/music/TgsService;)V

    goto :goto_4f

    :cond_5f
    return-void
.end method

.method static synthetic b(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TungstenGroupingService;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v0}, Landroid/support/place/music/TungstenGroupingService;->stopListening()V

    :cond_9
    iput-object p1, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->M:Landroid/support/place/music/TungstenGroupingService$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/music/TungstenGroupingService;->startListening(Landroid/support/place/music/TungstenGroupingService$Listener;)V

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->a(I)V

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    new-instance v1, Lcom/android/athome/picker/b/s;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/b/s;-><init>(Lcom/android/athome/picker/b/a;)V

    new-instance v2, Lcom/android/athome/picker/b/c;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/b/c;-><init>(Lcom/android/athome/picker/b/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/place/music/TungstenGroupingService;->getRxVolumes(Landroid/support/place/music/TungstenGroupingService$OnGetRxVolumes;Landroid/support/place/rpc/RpcErrorHandler;)V

    return-void
.end method

.method static synthetic b(Lcom/android/athome/picker/b/a;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->p:Z

    return v0
.end method

.method private static c(Ljava/lang/Object;)F
    .registers 3
    .parameter

    .prologue
    .line 835
    if-eqz p0, :cond_13

    .line 836
    invoke-static {p0}, Lcom/android/athome/picker/media/q;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/athome/picker/an;

    if-eqz v1, :cond_13

    .line 838
    check-cast v0, Lcom/android/athome/picker/an;

    invoke-virtual {v0}, Lcom/android/athome/picker/an;->b()F

    move-result v0

    .line 841
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic c(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)Lcom/android/athome/picker/an;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->b(Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/an;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic c()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/athome/picker/b/a;->G:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/android/athome/picker/b/a;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->z:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/android/athome/picker/b/a;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/athome/picker/b/a;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)Landroid/support/place/connector/ConnectorInfo;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->w:Landroid/support/place/connector/ConnectorInfo;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/athome/picker/b/a;->H:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/android/athome/picker/b/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/athome/picker/b/a;->u:Z

    return v0
.end method

.method static synthetic d(Lcom/android/athome/picker/b/a;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/athome/picker/b/a;->q:Z

    return p1
.end method

.method private static d(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 845
    if-eqz p0, :cond_13

    .line 846
    invoke-static {p0}, Lcom/android/athome/picker/media/q;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/athome/picker/an;

    if-eqz v1, :cond_13

    .line 848
    check-cast v0, Lcom/android/athome/picker/an;

    invoke-virtual {v0}, Lcom/android/athome/picker/an;->c()Z

    move-result v0

    .line 851
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic e(Lcom/android/athome/picker/b/a;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method private e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 590
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "OnTgsLost:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    if-eqz v0, :cond_13

    .line 592
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v0}, Landroid/support/place/music/TungstenGroupingService;->stopListening()V

    .line 593
    iput-object v2, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    .line 595
    :cond_13
    invoke-direct {p0}, Lcom/android/athome/picker/b/a;->g()V

    .line 597
    iput-object v2, p0, Lcom/android/athome/picker/b/a;->w:Landroid/support/place/connector/ConnectorInfo;

    .line 598
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getConnectedPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 601
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    const-class v1, Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->getConnectorsWithType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 603
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4d

    .line 604
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->J:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1, v0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V

    .line 607
    :cond_4d
    return-void
.end method

.method private static e(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1262
    const/4 v2, 0x1

    move v0, v1

    .line 1263
    :goto_3
    invoke-static {p0}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v3

    if-ge v0, v3, :cond_19

    .line 1264
    invoke-static {p0, v0}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 1265
    if-eqz v3, :cond_16

    invoke-static {v3}, Lcom/android/athome/picker/b/a;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1270
    :goto_15
    return v1

    .line 1263
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    move v1, v2

    goto :goto_15
.end method

.method private static f(Ljava/lang/Object;)F
    .registers 5
    .parameter

    .prologue
    .line 1274
    const/high16 v1, 0x7fc0

    .line 1276
    const/4 v0, 0x0

    :goto_3
    invoke-static {p0}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 1277
    invoke-static {p0, v0}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1278
    if-eqz v2, :cond_1f

    invoke-static {v2}, Lcom/android/athome/picker/b/a;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1279
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1280
    invoke-static {v2}, Lcom/android/athome/picker/b/a;->c(Ljava/lang/Object;)F

    move-result v1

    .line 1276
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1282
    :cond_22
    invoke-static {v2}, Lcom/android/athome/picker/b/a;->c(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1f

    .line 1286
    :cond_2b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    :cond_32
    return v1
.end method

.method static synthetic f(Lcom/android/athome/picker/b/a;)Lcom/android/athome/picker/b/w;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->I:Lcom/android/athome/picker/b/w;

    return-object v0
.end method

.method private f()Z
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->E:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private g()V
    .registers 5

    .prologue
    .line 1023
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Clear all routes."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 1025
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->u:Z

    .line 1027
    sget-object v0, Lcom/android/athome/picker/b/a;->H:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/athome/picker/media/o;->a(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1029
    invoke-static {v3}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1030
    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_18

    .line 1031
    invoke-static {v3, v0}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;I)V

    .line 1030
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 1034
    :cond_30
    sget-object v0, Lcom/android/athome/picker/b/a;->G:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/athome/picker/media/o;->a(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1036
    iget-object v3, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_4b

    goto :goto_3b

    .line 1041
    :catchall_4b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1038
    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1039
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->u:Z

    .line 1041
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_4b

    return-void
.end method

.method static synthetic g(Lcom/android/athome/picker/b/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/athome/picker/b/a;->b:Z

    return v0
.end method

.method static synthetic h(Lcom/android/athome/picker/b/a;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/athome/picker/b/a;)Landroid/support/place/picker/MediaRouteProviderClient;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->h:Landroid/support/place/picker/MediaRouteProviderClient;

    return-object v0
.end method

.method static synthetic j(Lcom/android/athome/picker/b/a;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->A:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lcom/android/athome/picker/b/a;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/athome/picker/b/a;->e()V

    return-void
.end method

.method static synthetic l(Lcom/android/athome/picker/b/a;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/android/athome/picker/b/a;)Landroid/support/place/music/TungstenGroupingService;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    return-object v0
.end method

.method static synthetic n(Lcom/android/athome/picker/b/a;)Landroid/support/place/api/broker/BrokerManager;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    return-object v0
.end method

.method static synthetic o(Lcom/android/athome/picker/b/a;)Landroid/support/place/connector/Broker;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->f:Landroid/support/place/connector/Broker;

    return-object v0
.end method

.method static synthetic p(Lcom/android/athome/picker/b/a;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic q(Lcom/android/athome/picker/b/a;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->v:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    return-object v0
.end method

.method static synthetic r(Lcom/android/athome/picker/b/a;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->x:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic s(Lcom/android/athome/picker/b/a;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lcom/android/athome/picker/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic u(Lcom/android/athome/picker/b/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic v(Lcom/android/athome/picker/b/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/athome/picker/b/a;->l:Z

    return v0
.end method

.method static synthetic w(Lcom/android/athome/picker/b/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/athome/picker/b/a;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/android/athome/picker/b/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/athome/picker/b/a;->p:Z

    return v0
.end method

.method static synthetic y(Lcom/android/athome/picker/b/a;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    if-nez v0, :cond_c

    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->d:Landroid/support/place/music/TungstenGroupingService;

    new-instance v1, Lcom/android/athome/picker/b/j;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/b/j;-><init>(Lcom/android/athome/picker/b/a;)V

    new-instance v2, Lcom/android/athome/picker/b/k;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/b/k;-><init>(Lcom/android/athome/picker/b/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/place/music/TungstenGroupingService;->getGroupState(Landroid/support/place/music/TungstenGroupingService$OnGetGroupState;Landroid/support/place/rpc/RpcErrorHandler;)V

    goto :goto_b
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/android/athome/picker/b/v;
    .registers 4
    .parameter

    .prologue
    .line 493
    if-eqz p1, :cond_1b

    .line 494
    invoke-static {p1}, Lcom/android/athome/picker/media/q;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_1b

    instance-of v1, v0, Lcom/android/athome/picker/an;

    if-eqz v1, :cond_1b

    .line 496
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    check-cast v0, Lcom/android/athome/picker/an;

    invoke-virtual {v0}, Lcom/android/athome/picker/an;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/b/v;

    .line 499
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->b:Z

    .line 465
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->J:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->startListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    const/high16 v1, 0x80

    iget-object v2, p0, Lcom/android/athome/picker/b/a;->C:Lcom/android/athome/picker/media/c;

    invoke-static {v0, v1, v2}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILcom/android/athome/picker/media/b;)V

    .line 469
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 470
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->h:Landroid/support/place/picker/MediaRouteProviderClient;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/place/picker/MediaRouteProviderClient;->getRouteIdForApplication(Ljava/lang/String;)Landroid/support/place/picker/MediaRouteProviderClient$RouteId;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_29

    instance-of v1, v0, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    if-eqz v1, :cond_29

    .line 474
    check-cast v0, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->v:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    .line 478
    :cond_29
    return-void
.end method

.method protected final a(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 7
    .parameter

    .prologue
    .line 610
    if-nez p1, :cond_3

    .line 624
    :goto_2
    return-void

    .line 613
    :cond_3
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 614
    iget-object v2, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    monitor-enter v2

    .line 615
    :try_start_e
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 616
    const-string v0, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeConnector: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v3, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/b/v;

    invoke-virtual {v0}, Lcom/android/athome/picker/b/v;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->y:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/athome/picker/b/a;->b(Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_53

    .line 621
    iget-object v1, p0, Lcom/android/athome/picker/b/a;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_55

    goto :goto_2

    :catchall_55
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/athome/picker/b/a;->E:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/athome/picker/b/a;->b:Z

    .line 483
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 484
    invoke-direct {p0}, Lcom/android/athome/picker/b/a;->e()V

    .line 486
    :cond_e
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->c:Landroid/support/place/api/broker/BrokerManager;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->J:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->stopListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/athome/picker/b/a;->f:Landroid/support/place/connector/Broker;

    .line 488
    invoke-direct {p0}, Lcom/android/athome/picker/b/a;->g()V

    .line 489
    iget-object v0, p0, Lcom/android/athome/picker/b/a;->g:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/athome/picker/b/a;->C:Lcom/android/athome/picker/media/c;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Lcom/android/athome/picker/media/b;)V

    .line 490
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/athome/picker/b/a;->i:Ljava/lang/String;

    .line 460
    return-void
.end method
