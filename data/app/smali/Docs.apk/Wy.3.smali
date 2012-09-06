.class public LWy;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Ljava/lang/Integer;

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 464
    const/4 v0, 0x0

    sput-boolean v0, LWy;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 462
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    sget-object v0, LWy;->a:LanD;

    if-nez v0, :cond_7

    .line 467
    invoke-static {}, LWy;->b()V

    .line 469
    :cond_7
    sget-object v0, LWy;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 496
    const-class v1, LWy;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWy;->a:Z

    .line 497
    const/4 v0, 0x0

    sput-object v0, LWy;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 498
    monitor-exit v1

    return-void

    .line 496
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    const-class v1, LWy;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWy;->a:Z

    if-eqz v0, :cond_12

    .line 489
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_Integer_Named_tooOldUpgrade has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 488
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 492
    :cond_12
    :try_start_12
    invoke-static {p0}, LWa;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWy;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 493
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 479
    const-class v1, LWy;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWy;->a:Z

    if-eqz v0, :cond_12

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_Integer_Named_tooOldUpgrade has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 479
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 483
    :cond_12
    :try_start_12
    const-class v0, Ljava/lang/Integer;

    const-string v2, "tooOldUpgrade"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LWy;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWy;->a:LanD;

    .line 484
    const/4 v0, 0x1

    sput-boolean v0, LWy;->a:Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 485
    monitor-exit v1

    return-void
.end method

.method public static a(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 508
    invoke-static {p0}, LWa;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, LWy;->a:Ljava/lang/Integer;

    .line 509
    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 473
    const-class v1, LWy;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWy;->a:LanD;

    if-nez v0, :cond_e

    .line 474
    new-instance v0, LWy;

    invoke-direct {v0}, LWy;-><init>()V

    sput-object v0, LWy;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 476
    :cond_e
    monitor-exit v1

    return-void

    .line 473
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 504
    sget-object v0, LWy;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 462
    invoke-virtual {p0}, LWy;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
