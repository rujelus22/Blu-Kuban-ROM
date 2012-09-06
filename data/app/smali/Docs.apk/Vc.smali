.class public LVc;
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
        "LVx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LVx;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 612
    const/4 v0, 0x0

    sput-boolean v0, LVc;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 610
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
            "LVx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    sget-object v0, LVc;->a:LanD;

    if-nez v0, :cond_7

    .line 615
    invoke-static {}, LVc;->b()V

    .line 617
    :cond_7
    sget-object v0, LVc;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 644
    const-class v1, LVc;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LVc;->a:Z

    .line 645
    const/4 v0, 0x0

    sput-object v0, LVc;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 646
    monitor-exit v1

    return-void

    .line 644
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
            "LVx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    const-class v1, LVc;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LVc;->a:Z

    if-eqz v0, :cond_12

    .line 637
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_VideoUrlFetcherImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 636
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 640
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LVc;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 641
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 627
    const-class v1, LVc;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LVc;->a:Z

    if-eqz v0, :cond_12

    .line 628
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_VideoUrlFetcherImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 627
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 631
    :cond_12
    :try_start_12
    const-class v0, LVx;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LVc;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LVc;->a:LanD;

    .line 632
    const/4 v0, 0x1

    sput-boolean v0, LVc;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 633
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 621
    const-class v1, LVc;

    monitor-enter v1

    :try_start_3
    sget-object v0, LVc;->a:LanD;

    if-nez v0, :cond_e

    .line 622
    new-instance v0, LVc;

    invoke-direct {v0}, LVc;-><init>()V

    sput-object v0, LVc;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 624
    :cond_e
    monitor-exit v1

    return-void

    .line 621
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LVx;
    .registers 3

    .prologue
    .line 650
    new-instance v1, LVx;

    invoke-static {}, LJc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIL;

    invoke-direct {v1, v0}, LVx;-><init>(LIL;)V

    .line 657
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 610
    invoke-virtual {p0}, LVc;->a()LVx;

    move-result-object v0

    return-object v0
.end method
