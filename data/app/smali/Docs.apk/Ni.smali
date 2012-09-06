.class public LNi;
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
        "LNS;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LNS;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 383
    const/4 v0, 0x0

    sput-boolean v0, LNi;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 381
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
            "LNS;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    sget-object v0, LNi;->a:LanD;

    if-nez v0, :cond_7

    .line 386
    invoke-static {}, LNi;->b()V

    .line 388
    :cond_7
    sget-object v0, LNi;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 415
    const-class v1, LNi;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LNi;->a:Z

    .line 416
    const/4 v0, 0x0

    sput-object v0, LNi;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 417
    monitor-exit v1

    return-void

    .line 415
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
            "LNS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    const-class v1, LNi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LNi;->a:Z

    if-eqz v0, :cond_12

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_punchwebview_PunchWebViewFragmentController has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 407
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 411
    :cond_12
    :try_start_12
    invoke-static {p0}, LME;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LNi;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 412
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 398
    const-class v1, LNi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LNi;->a:Z

    if-eqz v0, :cond_12

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_punchwebview_PunchWebViewFragmentController has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 398
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 402
    :cond_12
    :try_start_12
    const-class v0, LNS;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LNi;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LNi;->a:LanD;

    .line 403
    const/4 v0, 0x1

    sput-boolean v0, LNi;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 404
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 392
    const-class v1, LNi;

    monitor-enter v1

    :try_start_3
    sget-object v0, LNi;->a:LanD;

    if-nez v0, :cond_e

    .line 393
    new-instance v0, LNi;

    invoke-direct {v0}, LNi;-><init>()V

    sput-object v0, LNi;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 395
    :cond_e
    monitor-exit v1

    return-void

    .line 392
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LNS;
    .registers 3

    .prologue
    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 381
    invoke-virtual {p0}, LNi;->a()LNS;

    move-result-object v0

    return-object v0
.end method
