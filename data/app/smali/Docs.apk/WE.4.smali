.class public LWE;
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
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 562
    const/4 v0, 0x0

    sput-boolean v0, LWE;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 560
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
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    sget-object v0, LWE;->a:LanD;

    if-nez v0, :cond_7

    .line 565
    invoke-static {}, LWE;->b()V

    .line 567
    :cond_7
    sget-object v0, LWE;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 594
    const-class v1, LWE;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWE;->a:Z

    .line 595
    const/4 v0, 0x0

    sput-object v0, LWE;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 596
    monitor-exit v1

    return-void

    .line 594
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
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    const-class v1, LWE;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWE;->a:Z

    if-eqz v0, :cond_12

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_util_concurrent_Executor has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 586
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 590
    :cond_12
    :try_start_12
    invoke-static {p0}, LWa;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWE;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 591
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 577
    const-class v1, LWE;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWE;->a:Z

    if-eqz v0, :cond_12

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_util_concurrent_Executor has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 577
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 581
    :cond_12
    :try_start_12
    const-class v0, Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LWE;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWE;->a:LanD;

    .line 582
    const/4 v0, 0x1

    sput-boolean v0, LWE;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 583
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 571
    const-class v1, LWE;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWE;->a:LanD;

    if-nez v0, :cond_e

    .line 572
    new-instance v0, LWE;

    invoke-direct {v0}, LWE;-><init>()V

    sput-object v0, LWE;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 574
    :cond_e
    monitor-exit v1

    return-void

    .line 571
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 560
    invoke-virtual {p0}, LWE;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/concurrent/Executor;
    .registers 3

    .prologue
    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
