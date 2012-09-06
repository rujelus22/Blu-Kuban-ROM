.class public LYU;
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
        "LXw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXw;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 835
    const/4 v0, 0x0

    sput-boolean v0, LYU;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 833
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
            "LXw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    sget-object v0, LYU;->a:LanD;

    if-nez v0, :cond_7

    .line 838
    invoke-static {}, LYU;->b()V

    .line 840
    :cond_7
    sget-object v0, LYU;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 867
    const-class v1, LYU;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYU;->a:Z

    .line 868
    const/4 v0, 0x0

    sput-object v0, LYU;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 869
    monitor-exit v1

    return-void

    .line 867
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
            "LXw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 859
    const-class v1, LYU;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYU;->a:Z

    if-eqz v0, :cond_12

    .line 860
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_BucketRateLimiter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 859
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 863
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYU;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 864
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 850
    const-class v1, LYU;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYU;->a:Z

    if-eqz v0, :cond_12

    .line 851
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_BucketRateLimiter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 850
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 854
    :cond_12
    :try_start_12
    const-class v0, LXw;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYU;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYU;->a:LanD;

    .line 855
    const/4 v0, 0x1

    sput-boolean v0, LYU;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 856
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 844
    const-class v1, LYU;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYU;->a:LanD;

    if-nez v0, :cond_e

    .line 845
    new-instance v0, LYU;

    invoke-direct {v0}, LYU;-><init>()V

    sput-object v0, LYU;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 847
    :cond_e
    monitor-exit v1

    return-void

    .line 844
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXw;
    .registers 4

    .prologue
    .line 873
    new-instance v2, LXw;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFX;

    invoke-static {}, LYX;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LXU;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXC;

    invoke-direct {v2, v0, v1}, LXw;-><init>(LFX;LXC;)V

    .line 885
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 833
    invoke-virtual {p0}, LYU;->a()LXw;

    move-result-object v0

    return-object v0
.end method
