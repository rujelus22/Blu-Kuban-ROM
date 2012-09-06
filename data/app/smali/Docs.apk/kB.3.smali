.class public LkB;
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
        "Lkk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lkk;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 180
    const/4 v0, 0x0

    sput-boolean v0, LkB;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 178
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
            "Lkk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, LkB;->a:LanD;

    if-nez v0, :cond_7

    .line 183
    invoke-static {}, LkB;->b()V

    .line 185
    :cond_7
    sget-object v0, LkB;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 212
    const-class v1, LkB;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LkB;->a:Z

    .line 213
    const/4 v0, 0x0

    sput-object v0, LkB;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 214
    monitor-exit v1

    return-void

    .line 212
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
            "Lkk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    const-class v1, LkB;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LkB;->a:Z

    if-eqz v0, :cond_12

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_appmanifests_AppCacheFetcherImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 204
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 208
    :cond_12
    :try_start_12
    invoke-static {p0}, Lku;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LkB;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 209
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 195
    const-class v1, LkB;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LkB;->a:Z

    if-eqz v0, :cond_12

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_appmanifests_AppCacheFetcherImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 195
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 199
    :cond_12
    :try_start_12
    const-class v0, Lkk;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LkB;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LkB;->a:LanD;

    .line 200
    const/4 v0, 0x1

    sput-boolean v0, LkB;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 201
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 189
    const-class v1, LkB;

    monitor-enter v1

    :try_start_3
    sget-object v0, LkB;->a:LanD;

    if-nez v0, :cond_e

    .line 190
    new-instance v0, LkB;

    invoke-direct {v0}, LkB;-><init>()V

    sput-object v0, LkB;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 192
    :cond_e
    monitor-exit v1

    return-void

    .line 189
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, LkB;->a()Lkk;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkk;
    .registers 6

    .prologue
    .line 218
    new-instance v4, Lkk;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lku;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    invoke-static {}, LJc;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lku;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIL;

    invoke-static {}, LZd;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lku;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LXP;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v3

    invoke-static {v3}, Lku;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LanD;

    invoke-direct {v4, v0, v1, v2, v3}, Lkk;-><init>(Llu;LIL;LXP;LanD;)V

    .line 240
    return-object v4
.end method
