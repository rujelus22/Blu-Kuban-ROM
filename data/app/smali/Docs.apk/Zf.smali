.class public LZf;
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
        "LZw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LZw;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 890
    const/4 v0, 0x0

    sput-boolean v0, LZf;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 888
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
            "LZw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 892
    sget-object v0, LZf;->a:LanD;

    if-nez v0, :cond_7

    .line 893
    invoke-static {}, LZf;->b()V

    .line 895
    :cond_7
    sget-object v0, LZf;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 922
    const-class v1, LZf;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZf;->a:Z

    .line 923
    const/4 v0, 0x0

    sput-object v0, LZf;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 924
    monitor-exit v1

    return-void

    .line 922
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
            "LZw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    const-class v1, LZf;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZf;->a:Z

    if-eqz v0, :cond_12

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_IdleRateLimiter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 914
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 918
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZf;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 919
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 905
    const-class v1, LZf;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZf;->a:Z

    if-eqz v0, :cond_12

    .line 906
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_IdleRateLimiter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 905
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 909
    :cond_12
    :try_start_12
    const-class v0, LZw;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZf;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZf;->a:LanD;

    .line 910
    const/4 v0, 0x1

    sput-boolean v0, LZf;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 911
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 899
    const-class v1, LZf;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZf;->a:LanD;

    if-nez v0, :cond_e

    .line 900
    new-instance v0, LZf;

    invoke-direct {v0}, LZf;-><init>()V

    sput-object v0, LZf;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 902
    :cond_e
    monitor-exit v1

    return-void

    .line 899
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LZw;
    .registers 5

    .prologue
    .line 928
    new-instance v3, LZw;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFX;

    invoke-static {}, LgE;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LXU;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LeZ;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LXU;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v3, v0, v1, v2}, LZw;-><init>(LFX;LeZ;Landroid/content/Context;)V

    .line 945
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 888
    invoke-virtual {p0}, LZf;->a()LZw;

    move-result-object v0

    return-object v0
.end method
