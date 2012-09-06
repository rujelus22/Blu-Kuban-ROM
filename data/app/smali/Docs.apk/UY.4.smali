.class public LUY;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "LVo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LVo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 428
    const/4 v0, 0x0

    sput-boolean v0, LUY;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LanD;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanD",
            "<",
            "LVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    sget-object v0, LUY;->a:LanD;

    if-nez v0, :cond_7

    .line 431
    invoke-static {}, LUY;->b()V

    .line 433
    :cond_7
    sget-object v0, LUY;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 460
    const-class v1, LUY;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LUY;->a:Z

    .line 461
    const/4 v0, 0x0

    sput-object v0, LUY;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 462
    monitor-exit v1

    return-void

    .line 460
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(LanD;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "LVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 452
    const-class v1, LUY;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUY;->a:Z

    if-eqz v0, :cond_12

    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_SyncManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 452
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 456
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LUY;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 457
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 443
    const-class v1, LUY;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUY;->a:Z

    if-eqz v0, :cond_12

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_SyncManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 443
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 447
    :cond_12
    :try_start_12
    const-class v0, LVo;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LUY;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LUY;->a:LanD;

    .line 448
    const/4 v0, 0x1

    sput-boolean v0, LUY;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 449
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 437
    const-class v1, LUY;

    monitor-enter v1

    :try_start_3
    sget-object v0, LUY;->a:LanD;

    if-nez v0, :cond_e

    .line 438
    new-instance v0, LUY;

    invoke-direct {v0}, LUY;-><init>()V

    sput-object v0, LUY;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 440
    :cond_e
    monitor-exit v1

    return-void

    .line 437
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LVo;
    .registers 7

    .prologue
    .line 466
    new-instance v0, LVo;

    invoke-static {}, LUZ;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LUb;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVp;

    invoke-static {}, LUL;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LUb;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LTF;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LUb;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llu;

    invoke-static {}, LUS;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LUb;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LTT;

    invoke-static {}, LRl;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LUb;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQN;

    invoke-direct/range {v0 .. v5}, LVo;-><init>(LVp;LTF;Llu;LTT;LQN;)V

    .line 493
    invoke-static {v0}, LUJ;->a(LVo;)V

    .line 495
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 426
    invoke-virtual {p0}, LUY;->a()LVo;

    move-result-object v0

    return-object v0
.end method
