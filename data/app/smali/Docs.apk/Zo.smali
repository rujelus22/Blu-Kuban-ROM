.class public LZo;
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
        "LZV;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LZV;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1436
    const/4 v0, 0x0

    sput-boolean v0, LZo;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1434
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
            "LZV;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1438
    sget-object v0, LZo;->a:LanD;

    if-nez v0, :cond_7

    .line 1439
    invoke-static {}, LZo;->b()V

    .line 1441
    :cond_7
    sget-object v0, LZo;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1468
    const-class v1, LZo;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZo;->a:Z

    .line 1469
    const/4 v0, 0x0

    sput-object v0, LZo;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1470
    monitor-exit v1

    return-void

    .line 1468
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
            "LZV;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1460
    const-class v1, LZo;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZo;->a:Z

    if-eqz v0, :cond_12

    .line 1461
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_StorageUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1460
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1464
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->Q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZo;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1465
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1451
    const-class v1, LZo;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZo;->a:Z

    if-eqz v0, :cond_12

    .line 1452
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_StorageUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1451
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1455
    :cond_12
    :try_start_12
    const-class v0, LZV;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZo;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZo;->a:LanD;

    .line 1456
    const/4 v0, 0x1

    sput-boolean v0, LZo;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1457
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1445
    const-class v1, LZo;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZo;->a:LanD;

    if-nez v0, :cond_e

    .line 1446
    new-instance v0, LZo;

    invoke-direct {v0}, LZo;-><init>()V

    sput-object v0, LZo;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1448
    :cond_e
    monitor-exit v1

    return-void

    .line 1445
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LZV;
    .registers 2

    .prologue
    .line 1474
    new-instance v0, LZV;

    invoke-direct {v0}, LZV;-><init>()V

    .line 1476
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1434
    invoke-virtual {p0}, LZo;->a()LZV;

    move-result-object v0

    return-object v0
.end method
