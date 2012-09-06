.class public LYX;
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
        "LXC;",
        ">;"
    }
.end annotation


# static fields
.field private static a:LXC;

.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXC;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1481
    const/4 v0, 0x0

    sput-boolean v0, LYX;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1479
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
            "LXC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1483
    sget-object v0, LYX;->a:LanD;

    if-nez v0, :cond_7

    .line 1484
    invoke-static {}, LYX;->b()V

    .line 1486
    :cond_7
    sget-object v0, LYX;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1513
    const-class v1, LYX;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYX;->a:Z

    .line 1514
    const/4 v0, 0x0

    sput-object v0, LYX;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1515
    monitor-exit v1

    return-void

    .line 1513
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(LXC;)V
    .registers 2
    .parameter

    .prologue
    .line 1525
    invoke-static {p0}, LXU;->S(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXC;

    sput-object v0, LYX;->a:LXC;

    .line 1526
    return-void
.end method

.method public static declared-synchronized a(LanD;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "LXC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1505
    const-class v1, LYX;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYX;->a:Z

    if-eqz v0, :cond_12

    .line 1506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_Clock has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1505
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1509
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYX;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1510
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1496
    const-class v1, LYX;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYX;->a:Z

    if-eqz v0, :cond_12

    .line 1497
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_Clock has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1496
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1500
    :cond_12
    :try_start_12
    const-class v0, LXC;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYX;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYX;->a:LanD;

    .line 1501
    const/4 v0, 0x1

    sput-boolean v0, LYX;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1502
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1490
    const-class v1, LYX;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYX;->a:LanD;

    if-nez v0, :cond_e

    .line 1491
    new-instance v0, LYX;

    invoke-direct {v0}, LYX;-><init>()V

    sput-object v0, LYX;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1493
    :cond_e
    monitor-exit v1

    return-void

    .line 1490
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXC;
    .registers 2

    .prologue
    .line 1521
    sget-object v0, LYX;->a:LXC;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1479
    invoke-virtual {p0}, LYX;->a()LXC;

    move-result-object v0

    return-object v0
.end method
