.class public LWx;
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
    .line 415
    const/4 v0, 0x0

    sput-boolean v0, LWx;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 413
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
    .line 417
    sget-object v0, LWx;->a:LanD;

    if-nez v0, :cond_7

    .line 418
    invoke-static {}, LWx;->b()V

    .line 420
    :cond_7
    sget-object v0, LWx;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 447
    const-class v1, LWx;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LWx;->a:Z

    .line 448
    const/4 v0, 0x0

    sput-object v0, LWx;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 449
    monitor-exit v1

    return-void

    .line 447
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
    .line 439
    const-class v1, LWx;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWx;->a:Z

    if-eqz v0, :cond_12

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_Integer_Named_tooOldTitle has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 439
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 443
    :cond_12
    :try_start_12
    invoke-static {p0}, LWa;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LWx;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 444
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 430
    const-class v1, LWx;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LWx;->a:Z

    if-eqz v0, :cond_12

    .line 431
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_java_lang_Integer_Named_tooOldTitle has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 430
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 434
    :cond_12
    :try_start_12
    const-class v0, Ljava/lang/Integer;

    const-string v2, "tooOldTitle"

    invoke-static {v2}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v2

    invoke-static {v0, v2}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    invoke-static {}, LWx;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LWx;->a:LanD;

    .line 435
    const/4 v0, 0x1

    sput-boolean v0, LWx;->a:Z
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_f

    .line 436
    monitor-exit v1

    return-void
.end method

.method public static a(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 459
    invoke-static {p0}, LWa;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, LWx;->a:Ljava/lang/Integer;

    .line 460
    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 424
    const-class v1, LWx;

    monitor-enter v1

    :try_start_3
    sget-object v0, LWx;->a:LanD;

    if-nez v0, :cond_e

    .line 425
    new-instance v0, LWx;

    invoke-direct {v0}, LWx;-><init>()V

    sput-object v0, LWx;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 427
    :cond_e
    monitor-exit v1

    return-void

    .line 424
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 455
    sget-object v0, LWx;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 413
    invoke-virtual {p0}, LWx;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
