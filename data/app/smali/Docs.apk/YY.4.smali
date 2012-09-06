.class public LYY;
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
    .line 1579
    const/4 v0, 0x0

    sput-boolean v0, LYY;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1577
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
    .line 1581
    sget-object v0, LYY;->a:LanD;

    if-nez v0, :cond_7

    .line 1582
    invoke-static {}, LYY;->b()V

    .line 1584
    :cond_7
    sget-object v0, LYY;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1611
    const-class v1, LYY;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYY;->a:Z

    .line 1612
    const/4 v0, 0x0

    sput-object v0, LYY;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1613
    monitor-exit v1

    return-void

    .line 1611
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(LXC;)V
    .registers 2
    .parameter

    .prologue
    .line 1623
    invoke-static {p0}, LXU;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXC;

    sput-object v0, LYY;->a:LXC;

    .line 1624
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
    .line 1603
    const-class v1, LYY;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYY;->a:Z

    if-eqz v0, :cond_12

    .line 1604
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_Clock_Named_RealtimeClock has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1603
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1607
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYY;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1608
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1594
    const-class v1, LYY;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYY;->a:Z

    if-eqz v0, :cond_12

    .line 1595
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_Clock_Named_RealtimeClock has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1594
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1598
    :cond_12
    :try_start_12
    const-class v0, LXC;

    const-string v2, "RealtimeClock"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LYY;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYY;->a:LanD;

    .line 1599
    const/4 v0, 0x1

    sput-boolean v0, LYY;->a:Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 1600
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1588
    const-class v1, LYY;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYY;->a:LanD;

    if-nez v0, :cond_e

    .line 1589
    new-instance v0, LYY;

    invoke-direct {v0}, LYY;-><init>()V

    sput-object v0, LYY;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1591
    :cond_e
    monitor-exit v1

    return-void

    .line 1588
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXC;
    .registers 2

    .prologue
    .line 1619
    sget-object v0, LYY;->a:LXC;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1577
    invoke-virtual {p0}, LYY;->a()LXC;

    move-result-object v0

    return-object v0
.end method
