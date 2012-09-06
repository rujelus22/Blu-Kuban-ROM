.class public LYQ;
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
        "LXq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXq;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    sput-boolean v0, LYQ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1247
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
            "LXq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1251
    sget-object v0, LYQ;->a:LanD;

    if-nez v0, :cond_7

    .line 1252
    invoke-static {}, LYQ;->b()V

    .line 1254
    :cond_7
    sget-object v0, LYQ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1281
    const-class v1, LYQ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYQ;->a:Z

    .line 1282
    const/4 v0, 0x0

    sput-object v0, LYQ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1283
    monitor-exit v1

    return-void

    .line 1281
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
            "LXq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1273
    const-class v1, LYQ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYQ;->a:Z

    if-eqz v0, :cond_12

    .line 1274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ActivityUpdater_DefaultNotificationManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1273
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1277
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->L(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYQ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1278
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1264
    const-class v1, LYQ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYQ;->a:Z

    if-eqz v0, :cond_12

    .line 1265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ActivityUpdater_DefaultNotificationManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1264
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1268
    :cond_12
    :try_start_12
    const-class v0, LXq;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYQ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYQ;->a:LanD;

    .line 1269
    const/4 v0, 0x1

    sput-boolean v0, LYQ;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1270
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1258
    const-class v1, LYQ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYQ;->a:LanD;

    if-nez v0, :cond_e

    .line 1259
    new-instance v0, LYQ;

    invoke-direct {v0}, LYQ;-><init>()V

    sput-object v0, LYQ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1261
    :cond_e
    monitor-exit v1

    return-void

    .line 1258
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXq;
    .registers 2

    .prologue
    .line 1287
    new-instance v0, LXq;

    invoke-direct {v0}, LXq;-><init>()V

    .line 1289
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1247
    invoke-virtual {p0}, LYQ;->a()LXq;

    move-result-object v0

    return-object v0
.end method
