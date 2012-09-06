.class public Lrf;
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
        "Lrx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lrx;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1517
    const/4 v0, 0x0

    sput-boolean v0, Lrf;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1515
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
            "Lrx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1519
    sget-object v0, Lrf;->a:LanD;

    if-nez v0, :cond_7

    .line 1520
    invoke-static {}, Lrf;->b()V

    .line 1522
    :cond_7
    sget-object v0, Lrf;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1549
    const-class v1, Lrf;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lrf;->a:Z

    .line 1550
    const/4 v0, 0x0

    sput-object v0, Lrf;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1551
    monitor-exit v1

    return-void

    .line 1549
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
            "Lrx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1541
    const-class v1, Lrf;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrf;->a:Z

    if-eqz v0, :cond_12

    .line 1542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_RemoteOpenerSelector has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1541
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1545
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->bc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lrf;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1546
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1532
    const-class v1, Lrf;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrf;->a:Z

    if-eqz v0, :cond_12

    .line 1533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_RemoteOpenerSelector has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1532
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1536
    :cond_12
    :try_start_12
    const-class v0, Lrx;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lrf;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lrf;->a:LanD;

    .line 1537
    const/4 v0, 0x1

    sput-boolean v0, Lrf;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1538
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1526
    const-class v1, Lrf;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lrf;->a:LanD;

    if-nez v0, :cond_e

    .line 1527
    new-instance v0, Lrf;

    invoke-direct {v0}, Lrf;-><init>()V

    sput-object v0, Lrf;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1529
    :cond_e
    monitor-exit v1

    return-void

    .line 1526
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1515
    invoke-virtual {p0}, Lrf;->a()Lrx;

    move-result-object v0

    return-object v0
.end method

.method public a()Lrx;
    .registers 9

    .prologue
    .line 1555
    new-instance v0, Lrx;

    invoke-static {}, Lre;->a()LanD;

    move-result-object v1

    invoke-static {v1}, Lqi;->bd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-static {}, LqY;->a()LanD;

    move-result-object v2

    invoke-static {v2}, Lqi;->be(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LanD;

    invoke-static {}, Lri;->a()LanD;

    move-result-object v3

    invoke-static {v3}, Lqi;->bf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LanD;

    invoke-static {}, LqR;->a()LanD;

    move-result-object v4

    invoke-static {v4}, Lqi;->bg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LanD;

    invoke-static {}, LqW;->a()LanD;

    move-result-object v5

    invoke-static {v5}, Lqi;->bh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LanD;

    invoke-static {}, Lrh;->a()LanD;

    move-result-object v6

    invoke-static {v6}, Lqi;->bi(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LanD;

    invoke-static {}, Lrg;->a()LanD;

    move-result-object v7

    invoke-static {v7}, Lqi;->bj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LanD;

    invoke-direct/range {v0 .. v7}, Lrx;-><init>(LanD;LanD;LanD;LanD;LanD;LanD;LanD;)V

    .line 1592
    return-object v0
.end method
