.class public LUX;
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
        "LVk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LVk;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 839
    const/4 v0, 0x0

    sput-boolean v0, LUX;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 837
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
            "LVk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 841
    sget-object v0, LUX;->a:LanD;

    if-nez v0, :cond_7

    .line 842
    invoke-static {}, LUX;->b()V

    .line 844
    :cond_7
    sget-object v0, LUX;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 871
    const-class v1, LUX;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LUX;->a:Z

    .line 872
    const/4 v0, 0x0

    sput-object v0, LUX;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 873
    monitor-exit v1

    return-void

    .line 871
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
            "LVk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    const-class v1, LUX;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUX;->a:Z

    if-eqz v0, :cond_12

    .line 864
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_SingleDocSynchronizerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 863
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 867
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LUX;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 868
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 854
    const-class v1, LUX;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUX;->a:Z

    if-eqz v0, :cond_12

    .line 855
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_SingleDocSynchronizerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 854
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 858
    :cond_12
    :try_start_12
    const-class v0, LVk;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LUX;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LUX;->a:LanD;

    .line 859
    const/4 v0, 0x1

    sput-boolean v0, LUX;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 860
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 848
    const-class v1, LUX;

    monitor-enter v1

    :try_start_3
    sget-object v0, LUX;->a:LanD;

    if-nez v0, :cond_e

    .line 849
    new-instance v0, LUX;

    invoke-direct {v0}, LUX;-><init>()V

    sput-object v0, LUX;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 851
    :cond_e
    monitor-exit v1

    return-void

    .line 848
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LVk;
    .registers 6

    .prologue
    .line 877
    new-instance v4, LVk;

    invoke-static {}, LSl;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->J(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRU;

    invoke-static {}, LUL;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LUb;->K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTF;

    invoke-static {}, LRl;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LUb;->L(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQN;

    invoke-static {}, LZn;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LUb;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZU;

    invoke-direct {v4, v0, v1, v2, v3}, LVk;-><init>(LRU;LTF;LQN;LZU;)V

    .line 899
    return-object v4
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 837
    invoke-virtual {p0}, LUX;->a()LVk;

    move-result-object v0

    return-object v0
.end method
