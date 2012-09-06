.class public LUM;
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
        "LTG;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTG;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 547
    const/4 v0, 0x0

    sput-boolean v0, LUM;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 545
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
            "LTG;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    sget-object v0, LUM;->a:LanD;

    if-nez v0, :cond_7

    .line 550
    invoke-static {}, LUM;->b()V

    .line 552
    :cond_7
    sget-object v0, LUM;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 579
    const-class v1, LUM;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LUM;->a:Z

    .line 580
    const/4 v0, 0x0

    sput-object v0, LUM;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 581
    monitor-exit v1

    return-void

    .line 579
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
            "LTG;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    const-class v1, LUM;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUM;->a:Z

    if-eqz v0, :cond_12

    .line 572
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_DocEntrySynchronizerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 571
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 575
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LUM;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 576
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 562
    const-class v1, LUM;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUM;->a:Z

    if-eqz v0, :cond_12

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_DocEntrySynchronizerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 562
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 566
    :cond_12
    :try_start_12
    const-class v0, LTG;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LUM;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LUM;->a:LanD;

    .line 567
    const/4 v0, 0x1

    sput-boolean v0, LUM;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 568
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 556
    const-class v1, LUM;

    monitor-enter v1

    :try_start_3
    sget-object v0, LUM;->a:LanD;

    if-nez v0, :cond_e

    .line 557
    new-instance v0, LUM;

    invoke-direct {v0}, LUM;-><init>()V

    sput-object v0, LUM;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 559
    :cond_e
    monitor-exit v1

    return-void

    .line 556
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LTG;
    .registers 6

    .prologue
    .line 585
    new-instance v4, LTG;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    invoke-static {}, Llp;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LUb;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lle;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LUb;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFX;

    invoke-static {}, LUO;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LUb;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LTL;

    invoke-direct {v4, v0, v1, v2, v3}, LTG;-><init>(Llu;Lle;LFX;LTL;)V

    .line 607
    return-object v4
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 545
    invoke-virtual {p0}, LUM;->a()LTG;

    move-result-object v0

    return-object v0
.end method
