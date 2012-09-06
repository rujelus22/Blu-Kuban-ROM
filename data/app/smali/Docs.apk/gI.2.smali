.class public LgI;
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
        "Lht;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lht;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, LgI;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
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
            "Lht;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, LgI;->a:LanD;

    if-nez v0, :cond_7

    .line 79
    invoke-static {}, LgI;->b()V

    .line 81
    :cond_7
    sget-object v0, LgI;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 108
    const-class v1, LgI;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LgI;->a:Z

    .line 109
    const/4 v0, 0x0

    sput-object v0, LgI;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 110
    monitor-exit v1

    return-void

    .line 108
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
            "Lht;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    const-class v1, LgI;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgI;->a:Z

    if-eqz v0, :cond_12

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_VersionCheck has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 100
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 104
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LgI;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 105
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    const-class v1, LgI;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgI;->a:Z

    if-eqz v0, :cond_12

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_VersionCheck has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 91
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 95
    :cond_12
    :try_start_12
    const-class v0, Lht;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LgI;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LgI;->a:LanD;

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, LgI;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 97
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 85
    const-class v1, LgI;

    monitor-enter v1

    :try_start_3
    sget-object v0, LgI;->a:LanD;

    if-nez v0, :cond_e

    .line 86
    new-instance v0, LgI;

    invoke-direct {v0}, LgI;-><init>()V

    sput-object v0, LgI;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 88
    :cond_e
    monitor-exit v1

    return-void

    .line 85
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lht;
    .registers 2

    .prologue
    .line 114
    invoke-static {}, LgJ;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lht;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, LgI;->a()Lht;

    move-result-object v0

    return-object v0
.end method
