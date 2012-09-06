.class public Lgw;
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
        "LdH;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LdH;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 392
    const/4 v0, 0x0

    sput-boolean v0, Lgw;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 390
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
            "LdH;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    sget-object v0, Lgw;->a:LanD;

    if-nez v0, :cond_7

    .line 395
    invoke-static {}, Lgw;->b()V

    .line 397
    :cond_7
    sget-object v0, Lgw;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 424
    const-class v1, Lgw;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lgw;->a:Z

    .line 425
    const/4 v0, 0x0

    sput-object v0, Lgw;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 426
    monitor-exit v1

    return-void

    .line 424
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
            "LdH;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    const-class v1, Lgw;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lgw;->a:Z

    if-eqz v0, :cond_12

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_AccountDeletionCheckerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 416
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 420
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lgw;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 421
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 407
    const-class v1, Lgw;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lgw;->a:Z

    if-eqz v0, :cond_12

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_AccountDeletionCheckerImpl has already been scoped."

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
    const-class v0, LdH;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lgw;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lgw;->a:LanD;

    .line 412
    const/4 v0, 0x1

    sput-boolean v0, Lgw;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 413
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 401
    const-class v1, Lgw;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lgw;->a:LanD;

    if-nez v0, :cond_e

    .line 402
    new-instance v0, Lgw;

    invoke-direct {v0}, Lgw;-><init>()V

    sput-object v0, Lgw;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 404
    :cond_e
    monitor-exit v1

    return-void

    .line 401
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LdH;
    .registers 3

    .prologue
    .line 430
    new-instance v1, LdH;

    invoke-static {}, LIf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHW;

    invoke-direct {v1, v0}, LdH;-><init>(LHW;)V

    .line 437
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lgw;->a()LdH;

    move-result-object v0

    return-object v0
.end method
