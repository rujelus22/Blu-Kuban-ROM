.class public LiM;
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
        "Lib;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lib;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 533
    const/4 v0, 0x0

    sput-boolean v0, LiM;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 531
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
            "Lib;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    sget-object v0, LiM;->a:LanD;

    if-nez v0, :cond_7

    .line 536
    invoke-static {}, LiM;->b()V

    .line 538
    :cond_7
    sget-object v0, LiM;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 565
    const-class v1, LiM;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LiM;->a:Z

    .line 566
    const/4 v0, 0x0

    sput-object v0, LiM;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 567
    monitor-exit v1

    return-void

    .line 565
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
            "Lib;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    const-class v1, LiM;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiM;->a:Z

    if-eqz v0, :cond_12

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_CriterionSetSerializerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 557
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 561
    :cond_12
    :try_start_12
    invoke-static {p0}, Lik;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LiM;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 562
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 548
    const-class v1, LiM;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiM;->a:Z

    if-eqz v0, :cond_12

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_CriterionSetSerializerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 548
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 552
    :cond_12
    :try_start_12
    const-class v0, Lib;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LiM;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LiM;->a:LanD;

    .line 553
    const/4 v0, 0x1

    sput-boolean v0, LiM;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 554
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 542
    const-class v1, LiM;

    monitor-enter v1

    :try_start_3
    sget-object v0, LiM;->a:LanD;

    if-nez v0, :cond_e

    .line 543
    new-instance v0, LiM;

    invoke-direct {v0}, LiM;-><init>()V

    sput-object v0, LiM;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 545
    :cond_e
    monitor-exit v1

    return-void

    .line 542
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lib;
    .registers 3

    .prologue
    .line 571
    new-instance v1, Lib;

    invoke-static {}, LiJ;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lik;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhM;

    invoke-direct {v1, v0}, Lib;-><init>(LhM;)V

    .line 578
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 531
    invoke-virtual {p0}, LiM;->a()Lib;

    move-result-object v0

    return-object v0
.end method
