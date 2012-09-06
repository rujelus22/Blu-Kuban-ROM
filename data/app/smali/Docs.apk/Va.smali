.class public LVa;
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
        "LVq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LVq;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 662
    const/4 v0, 0x0

    sput-boolean v0, LVa;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 660
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
            "LVq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    sget-object v0, LVa;->a:LanD;

    if-nez v0, :cond_7

    .line 665
    invoke-static {}, LVa;->b()V

    .line 667
    :cond_7
    sget-object v0, LVa;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 694
    const-class v1, LVa;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LVa;->a:Z

    .line 695
    const/4 v0, 0x0

    sput-object v0, LVa;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 696
    monitor-exit v1

    return-void

    .line 694
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
            "LVq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 686
    const-class v1, LVa;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LVa;->a:Z

    if-eqz v0, :cond_12

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_SyncManager_FeedProcessorDriverFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 686
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 690
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LVa;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 691
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 677
    const-class v1, LVa;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LVa;->a:Z

    if-eqz v0, :cond_12

    .line 678
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_SyncManager_FeedProcessorDriverFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 677
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 681
    :cond_12
    :try_start_12
    const-class v0, LVq;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LVa;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LVa;->a:LanD;

    .line 682
    const/4 v0, 0x1

    sput-boolean v0, LVa;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 683
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 671
    const-class v1, LVa;

    monitor-enter v1

    :try_start_3
    sget-object v0, LVa;->a:LanD;

    if-nez v0, :cond_e

    .line 672
    new-instance v0, LVa;

    invoke-direct {v0}, LVa;-><init>()V

    sput-object v0, LVa;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 674
    :cond_e
    monitor-exit v1

    return-void

    .line 671
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LVq;
    .registers 5

    .prologue
    .line 700
    new-instance v3, LVq;

    invoke-static {}, LUR;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LUb;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, LUQ;->a()LanD;

    move-result-object v1

    invoke-static {v1}, LUb;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LUb;->A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFX;

    invoke-direct {v3, v0, v1, v2}, LVq;-><init>(LanD;LanD;LFX;)V

    .line 717
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 660
    invoke-virtual {p0}, LVa;->a()LVq;

    move-result-object v0

    return-object v0
.end method
