.class public LZp;
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
        "Laac;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Laac;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 472
    const/4 v0, 0x0

    sput-boolean v0, LZp;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 470
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
            "Laac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    sget-object v0, LZp;->a:LanD;

    if-nez v0, :cond_7

    .line 475
    invoke-static {}, LZp;->b()V

    .line 477
    :cond_7
    sget-object v0, LZp;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 504
    const-class v1, LZp;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZp;->a:Z

    .line 505
    const/4 v0, 0x0

    sput-object v0, LZp;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 506
    monitor-exit v1

    return-void

    .line 504
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
            "Laac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    const-class v1, LZp;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZp;->a:Z

    if-eqz v0, :cond_12

    .line 497
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ThumbnailFetcher has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 496
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 500
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZp;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 501
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 487
    const-class v1, LZp;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZp;->a:Z

    if-eqz v0, :cond_12

    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_ThumbnailFetcher has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 487
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 491
    :cond_12
    :try_start_12
    const-class v0, Laac;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZp;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZp;->a:LanD;

    .line 492
    const/4 v0, 0x1

    sput-boolean v0, LZp;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 493
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 481
    const-class v1, LZp;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZp;->a:LanD;

    if-nez v0, :cond_e

    .line 482
    new-instance v0, LZp;

    invoke-direct {v0}, LZp;-><init>()V

    sput-object v0, LZp;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 484
    :cond_e
    monitor-exit v1

    return-void

    .line 481
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Laac;
    .registers 2

    .prologue
    .line 510
    invoke-static {}, LZq;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laac;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 470
    invoke-virtual {p0}, LZp;->a()Laac;

    move-result-object v0

    return-object v0
.end method
