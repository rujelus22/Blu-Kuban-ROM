.class public LYP;
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
        "LXk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXk;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 648
    const/4 v0, 0x0

    sput-boolean v0, LYP;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 646
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
            "LXk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    sget-object v0, LYP;->a:LanD;

    if-nez v0, :cond_7

    .line 651
    invoke-static {}, LYP;->b()V

    .line 653
    :cond_7
    sget-object v0, LYP;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 680
    const-class v1, LYP;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYP;->a:Z

    .line 681
    const/4 v0, 0x0

    sput-object v0, LYP;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 682
    monitor-exit v1

    return-void

    .line 680
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
            "LXk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    const-class v1, LYP;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYP;->a:Z

    if-eqz v0, :cond_12

    .line 673
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_AccountSwitcherImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 672
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 676
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYP;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 677
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 663
    const-class v1, LYP;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYP;->a:Z

    if-eqz v0, :cond_12

    .line 664
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_AccountSwitcherImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 663
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 667
    :cond_12
    :try_start_12
    const-class v0, LXk;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYP;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYP;->a:LanD;

    .line 668
    const/4 v0, 0x1

    sput-boolean v0, LYP;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 669
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 657
    const-class v1, LYP;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYP;->a:LanD;

    if-nez v0, :cond_e

    .line 658
    new-instance v0, LYP;

    invoke-direct {v0}, LYP;-><init>()V

    sput-object v0, LYP;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 660
    :cond_e
    monitor-exit v1

    return-void

    .line 657
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXk;
    .registers 2

    .prologue
    .line 686
    new-instance v0, LXk;

    invoke-direct {v0}, LXk;-><init>()V

    .line 688
    invoke-static {v0}, LYJ;->a(LXk;)V

    .line 690
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 646
    invoke-virtual {p0}, LYP;->a()LXk;

    move-result-object v0

    return-object v0
.end method
