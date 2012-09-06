.class public LUK;
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
        "LTt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTt;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 500
    const/4 v0, 0x0

    sput-boolean v0, LUK;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 498
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
            "LTt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    sget-object v0, LUK;->a:LanD;

    if-nez v0, :cond_7

    .line 503
    invoke-static {}, LUK;->b()V

    .line 505
    :cond_7
    sget-object v0, LUK;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 532
    const-class v1, LUK;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LUK;->a:Z

    .line 533
    const/4 v0, 0x0

    sput-object v0, LUK;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 534
    monitor-exit v1

    return-void

    .line 532
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
            "LTt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    const-class v1, LUK;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUK;->a:Z

    if-eqz v0, :cond_12

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_AccountMetadataUpdater has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 524
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 528
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LUK;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 529
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 515
    const-class v1, LUK;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUK;->a:Z

    if-eqz v0, :cond_12

    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_AccountMetadataUpdater has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 515
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 519
    :cond_12
    :try_start_12
    const-class v0, LTt;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LUK;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LUK;->a:LanD;

    .line 520
    const/4 v0, 0x1

    sput-boolean v0, LUK;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 521
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 509
    const-class v1, LUK;

    monitor-enter v1

    :try_start_3
    sget-object v0, LUK;->a:LanD;

    if-nez v0, :cond_e

    .line 510
    new-instance v0, LUK;

    invoke-direct {v0}, LUK;-><init>()V

    sput-object v0, LUK;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 512
    :cond_e
    monitor-exit v1

    return-void

    .line 509
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LTt;
    .registers 2

    .prologue
    .line 538
    new-instance v0, LTt;

    invoke-direct {v0}, LTt;-><init>()V

    .line 540
    invoke-static {v0}, LUD;->a(LTt;)V

    .line 542
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 498
    invoke-virtual {p0}, LUK;->a()LTt;

    move-result-object v0

    return-object v0
.end method
