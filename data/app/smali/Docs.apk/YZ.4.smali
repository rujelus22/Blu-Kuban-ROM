.class public LYZ;
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
    .line 1530
    const/4 v0, 0x0

    sput-boolean v0, LYZ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1528
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
    .line 1532
    sget-object v0, LYZ;->a:LanD;

    if-nez v0, :cond_7

    .line 1533
    invoke-static {}, LYZ;->b()V

    .line 1535
    :cond_7
    sget-object v0, LYZ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1562
    const-class v1, LYZ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYZ;->a:Z

    .line 1563
    const/4 v0, 0x0

    sput-object v0, LYZ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1564
    monitor-exit v1

    return-void

    .line 1562
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(LXC;)V
    .registers 2
    .parameter

    .prologue
    .line 1574
    invoke-static {p0}, LXU;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXC;

    sput-object v0, LYZ;->a:LXC;

    .line 1575
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
    .line 1554
    const-class v1, LYZ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYZ;->a:Z

    if-eqz v0, :cond_12

    .line 1555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_Clock_Named_UptimeClock has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1554
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1558
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYZ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1559
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1545
    const-class v1, LYZ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYZ;->a:Z

    if-eqz v0, :cond_12

    .line 1546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_Clock_Named_UptimeClock has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1545
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1549
    :cond_12
    :try_start_12
    const-class v0, LXC;

    const-string v2, "UptimeClock"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LYZ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYZ;->a:LanD;

    .line 1550
    const/4 v0, 0x1

    sput-boolean v0, LYZ;->a:Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 1551
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1539
    const-class v1, LYZ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYZ;->a:LanD;

    if-nez v0, :cond_e

    .line 1540
    new-instance v0, LYZ;

    invoke-direct {v0}, LYZ;-><init>()V

    sput-object v0, LYZ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1542
    :cond_e
    monitor-exit v1

    return-void

    .line 1539
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXC;
    .registers 2

    .prologue
    .line 1570
    sget-object v0, LYZ;->a:LXC;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1528
    invoke-virtual {p0}, LYZ;->a()LXC;

    move-result-object v0

    return-object v0
.end method
