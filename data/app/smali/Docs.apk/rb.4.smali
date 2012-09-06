.class public Lrb;
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
        "Lrt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lrt;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 452
    const/4 v0, 0x0

    sput-boolean v0, Lrb;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 450
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
            "Lrt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    sget-object v0, Lrb;->a:LanD;

    if-nez v0, :cond_7

    .line 455
    invoke-static {}, Lrb;->b()V

    .line 457
    :cond_7
    sget-object v0, Lrb;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 484
    const-class v1, Lrb;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lrb;->a:Z

    .line 485
    const/4 v0, 0x0

    sput-object v0, Lrb;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 486
    monitor-exit v1

    return-void

    .line 484
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
            "Lrt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    const-class v1, Lrb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrb;->a:Z

    if-eqz v0, :cond_12

    .line 477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_MimeOpenerSelector has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 476
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 480
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lrb;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 481
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 467
    const-class v1, Lrb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrb;->a:Z

    if-eqz v0, :cond_12

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_MimeOpenerSelector has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 467
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 471
    :cond_12
    :try_start_12
    const-class v0, Lrt;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lrb;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lrb;->a:LanD;

    .line 472
    const/4 v0, 0x1

    sput-boolean v0, Lrb;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 473
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 461
    const-class v1, Lrb;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lrb;->a:LanD;

    if-nez v0, :cond_e

    .line 462
    new-instance v0, Lrb;

    invoke-direct {v0}, Lrb;-><init>()V

    sput-object v0, Lrb;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 464
    :cond_e
    monitor-exit v1

    return-void

    .line 461
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 450
    invoke-virtual {p0}, Lrb;->a()Lrt;

    move-result-object v0

    return-object v0
.end method

.method public a()Lrt;
    .registers 5

    .prologue
    .line 490
    new-instance v3, Lrt;

    invoke-static {}, LqV;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lqi;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, LqW;->a()LanD;

    move-result-object v1

    invoke-static {v1}, Lqi;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-static {}, Lrj;->a()LanD;

    move-result-object v2

    invoke-static {v2}, Lqi;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LanD;

    invoke-direct {v3, v0, v1, v2}, Lrt;-><init>(LanD;LanD;LanD;)V

    .line 507
    return-object v3
.end method
