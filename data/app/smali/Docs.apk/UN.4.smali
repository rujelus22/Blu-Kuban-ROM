.class public LUN;
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
        "LTH;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTH;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 722
    const/4 v0, 0x0

    sput-boolean v0, LUN;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 720
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
            "LTH;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    sget-object v0, LUN;->a:LanD;

    if-nez v0, :cond_7

    .line 725
    invoke-static {}, LUN;->b()V

    .line 727
    :cond_7
    sget-object v0, LUN;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 754
    const-class v1, LUN;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LUN;->a:Z

    .line 755
    const/4 v0, 0x0

    sput-object v0, LUN;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 756
    monitor-exit v1

    return-void

    .line 754
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
            "LTH;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    const-class v1, LUN;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUN;->a:Z

    if-eqz v0, :cond_12

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_DocsSyncAdapter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 746
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 750
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LUN;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 751
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 737
    const-class v1, LUN;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUN;->a:Z

    if-eqz v0, :cond_12

    .line 738
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_DocsSyncAdapter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 737
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 741
    :cond_12
    :try_start_12
    const-class v0, LTH;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LUN;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LUN;->a:LanD;

    .line 742
    const/4 v0, 0x1

    sput-boolean v0, LUN;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 743
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 731
    const-class v1, LUN;

    monitor-enter v1

    :try_start_3
    sget-object v0, LUN;->a:LanD;

    if-nez v0, :cond_e

    .line 732
    new-instance v0, LUN;

    invoke-direct {v0}, LUN;-><init>()V

    sput-object v0, LUN;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 734
    :cond_e
    monitor-exit v1

    return-void

    .line 731
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LTH;
    .registers 5

    .prologue
    .line 760
    new-instance v3, LTH;

    invoke-static {}, Lano;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lans;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LUb;->D(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, LUY;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LUb;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVo;

    invoke-direct {v3, v0, v1, v2}, LTH;-><init>(Lans;Landroid/content/Context;LVo;)V

    .line 777
    invoke-static {v3}, LUF;->a(LTH;)V

    .line 779
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 720
    invoke-virtual {p0}, LUN;->a()LTH;

    move-result-object v0

    return-object v0
.end method
