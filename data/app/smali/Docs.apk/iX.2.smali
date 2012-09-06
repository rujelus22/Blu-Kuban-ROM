.class public LiX;
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
        "Ljk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Ljk;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 483
    const/4 v0, 0x0

    sput-boolean v0, LiX;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 481
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
            "Ljk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    sget-object v0, LiX;->a:LanD;

    if-nez v0, :cond_7

    .line 486
    invoke-static {}, LiX;->b()V

    .line 488
    :cond_7
    sget-object v0, LiX;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 515
    const-class v1, LiX;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LiX;->a:Z

    .line 516
    const/4 v0, 0x0

    sput-object v0, LiX;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 517
    monitor-exit v1

    return-void

    .line 515
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
            "Ljk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    const-class v1, LiX;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiX;->a:Z

    if-eqz v0, :cond_12

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_NavigationPathSerializerImpl has already been scoped."

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
    invoke-static {p0}, Lik;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LiX;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 512
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 498
    const-class v1, LiX;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiX;->a:Z

    if-eqz v0, :cond_12

    .line 499
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_NavigationPathSerializerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 498
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 502
    :cond_12
    :try_start_12
    const-class v0, Ljk;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LiX;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LiX;->a:LanD;

    .line 503
    const/4 v0, 0x1

    sput-boolean v0, LiX;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 504
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 492
    const-class v1, LiX;

    monitor-enter v1

    :try_start_3
    sget-object v0, LiX;->a:LanD;

    if-nez v0, :cond_e

    .line 493
    new-instance v0, LiX;

    invoke-direct {v0}, LiX;-><init>()V

    sput-object v0, LiX;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 495
    :cond_e
    monitor-exit v1

    return-void

    .line 492
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 481
    invoke-virtual {p0}, LiX;->a()Ljk;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljk;
    .registers 3

    .prologue
    .line 521
    new-instance v1, Ljk;

    invoke-static {}, LiL;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lik;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhZ;

    invoke-direct {v1, v0}, Ljk;-><init>(LhZ;)V

    .line 528
    return-object v1
.end method
