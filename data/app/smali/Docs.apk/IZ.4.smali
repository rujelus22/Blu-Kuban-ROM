.class public LIZ;
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
        "LIF;",
        ">;"
    }
.end annotation


# static fields
.field private static a:LIF;

.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LIF;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 379
    const/4 v0, 0x0

    sput-boolean v0, LIZ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 377
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
            "LIF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    sget-object v0, LIZ;->a:LanD;

    if-nez v0, :cond_7

    .line 382
    invoke-static {}, LIZ;->b()V

    .line 384
    :cond_7
    sget-object v0, LIZ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 411
    const-class v1, LIZ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LIZ;->a:Z

    .line 412
    const/4 v0, 0x0

    sput-object v0, LIZ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 413
    monitor-exit v1

    return-void

    .line 411
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(LIF;)V
    .registers 2
    .parameter

    .prologue
    .line 423
    invoke-static {p0}, LIN;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIF;

    sput-object v0, LIZ;->a:LIF;

    .line 424
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
            "LIF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    const-class v1, LIZ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LIZ;->a:Z

    if-eqz v0, :cond_12

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_ApplicationContextProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 403
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 407
    :cond_12
    :try_start_12
    invoke-static {p0}, LIN;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LIZ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 408
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 394
    const-class v1, LIZ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LIZ;->a:Z

    if-eqz v0, :cond_12

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_ApplicationContextProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 394
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 398
    :cond_12
    :try_start_12
    const-class v0, LIF;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LIZ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LIZ;->a:LanD;

    .line 399
    const/4 v0, 0x1

    sput-boolean v0, LIZ;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 400
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 388
    const-class v1, LIZ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LIZ;->a:LanD;

    if-nez v0, :cond_e

    .line 389
    new-instance v0, LIZ;

    invoke-direct {v0}, LIZ;-><init>()V

    sput-object v0, LIZ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 391
    :cond_e
    monitor-exit v1

    return-void

    .line 388
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LIF;
    .registers 2

    .prologue
    .line 419
    sget-object v0, LIZ;->a:LIF;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 377
    invoke-virtual {p0}, LIZ;->a()LIF;

    move-result-object v0

    return-object v0
.end method
