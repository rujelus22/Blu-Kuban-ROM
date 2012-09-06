.class public LVG;
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
        "LVy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LVy;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    const/4 v0, 0x0

    sput-boolean v0, LVG;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 124
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
            "LVy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, LVG;->a:LanD;

    if-nez v0, :cond_7

    .line 129
    invoke-static {}, LVG;->b()V

    .line 131
    :cond_7
    sget-object v0, LVG;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 158
    const-class v1, LVG;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LVG;->a:Z

    .line 159
    const/4 v0, 0x0

    sput-object v0, LVG;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 160
    monitor-exit v1

    return-void

    .line 158
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
            "LVy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    const-class v1, LVG;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LVG;->a:Z

    if-eqz v0, :cond_12

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_filesyncer_BinaryFileSynchronizer has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 150
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 154
    :cond_12
    :try_start_12
    invoke-static {p0}, LVB;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LVG;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 155
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    const-class v1, LVG;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LVG;->a:Z

    if-eqz v0, :cond_12

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_filesyncer_BinaryFileSynchronizer has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 141
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 145
    :cond_12
    :try_start_12
    const-class v0, LVy;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LVG;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LVG;->a:LanD;

    .line 146
    const/4 v0, 0x1

    sput-boolean v0, LVG;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 147
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 135
    const-class v1, LVG;

    monitor-enter v1

    :try_start_3
    sget-object v0, LVG;->a:LanD;

    if-nez v0, :cond_e

    .line 136
    new-instance v0, LVG;

    invoke-direct {v0}, LVG;-><init>()V

    sput-object v0, LVG;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 138
    :cond_e
    monitor-exit v1

    return-void

    .line 135
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LVy;
    .registers 8

    .prologue
    .line 164
    new-instance v0, LVy;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LVB;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llu;

    invoke-static {}, LJc;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LVB;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIL;

    invoke-static {}, LZd;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LVB;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LXP;

    invoke-static {}, LRl;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LVB;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQN;

    invoke-static {}, LZn;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LVB;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LZU;

    invoke-static {}, LVH;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LVB;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LVJ;

    invoke-direct/range {v0 .. v6}, LVy;-><init>(Llu;LIL;LXP;LQN;LZU;LVJ;)V

    .line 196
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, LVG;->a()LVy;

    move-result-object v0

    return-object v0
.end method
