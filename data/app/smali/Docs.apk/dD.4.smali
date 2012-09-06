.class public LdD;
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
        "LdE;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LdE;",
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

    sput-boolean v0, LdD;->a:Z

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
            "LdE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, LdD;->a:LanD;

    if-nez v0, :cond_7

    .line 35
    invoke-static {}, LdD;->b()V

    .line 37
    :cond_7
    sget-object v0, LdD;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 64
    const-class v1, LdD;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LdD;->a:Z

    .line 65
    const/4 v0, 0x0

    sput-object v0, LdD;->a:LanD;
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
            "LdE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    const-class v1, LdD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LdD;->a:Z

    if-eqz v0, :cond_12

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_analytics_Tracker has already been scoped."

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
    invoke-static {p0}, LdA;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LdD;->a:LanD;
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
    const-class v1, LdD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LdD;->a:Z

    if-eqz v0, :cond_12

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_analytics_Tracker has already been scoped."

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
    const-class v0, LdE;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LdD;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LdD;->a:LanD;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, LdD;->a:Z
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
    const-class v1, LdD;

    monitor-enter v1

    :try_start_3
    sget-object v0, LdD;->a:LanD;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, LdD;

    invoke-direct {v0}, LdD;-><init>()V

    sput-object v0, LdD;->a:LanD;
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
.method public a()LdE;
    .registers 5

    .prologue
    .line 70
    new-instance v3, LdE;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LdA;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, LWz;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LdA;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, LgE;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LdA;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LeZ;

    invoke-direct {v3, v0, v1, v2}, LdE;-><init>(LanD;Ljava/lang/String;LeZ;)V

    .line 87
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, LdD;->a()LdE;

    move-result-object v0

    return-object v0
.end method
