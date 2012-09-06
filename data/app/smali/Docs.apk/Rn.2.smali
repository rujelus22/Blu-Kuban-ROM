.class public LRn;
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
        "LQU;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LQU;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 255
    const/4 v0, 0x0

    sput-boolean v0, LRn;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 253
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
            "LQU;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    sget-object v0, LRn;->a:LanD;

    if-nez v0, :cond_7

    .line 258
    invoke-static {}, LRn;->b()V

    .line 260
    :cond_7
    sget-object v0, LRn;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 287
    const-class v1, LRn;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LRn;->a:Z

    .line 288
    const/4 v0, 0x0

    sput-object v0, LRn;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 289
    monitor-exit v1

    return-void

    .line 287
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
            "LQU;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    const-class v1, LRn;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LRn;->a:Z

    if-eqz v0, :cond_12

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_filemanager_FileContentInstance_Factory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 279
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 283
    :cond_12
    :try_start_12
    invoke-static {p0}, LRe;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LRn;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 284
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 270
    const-class v1, LRn;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LRn;->a:Z

    if-eqz v0, :cond_12

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_filemanager_FileContentInstance_Factory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 270
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 274
    :cond_12
    :try_start_12
    const-class v0, LQU;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LRn;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LRn;->a:LanD;

    .line 275
    const/4 v0, 0x1

    sput-boolean v0, LRn;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 276
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 264
    const-class v1, LRn;

    monitor-enter v1

    :try_start_3
    sget-object v0, LRn;->a:LanD;

    if-nez v0, :cond_e

    .line 265
    new-instance v0, LRn;

    invoke-direct {v0}, LRn;-><init>()V

    sput-object v0, LRn;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 267
    :cond_e
    monitor-exit v1

    return-void

    .line 264
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LQU;
    .registers 6

    .prologue
    .line 293
    new-instance v4, LQU;

    invoke-static {}, LZd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LRe;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXP;

    invoke-static {}, LRo;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LRe;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQZ;

    invoke-static {}, LYV;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LRe;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LXz;

    invoke-static {}, LZk;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LRe;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZJ;

    invoke-direct {v4, v0, v1, v2, v3}, LQU;-><init>(LXP;LQZ;LXz;LZJ;)V

    .line 315
    return-object v4
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, LRn;->a()LQU;

    move-result-object v0

    return-object v0
.end method
