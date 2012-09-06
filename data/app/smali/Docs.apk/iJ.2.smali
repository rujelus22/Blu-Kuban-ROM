.class public LiJ;
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
        "LhM;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LhM;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 252
    const/4 v0, 0x0

    sput-boolean v0, LiJ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 250
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
            "LhM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, LiJ;->a:LanD;

    if-nez v0, :cond_7

    .line 255
    invoke-static {}, LiJ;->b()V

    .line 257
    :cond_7
    sget-object v0, LiJ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 284
    const-class v1, LiJ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LiJ;->a:Z

    .line 285
    const/4 v0, 0x0

    sput-object v0, LiJ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 286
    monitor-exit v1

    return-void

    .line 284
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
            "LhM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    const-class v1, LiJ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiJ;->a:Z

    if-eqz v0, :cond_12

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_CriterionFactory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 276
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 280
    :cond_12
    :try_start_12
    invoke-static {p0}, Lik;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LiJ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 281
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 267
    const-class v1, LiJ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiJ;->a:Z

    if-eqz v0, :cond_12

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_CriterionFactory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 267
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 271
    :cond_12
    :try_start_12
    const-class v0, LhM;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LiJ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LiJ;->a:LanD;

    .line 272
    const/4 v0, 0x1

    sput-boolean v0, LiJ;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 273
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 261
    const-class v1, LiJ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LiJ;->a:LanD;

    if-nez v0, :cond_e

    .line 262
    new-instance v0, LiJ;

    invoke-direct {v0}, LiJ;-><init>()V

    sput-object v0, LiJ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 264
    :cond_e
    monitor-exit v1

    return-void

    .line 261
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LhM;
    .registers 2

    .prologue
    .line 290
    invoke-static {}, LiK;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhM;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, LiJ;->a()LhM;

    move-result-object v0

    return-object v0
.end method
