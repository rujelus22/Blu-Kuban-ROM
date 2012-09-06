.class public LJb;
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
        "LII;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LII;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 324
    const/4 v0, 0x0

    sput-boolean v0, LJb;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 322
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
            "LII;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, LJb;->a:LanD;

    if-nez v0, :cond_7

    .line 327
    invoke-static {}, LJb;->b()V

    .line 329
    :cond_7
    sget-object v0, LJb;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 356
    const-class v1, LJb;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LJb;->a:Z

    .line 357
    const/4 v0, 0x0

    sput-object v0, LJb;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 358
    monitor-exit v1

    return-void

    .line 356
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
            "LII;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    const-class v1, LJb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LJb;->a:Z

    if-eqz v0, :cond_12

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_AuthTokenManagerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 348
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 352
    :cond_12
    :try_start_12
    invoke-static {p0}, LIN;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LJb;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 353
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 339
    const-class v1, LJb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LJb;->a:Z

    if-eqz v0, :cond_12

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_AuthTokenManagerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 339
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 343
    :cond_12
    :try_start_12
    const-class v0, LII;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LJb;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LJb;->a:LanD;

    .line 344
    const/4 v0, 0x1

    sput-boolean v0, LJb;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 345
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 333
    const-class v1, LJb;

    monitor-enter v1

    :try_start_3
    sget-object v0, LJb;->a:LanD;

    if-nez v0, :cond_e

    .line 334
    new-instance v0, LJb;

    invoke-direct {v0}, LJb;-><init>()V

    sput-object v0, LJb;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 336
    :cond_e
    monitor-exit v1

    return-void

    .line 333
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LII;
    .registers 4

    .prologue
    .line 362
    new-instance v2, LII;

    invoke-static {}, LIX;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LIN;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LID;

    invoke-static {}, LJC;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LIN;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJH;

    invoke-direct {v2, v0, v1}, LII;-><init>(LID;LJH;)V

    .line 374
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, LJb;->a()LII;

    move-result-object v0

    return-object v0
.end method
