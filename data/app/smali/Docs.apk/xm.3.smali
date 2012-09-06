.class public Lxm;
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
        "LxQ;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LxQ;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 176
    const/4 v0, 0x0

    sput-boolean v0, Lxm;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 174
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
            "LxQ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    sget-object v0, Lxm;->a:LanD;

    if-nez v0, :cond_7

    .line 179
    invoke-static {}, Lxm;->b()V

    .line 181
    :cond_7
    sget-object v0, Lxm;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 208
    const-class v1, Lxm;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lxm;->a:Z

    .line 209
    const/4 v0, 0x0

    sput-object v0, Lxm;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 210
    monitor-exit v1

    return-void

    .line 208
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
            "LxQ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    const-class v1, Lxm;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxm;->a:Z

    if-eqz v0, :cond_12

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_KixJSVM has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 200
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 204
    :cond_12
    :try_start_12
    invoke-static {p0}, LwU;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lxm;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 205
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 191
    const-class v1, Lxm;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxm;->a:Z

    if-eqz v0, :cond_12

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_KixJSVM has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 191
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 195
    :cond_12
    :try_start_12
    const-class v0, LxQ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lxm;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lxm;->a:LanD;

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lxm;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 197
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 185
    const-class v1, Lxm;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lxm;->a:LanD;

    if-nez v0, :cond_e

    .line 186
    new-instance v0, Lxm;

    invoke-direct {v0}, Lxm;-><init>()V

    sput-object v0, Lxm;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 188
    :cond_e
    monitor-exit v1

    return-void

    .line 185
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lxm;->a()LxQ;

    move-result-object v0

    return-object v0
.end method

.method public a()LxQ;
    .registers 10

    .prologue
    .line 214
    new-instance v0, LxQ;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-static {v1}, LwU;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-static {}, LJc;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LwU;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIL;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LwU;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LFX;

    invoke-static {}, Lve;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LwU;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvg;

    invoke-static {}, LZd;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LwU;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LXP;

    invoke-static {}, LFg;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LwU;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LFu;

    invoke-static {}, LdD;->a()LanD;

    move-result-object v7

    invoke-interface {v7}, LanD;->a()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, LwU;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LdE;

    invoke-static {}, LJD;->a()LanD;

    move-result-object v8

    invoke-interface {v8}, LanD;->a()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, LwU;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJP;

    invoke-direct/range {v0 .. v8}, LxQ;-><init>(LanD;LIL;LFX;Lvg;LXP;LFu;LdE;LJP;)V

    .line 256
    return-object v0
.end method
