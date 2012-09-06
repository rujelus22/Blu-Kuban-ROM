.class public LYS;
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
        "LXt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXt;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 516
    const/4 v0, 0x0

    sput-boolean v0, LYS;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 514
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
            "LXt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    sget-object v0, LYS;->a:LanD;

    if-nez v0, :cond_7

    .line 519
    invoke-static {}, LYS;->b()V

    .line 521
    :cond_7
    sget-object v0, LYS;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 548
    const-class v1, LYS;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYS;->a:Z

    .line 549
    const/4 v0, 0x0

    sput-object v0, LYS;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 550
    monitor-exit v1

    return-void

    .line 548
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
            "LXt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    const-class v1, LYS;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYS;->a:Z

    if-eqz v0, :cond_12

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_BitmapUtilities has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 540
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 544
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYS;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 545
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 531
    const-class v1, LYS;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYS;->a:Z

    if-eqz v0, :cond_12

    .line 532
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_BitmapUtilities has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 531
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 535
    :cond_12
    :try_start_12
    const-class v0, LXt;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYS;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYS;->a:LanD;

    .line 536
    const/4 v0, 0x1

    sput-boolean v0, LYS;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 537
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 525
    const-class v1, LYS;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYS;->a:LanD;

    if-nez v0, :cond_e

    .line 526
    new-instance v0, LYS;

    invoke-direct {v0}, LYS;-><init>()V

    sput-object v0, LYS;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 528
    :cond_e
    monitor-exit v1

    return-void

    .line 525
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXt;
    .registers 2

    .prologue
    .line 554
    invoke-static {}, LYT;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXt;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 514
    invoke-virtual {p0}, LYS;->a()LXt;

    move-result-object v0

    return-object v0
.end method
