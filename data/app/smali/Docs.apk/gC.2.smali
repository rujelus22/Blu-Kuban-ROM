.class public LgC;
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
        "LeP;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LeP;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 298
    const/4 v0, 0x0

    sput-boolean v0, LgC;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 296
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
            "LeP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    sget-object v0, LgC;->a:LanD;

    if-nez v0, :cond_7

    .line 301
    invoke-static {}, LgC;->b()V

    .line 303
    :cond_7
    sget-object v0, LgC;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 330
    const-class v1, LgC;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LgC;->a:Z

    .line 331
    const/4 v0, 0x0

    sput-object v0, LgC;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 332
    monitor-exit v1

    return-void

    .line 330
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
            "LeP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    const-class v1, LgC;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgC;->a:Z

    if-eqz v0, :cond_12

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_DriveEnabledCheckerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 322
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 326
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LgC;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 327
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 313
    const-class v1, LgC;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LgC;->a:Z

    if-eqz v0, :cond_12

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_DriveEnabledCheckerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 313
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 317
    :cond_12
    :try_start_12
    const-class v0, LeP;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LgC;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LgC;->a:LanD;

    .line 318
    const/4 v0, 0x1

    sput-boolean v0, LgC;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 319
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 307
    const-class v1, LgC;

    monitor-enter v1

    :try_start_3
    sget-object v0, LgC;->a:LanD;

    if-nez v0, :cond_e

    .line 308
    new-instance v0, LgC;

    invoke-direct {v0}, LgC;-><init>()V

    sput-object v0, LgC;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 310
    :cond_e
    monitor-exit v1

    return-void

    .line 307
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LeP;
    .registers 2

    .prologue
    .line 336
    new-instance v0, LeP;

    invoke-direct {v0}, LeP;-><init>()V

    .line 338
    invoke-static {v0}, Lgg;->a(LeP;)V

    .line 340
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 296
    invoke-virtual {p0}, LgC;->a()LeP;

    move-result-object v0

    return-object v0
.end method
