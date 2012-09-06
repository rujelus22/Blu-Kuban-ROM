.class public LVb;
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
        "LVw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LVw;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 384
    const/4 v0, 0x0

    sput-boolean v0, LVb;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 382
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
            "LVw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, LVb;->a:LanD;

    if-nez v0, :cond_7

    .line 387
    invoke-static {}, LVb;->b()V

    .line 389
    :cond_7
    sget-object v0, LVb;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 416
    const-class v1, LVb;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LVb;->a:Z

    .line 417
    const/4 v0, 0x0

    sput-object v0, LVb;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 418
    monitor-exit v1

    return-void

    .line 416
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
            "LVw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    const-class v1, LVb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LVb;->a:Z

    if-eqz v0, :cond_12

    .line 409
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_VideoUrlFetcher has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 408
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 412
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LVb;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 413
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 399
    const-class v1, LVb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LVb;->a:Z

    if-eqz v0, :cond_12

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_VideoUrlFetcher has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 399
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 403
    :cond_12
    :try_start_12
    const-class v0, LVw;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LVb;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LVb;->a:LanD;

    .line 404
    const/4 v0, 0x1

    sput-boolean v0, LVb;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 405
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 393
    const-class v1, LVb;

    monitor-enter v1

    :try_start_3
    sget-object v0, LVb;->a:LanD;

    if-nez v0, :cond_e

    .line 394
    new-instance v0, LVb;

    invoke-direct {v0}, LVb;-><init>()V

    sput-object v0, LVb;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 396
    :cond_e
    monitor-exit v1

    return-void

    .line 393
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LVw;
    .registers 2

    .prologue
    .line 422
    invoke-static {}, LVc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVw;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 382
    invoke-virtual {p0}, LVb;->a()LVw;

    move-result-object v0

    return-object v0
.end method
