.class public LSj;
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
        "LRL;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LRL;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 271
    const/4 v0, 0x0

    sput-boolean v0, LSj;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 269
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
            "LRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, LSj;->a:LanD;

    if-nez v0, :cond_7

    .line 274
    invoke-static {}, LSj;->b()V

    .line 276
    :cond_7
    sget-object v0, LSj;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 303
    const-class v1, LSj;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LSj;->a:Z

    .line 304
    const/4 v0, 0x0

    sput-object v0, LSj;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 305
    monitor-exit v1

    return-void

    .line 303
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
            "LRL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    const-class v1, LSj;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LSj;->a:Z

    if-eqz v0, :cond_12

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_gdata2_client_AclFeedClient has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 295
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 299
    :cond_12
    :try_start_12
    invoke-static {p0}, LRZ;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LSj;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 300
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 286
    const-class v1, LSj;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LSj;->a:Z

    if-eqz v0, :cond_12

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_gdata2_client_AclFeedClient has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 286
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 290
    :cond_12
    :try_start_12
    const-class v0, LRL;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LSj;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LSj;->a:LanD;

    .line 291
    const/4 v0, 0x1

    sput-boolean v0, LSj;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 292
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 280
    const-class v1, LSj;

    monitor-enter v1

    :try_start_3
    sget-object v0, LSj;->a:LanD;

    if-nez v0, :cond_e

    .line 281
    new-instance v0, LSj;

    invoke-direct {v0}, LSj;-><init>()V

    sput-object v0, LSj;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 283
    :cond_e
    monitor-exit v1

    return-void

    .line 280
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LRL;
    .registers 5

    .prologue
    .line 309
    new-instance v3, LRL;

    invoke-static {}, LarX;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LRZ;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LarP;

    invoke-static {}, LSo;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LRZ;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LRY;

    invoke-static {}, LJa;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LRZ;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIG;

    invoke-direct {v3, v0, v1, v2}, LRL;-><init>(LarP;LRY;LIG;)V

    .line 326
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, LSj;->a()LRL;

    move-result-object v0

    return-object v0
.end method
