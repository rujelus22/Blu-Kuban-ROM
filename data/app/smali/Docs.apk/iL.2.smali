.class public LiL;
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
        "LhZ;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LhZ;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 340
    const/4 v0, 0x0

    sput-boolean v0, LiL;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 338
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
            "LhZ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    sget-object v0, LiL;->a:LanD;

    if-nez v0, :cond_7

    .line 343
    invoke-static {}, LiL;->b()V

    .line 345
    :cond_7
    sget-object v0, LiL;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 372
    const-class v1, LiL;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LiL;->a:Z

    .line 373
    const/4 v0, 0x0

    sput-object v0, LiL;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 374
    monitor-exit v1

    return-void

    .line 372
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
            "LhZ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    const-class v1, LiL;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiL;->a:Z

    if-eqz v0, :cond_12

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_CriterionSetSerializer has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 364
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 368
    :cond_12
    :try_start_12
    invoke-static {p0}, Lik;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LiL;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 369
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 355
    const-class v1, LiL;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiL;->a:Z

    if-eqz v0, :cond_12

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_CriterionSetSerializer has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 355
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 359
    :cond_12
    :try_start_12
    const-class v0, LhZ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LiL;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LiL;->a:LanD;

    .line 360
    const/4 v0, 0x1

    sput-boolean v0, LiL;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 361
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 349
    const-class v1, LiL;

    monitor-enter v1

    :try_start_3
    sget-object v0, LiL;->a:LanD;

    if-nez v0, :cond_e

    .line 350
    new-instance v0, LiL;

    invoke-direct {v0}, LiL;-><init>()V

    sput-object v0, LiL;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 352
    :cond_e
    monitor-exit v1

    return-void

    .line 349
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LhZ;
    .registers 2

    .prologue
    .line 378
    invoke-static {}, LiM;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhZ;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 338
    invoke-virtual {p0}, LiL;->a()LhZ;

    move-result-object v0

    return-object v0
.end method
