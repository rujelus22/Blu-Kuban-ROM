.class public LgJ;
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
        "Lhw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lhw;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 492
    const/4 v0, 0x0

    sput-boolean v0, LgJ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 490
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
            "Lhw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    sget-object v0, LgJ;->a:LanD;

    if-nez v0, :cond_7

    .line 495
    invoke-static {}, LgJ;->b()V

    .line 497
    :cond_7
    sget-object v0, LgJ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 524
    const-class v1, LgJ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LgJ;->a:Z

    .line 525
    const/4 v0, 0x0

    sput-object v0, LgJ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 526
    monitor-exit v1

    return-void

    .line 524
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
            "Lhw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    const-class v1, LgJ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgJ;->a:Z

    if-eqz v0, :cond_12

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_VersionCheckImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 516
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 520
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LgJ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 521
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 507
    const-class v1, LgJ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgJ;->a:Z

    if-eqz v0, :cond_12

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_VersionCheckImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 507
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 511
    :cond_12
    :try_start_12
    const-class v0, Lhw;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LgJ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LgJ;->a:LanD;

    .line 512
    const/4 v0, 0x1

    sput-boolean v0, LgJ;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 513
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 501
    const-class v1, LgJ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LgJ;->a:LanD;

    if-nez v0, :cond_e

    .line 502
    new-instance v0, LgJ;

    invoke-direct {v0}, LgJ;-><init>()V

    sput-object v0, LgJ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 504
    :cond_e
    monitor-exit v1

    return-void

    .line 501
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lhw;
    .registers 4

    .prologue
    .line 530
    new-instance v2, Lhw;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFX;

    invoke-static {}, LZa;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lfe;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXJ;

    invoke-direct {v2, v0, v1}, Lhw;-><init>(LFX;LXJ;)V

    .line 542
    invoke-static {v2}, Lgs;->a(Lhw;)V

    .line 544
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 490
    invoke-virtual {p0}, LgJ;->a()Lhw;

    move-result-object v0

    return-object v0
.end method
