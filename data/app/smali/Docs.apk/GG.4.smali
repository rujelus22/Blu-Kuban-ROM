.class public LGG;
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
        "LGm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LGm;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 370
    const/4 v0, 0x0

    sput-boolean v0, LGG;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 368
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
            "LGm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    sget-object v0, LGG;->a:LanD;

    if-nez v0, :cond_7

    .line 373
    invoke-static {}, LGG;->b()V

    .line 375
    :cond_7
    sget-object v0, LGG;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 402
    const-class v1, LGG;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LGG;->a:Z

    .line 403
    const/4 v0, 0x0

    sput-object v0, LGG;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 404
    monitor-exit v1

    return-void

    .line 402
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
            "LGm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    const-class v1, LGG;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LGG;->a:Z

    if-eqz v0, :cond_12

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_flags_ClientFlagsModule_ClientFlagProvider has already been scoped."

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
    invoke-static {p0}, LGn;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LGG;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 399
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 385
    const-class v1, LGG;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LGG;->a:Z

    if-eqz v0, :cond_12

    .line 386
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_flags_ClientFlagsModule_ClientFlagProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 385
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 389
    :cond_12
    :try_start_12
    const-class v0, LGm;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LGG;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LGG;->a:LanD;

    .line 390
    const/4 v0, 0x1

    sput-boolean v0, LGG;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 391
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 379
    const-class v1, LGG;

    monitor-enter v1

    :try_start_3
    sget-object v0, LGG;->a:LanD;

    if-nez v0, :cond_e

    .line 380
    new-instance v0, LGG;

    invoke-direct {v0}, LGG;-><init>()V

    sput-object v0, LGG;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 382
    :cond_e
    monitor-exit v1

    return-void

    .line 379
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LGm;
    .registers 2

    .prologue
    .line 408
    new-instance v0, LGm;

    invoke-direct {v0}, LGm;-><init>()V

    .line 410
    invoke-static {v0}, LGy;->a(LGm;)V

    .line 412
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 368
    invoke-virtual {p0}, LGG;->a()LGm;

    move-result-object v0

    return-object v0
.end method
