.class public LYT;
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
        "LXv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXv;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1341
    const/4 v0, 0x0

    sput-boolean v0, LYT;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1339
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
            "LXv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1343
    sget-object v0, LYT;->a:LanD;

    if-nez v0, :cond_7

    .line 1344
    invoke-static {}, LYT;->b()V

    .line 1346
    :cond_7
    sget-object v0, LYT;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1373
    const-class v1, LYT;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYT;->a:Z

    .line 1374
    const/4 v0, 0x0

    sput-object v0, LYT;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1375
    monitor-exit v1

    return-void

    .line 1373
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
            "LXv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1365
    const-class v1, LYT;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYT;->a:Z

    if-eqz v0, :cond_12

    .line 1366
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_BitmapUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1365
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1369
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYT;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1370
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1356
    const-class v1, LYT;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYT;->a:Z

    if-eqz v0, :cond_12

    .line 1357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_BitmapUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1356
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1360
    :cond_12
    :try_start_12
    const-class v0, LXv;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYT;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYT;->a:LanD;

    .line 1361
    const/4 v0, 0x1

    sput-boolean v0, LYT;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1362
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1350
    const-class v1, LYT;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYT;->a:LanD;

    if-nez v0, :cond_e

    .line 1351
    new-instance v0, LYT;

    invoke-direct {v0}, LYT;-><init>()V

    sput-object v0, LYT;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1353
    :cond_e
    monitor-exit v1

    return-void

    .line 1350
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXv;
    .registers 2

    .prologue
    .line 1379
    new-instance v0, LXv;

    invoke-direct {v0}, LXv;-><init>()V

    .line 1381
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1339
    invoke-virtual {p0}, LYT;->a()LXv;

    move-result-object v0

    return-object v0
.end method
