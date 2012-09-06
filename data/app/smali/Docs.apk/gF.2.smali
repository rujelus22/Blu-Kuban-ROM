.class public LgF;
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
        "Lfb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lfb;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 549
    const/4 v0, 0x0

    sput-boolean v0, LgF;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 547
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
            "Lfb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    sget-object v0, LgF;->a:LanD;

    if-nez v0, :cond_7

    .line 552
    invoke-static {}, LgF;->b()V

    .line 554
    :cond_7
    sget-object v0, LgF;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 581
    const-class v1, LgF;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LgF;->a:Z

    .line 582
    const/4 v0, 0x0

    sput-object v0, LgF;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 583
    monitor-exit v1

    return-void

    .line 581
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
            "Lfb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    const-class v1, LgF;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgF;->a:Z

    if-eqz v0, :cond_12

    .line 574
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_FeatureCheckerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 573
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 577
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LgF;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 578
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 564
    const-class v1, LgF;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgF;->a:Z

    if-eqz v0, :cond_12

    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_FeatureCheckerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 564
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 568
    :cond_12
    :try_start_12
    const-class v0, Lfb;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LgF;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LgF;->a:LanD;

    .line 569
    const/4 v0, 0x1

    sput-boolean v0, LgF;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 570
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 558
    const-class v1, LgF;

    monitor-enter v1

    :try_start_3
    sget-object v0, LgF;->a:LanD;

    if-nez v0, :cond_e

    .line 559
    new-instance v0, LgF;

    invoke-direct {v0}, LgF;-><init>()V

    sput-object v0, LgF;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 561
    :cond_e
    monitor-exit v1

    return-void

    .line 558
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lfb;
    .registers 4

    .prologue
    .line 587
    new-instance v2, Lfb;

    invoke-static {}, LgA;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdX;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lfe;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFX;

    invoke-direct {v2, v0, v1}, Lfb;-><init>(LdX;LFX;)V

    .line 599
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 547
    invoke-virtual {p0}, LgF;->a()Lfb;

    move-result-object v0

    return-object v0
.end method
