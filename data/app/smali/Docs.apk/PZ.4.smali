.class public LPZ;
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
        "LQi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LQi;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 258
    const/4 v0, 0x0

    sput-boolean v0, LPZ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 256
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
            "LQi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, LPZ;->a:LanD;

    if-nez v0, :cond_7

    .line 261
    invoke-static {}, LPZ;->b()V

    .line 263
    :cond_7
    sget-object v0, LPZ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 290
    const-class v1, LPZ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LPZ;->a:Z

    .line 291
    const/4 v0, 0x0

    sput-object v0, LPZ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 292
    monitor-exit v1

    return-void

    .line 290
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
            "LQi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    const-class v1, LPZ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LPZ;->a:Z

    if-eqz v0, :cond_12

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sharingactivity_ServerAclManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 282
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 286
    :cond_12
    :try_start_12
    invoke-static {p0}, LPr;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LPZ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 287
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 273
    const-class v1, LPZ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LPZ;->a:Z

    if-eqz v0, :cond_12

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sharingactivity_ServerAclManager has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 273
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 277
    :cond_12
    :try_start_12
    const-class v0, LQi;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LPZ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LPZ;->a:LanD;

    .line 278
    const/4 v0, 0x1

    sput-boolean v0, LPZ;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 279
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 267
    const-class v1, LPZ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LPZ;->a:LanD;

    if-nez v0, :cond_e

    .line 268
    new-instance v0, LPZ;

    invoke-direct {v0}, LPZ;-><init>()V

    sput-object v0, LPZ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 270
    :cond_e
    monitor-exit v1

    return-void

    .line 267
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LQi;
    .registers 3

    .prologue
    .line 296
    new-instance v1, LQi;

    invoke-static {}, LSj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LPr;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRL;

    invoke-direct {v1, v0}, LQi;-><init>(LRL;)V

    .line 303
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, LPZ;->a()LQi;

    move-result-object v0

    return-object v0
.end method
