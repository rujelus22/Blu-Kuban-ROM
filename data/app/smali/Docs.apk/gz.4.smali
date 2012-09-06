.class public Lgz;
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
        "LdQ;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LdQ;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 442
    const/4 v0, 0x0

    sput-boolean v0, Lgz;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 440
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
            "LdQ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    sget-object v0, Lgz;->a:LanD;

    if-nez v0, :cond_7

    .line 445
    invoke-static {}, Lgz;->b()V

    .line 447
    :cond_7
    sget-object v0, Lgz;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 474
    const-class v1, Lgz;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lgz;->a:Z

    .line 475
    const/4 v0, 0x0

    sput-object v0, Lgz;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 476
    monitor-exit v1

    return-void

    .line 474
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
            "LdQ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    const-class v1, Lgz;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lgz;->a:Z

    if-eqz v0, :cond_12

    .line 467
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_ApplicationStringHelper has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 466
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 470
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lgz;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 471
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 457
    const-class v1, Lgz;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lgz;->a:Z

    if-eqz v0, :cond_12

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_ApplicationStringHelper has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 457
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 461
    :cond_12
    :try_start_12
    const-class v0, LdQ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lgz;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lgz;->a:LanD;

    .line 462
    const/4 v0, 0x1

    sput-boolean v0, Lgz;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 463
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 451
    const-class v1, Lgz;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lgz;->a:LanD;

    if-nez v0, :cond_e

    .line 452
    new-instance v0, Lgz;

    invoke-direct {v0}, Lgz;-><init>()V

    sput-object v0, Lgz;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 454
    :cond_e
    monitor-exit v1

    return-void

    .line 451
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LdQ;
    .registers 3

    .prologue
    .line 480
    new-instance v1, LdQ;

    invoke-static {}, Lgx;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lfe;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-direct {v1, v0}, LdQ;-><init>(LanD;)V

    .line 487
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lgz;->a()LdQ;

    move-result-object v0

    return-object v0
.end method
