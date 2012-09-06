.class public LiT;
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
        "Lje;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lje;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 296
    const/4 v0, 0x0

    sput-boolean v0, LiT;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 294
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
            "Lje;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, LiT;->a:LanD;

    if-nez v0, :cond_7

    .line 299
    invoke-static {}, LiT;->b()V

    .line 301
    :cond_7
    sget-object v0, LiT;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 328
    const-class v1, LiT;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LiT;->a:Z

    .line 329
    const/4 v0, 0x0

    sput-object v0, LiT;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 330
    monitor-exit v1

    return-void

    .line 328
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
            "Lje;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    const-class v1, LiT;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiT;->a:Z

    if-eqz v0, :cond_12

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_NavigationPanelDataSourceSetter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 320
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 324
    :cond_12
    :try_start_12
    invoke-static {p0}, Lik;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LiT;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 325
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 311
    const-class v1, LiT;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiT;->a:Z

    if-eqz v0, :cond_12

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_NavigationPanelDataSourceSetter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 311
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 315
    :cond_12
    :try_start_12
    const-class v0, Lje;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LiT;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LiT;->a:LanD;

    .line 316
    const/4 v0, 0x1

    sput-boolean v0, LiT;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 317
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 305
    const-class v1, LiT;

    monitor-enter v1

    :try_start_3
    sget-object v0, LiT;->a:LanD;

    if-nez v0, :cond_e

    .line 306
    new-instance v0, LiT;

    invoke-direct {v0}, LiT;-><init>()V

    sput-object v0, LiT;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 308
    :cond_e
    monitor-exit v1

    return-void

    .line 305
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 294
    invoke-virtual {p0}, LiT;->a()Lje;

    move-result-object v0

    return-object v0
.end method

.method public a()Lje;
    .registers 2

    .prologue
    .line 334
    invoke-static {}, LiU;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lje;

    return-object v0
.end method
