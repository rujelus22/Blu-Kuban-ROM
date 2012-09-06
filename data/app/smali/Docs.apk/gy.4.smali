.class public Lgy;
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
        "LdO;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LdO;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 345
    const/4 v0, 0x0

    sput-boolean v0, Lgy;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 343
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
            "LdO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    sget-object v0, Lgy;->a:LanD;

    if-nez v0, :cond_7

    .line 348
    invoke-static {}, Lgy;->b()V

    .line 350
    :cond_7
    sget-object v0, Lgy;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 377
    const-class v1, Lgy;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lgy;->a:Z

    .line 378
    const/4 v0, 0x0

    sput-object v0, Lgy;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 379
    monitor-exit v1

    return-void

    .line 377
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
            "LdO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    const-class v1, Lgy;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lgy;->a:Z

    if-eqz v0, :cond_12

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_ApplicationModeProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 369
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 373
    :cond_12
    :try_start_12
    invoke-static {p0}, Lfe;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lgy;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 374
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 360
    const-class v1, Lgy;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lgy;->a:Z

    if-eqz v0, :cond_12

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_ApplicationModeProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 360
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 364
    :cond_12
    :try_start_12
    const-class v0, LdO;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lgy;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lgy;->a:LanD;

    .line 365
    const/4 v0, 0x1

    sput-boolean v0, Lgy;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 366
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 354
    const-class v1, Lgy;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lgy;->a:LanD;

    if-nez v0, :cond_e

    .line 355
    new-instance v0, Lgy;

    invoke-direct {v0}, Lgy;-><init>()V

    sput-object v0, Lgy;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 357
    :cond_e
    monitor-exit v1

    return-void

    .line 354
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LdO;
    .registers 2

    .prologue
    .line 383
    new-instance v0, LdO;

    invoke-direct {v0}, LdO;-><init>()V

    .line 385
    invoke-static {v0}, LfX;->a(LdO;)V

    .line 387
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lgy;->a()LdO;

    move-result-object v0

    return-object v0
.end method
