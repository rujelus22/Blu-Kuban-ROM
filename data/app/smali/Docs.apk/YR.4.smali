.class public LYR;
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
        "LXr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXr;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, LYR;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
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
            "LXr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, LYR;->a:LanD;

    if-nez v0, :cond_7

    .line 35
    invoke-static {}, LYR;->b()V

    .line 37
    :cond_7
    sget-object v0, LYR;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 64
    const-class v1, LYR;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYR;->a:Z

    .line 65
    const/4 v0, 0x0

    sput-object v0, LYR;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 66
    monitor-exit v1

    return-void

    .line 64
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
            "LXr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    const-class v1, LYR;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYR;->a:Z

    if-eqz v0, :cond_12

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ActivityUpdater_NotificationManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 56
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 60
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYR;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 61
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 47
    const-class v1, LYR;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYR;->a:Z

    if-eqz v0, :cond_12

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ActivityUpdater_NotificationManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 47
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 51
    :cond_12
    :try_start_12
    const-class v0, LXr;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYR;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYR;->a:LanD;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, LYR;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 53
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 41
    const-class v1, LYR;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYR;->a:LanD;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, LYR;

    invoke-direct {v0}, LYR;-><init>()V

    sput-object v0, LYR;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 44
    :cond_e
    monitor-exit v1

    return-void

    .line 41
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXr;
    .registers 2

    .prologue
    .line 70
    invoke-static {}, LYQ;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXr;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, LYR;->a()LXr;

    move-result-object v0

    return-object v0
.end method
