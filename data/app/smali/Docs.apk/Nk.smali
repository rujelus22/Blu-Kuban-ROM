.class public LNk;
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
        "LNU;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LNU;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 426
    const/4 v0, 0x0

    sput-boolean v0, LNk;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 424
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
            "LNU;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    sget-object v0, LNk;->a:LanD;

    if-nez v0, :cond_7

    .line 429
    invoke-static {}, LNk;->b()V

    .line 431
    :cond_7
    sget-object v0, LNk;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 458
    const-class v1, LNk;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LNk;->a:Z

    .line 459
    const/4 v0, 0x0

    sput-object v0, LNk;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 460
    monitor-exit v1

    return-void

    .line 458
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
            "LNU;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    const-class v1, LNk;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LNk;->a:Z

    if-eqz v0, :cond_12

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_punchwebview_PunchWebViewOwner has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 450
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 454
    :cond_12
    :try_start_12
    invoke-static {p0}, LME;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LNk;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 455
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 441
    const-class v1, LNk;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LNk;->a:Z

    if-eqz v0, :cond_12

    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_punchwebview_PunchWebViewOwner has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 441
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 445
    :cond_12
    :try_start_12
    const-class v0, LNU;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LNk;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LNk;->a:LanD;

    .line 446
    const/4 v0, 0x1

    sput-boolean v0, LNk;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 447
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 435
    const-class v1, LNk;

    monitor-enter v1

    :try_start_3
    sget-object v0, LNk;->a:LanD;

    if-nez v0, :cond_e

    .line 436
    new-instance v0, LNk;

    invoke-direct {v0}, LNk;-><init>()V

    sput-object v0, LNk;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 438
    :cond_e
    monitor-exit v1

    return-void

    .line 435
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LNU;
    .registers 3

    .prologue
    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 424
    invoke-virtual {p0}, LNk;->a()LNU;

    move-result-object v0

    return-object v0
.end method
