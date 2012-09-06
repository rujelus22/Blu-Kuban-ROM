.class public LYO;
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
        "LXj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXj;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 604
    const/4 v0, 0x0

    sput-boolean v0, LYO;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 602
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
            "LXj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    sget-object v0, LYO;->a:LanD;

    if-nez v0, :cond_7

    .line 607
    invoke-static {}, LYO;->b()V

    .line 609
    :cond_7
    sget-object v0, LYO;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 636
    const-class v1, LYO;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYO;->a:Z

    .line 637
    const/4 v0, 0x0

    sput-object v0, LYO;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 638
    monitor-exit v1

    return-void

    .line 636
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
            "LXj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    const-class v1, LYO;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYO;->a:Z

    if-eqz v0, :cond_12

    .line 629
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_AccountSwitcher has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 628
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 632
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYO;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 633
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 619
    const-class v1, LYO;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYO;->a:Z

    if-eqz v0, :cond_12

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_AccountSwitcher has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 619
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 623
    :cond_12
    :try_start_12
    const-class v0, LXj;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYO;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYO;->a:LanD;

    .line 624
    const/4 v0, 0x1

    sput-boolean v0, LYO;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 625
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 613
    const-class v1, LYO;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYO;->a:LanD;

    if-nez v0, :cond_e

    .line 614
    new-instance v0, LYO;

    invoke-direct {v0}, LYO;-><init>()V

    sput-object v0, LYO;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 616
    :cond_e
    monitor-exit v1

    return-void

    .line 613
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXj;
    .registers 2

    .prologue
    .line 642
    invoke-static {}, LYP;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXj;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 602
    invoke-virtual {p0}, LYO;->a()LXj;

    move-result-object v0

    return-object v0
.end method
