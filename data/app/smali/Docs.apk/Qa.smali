.class public LQa;
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
        "LQm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LQm;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 351
    const/4 v0, 0x0

    sput-boolean v0, LQa;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 349
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
            "LQm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    sget-object v0, LQa;->a:LanD;

    if-nez v0, :cond_7

    .line 354
    invoke-static {}, LQa;->b()V

    .line 356
    :cond_7
    sget-object v0, LQa;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 383
    const-class v1, LQa;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LQa;->a:Z

    .line 384
    const/4 v0, 0x0

    sput-object v0, LQa;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 385
    monitor-exit v1

    return-void

    .line 383
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
            "LQm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    const-class v1, LQa;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LQa;->a:Z

    if-eqz v0, :cond_12

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sharingactivity_SharingInfo has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 375
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 379
    :cond_12
    :try_start_12
    invoke-static {p0}, LPr;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LQa;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 380
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 366
    const-class v1, LQa;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LQa;->a:Z

    if-eqz v0, :cond_12

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sharingactivity_SharingInfo has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 366
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 370
    :cond_12
    :try_start_12
    const-class v0, LQm;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LQa;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LQa;->a:LanD;

    .line 371
    const/4 v0, 0x1

    sput-boolean v0, LQa;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 372
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 360
    const-class v1, LQa;

    monitor-enter v1

    :try_start_3
    sget-object v0, LQa;->a:LanD;

    if-nez v0, :cond_e

    .line 361
    new-instance v0, LQa;

    invoke-direct {v0}, LQa;-><init>()V

    sput-object v0, LQa;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 363
    :cond_e
    monitor-exit v1

    return-void

    .line 360
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LQm;
    .registers 3

    .prologue
    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 349
    invoke-virtual {p0}, LQa;->a()LQm;

    move-result-object v0

    return-object v0
.end method
