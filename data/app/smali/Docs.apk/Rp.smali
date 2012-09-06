.class public LRp;
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
        "LRa;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LRa;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 195
    const/4 v0, 0x0

    sput-boolean v0, LRp;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 193
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
            "LRa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, LRp;->a:LanD;

    if-nez v0, :cond_7

    .line 198
    invoke-static {}, LRp;->b()V

    .line 200
    :cond_7
    sget-object v0, LRp;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 227
    const-class v1, LRp;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LRp;->a:Z

    .line 228
    const/4 v0, 0x0

    sput-object v0, LRp;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 229
    monitor-exit v1

    return-void

    .line 227
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
            "LRa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    const-class v1, LRp;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LRp;->a:Z

    if-eqz v0, :cond_12

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_filemanager_FileInstanceHelperImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 219
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 223
    :cond_12
    :try_start_12
    invoke-static {p0}, LRe;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LRp;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 224
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 210
    const-class v1, LRp;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LRp;->a:Z

    if-eqz v0, :cond_12

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_filemanager_FileInstanceHelperImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 210
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 214
    :cond_12
    :try_start_12
    const-class v0, LRa;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LRp;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LRp;->a:LanD;

    .line 215
    const/4 v0, 0x1

    sput-boolean v0, LRp;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 216
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 204
    const-class v1, LRp;

    monitor-enter v1

    :try_start_3
    sget-object v0, LRp;->a:LanD;

    if-nez v0, :cond_e

    .line 205
    new-instance v0, LRp;

    invoke-direct {v0}, LRp;-><init>()V

    sput-object v0, LRp;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 207
    :cond_e
    monitor-exit v1

    return-void

    .line 204
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LRa;
    .registers 5

    .prologue
    .line 233
    new-instance v3, LRa;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LRe;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    invoke-static {}, LZk;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LRe;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZJ;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v2

    invoke-static {v2}, LRe;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LanD;

    invoke-direct {v3, v0, v1, v2}, LRa;-><init>(Llu;LZJ;LanD;)V

    .line 250
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, LRp;->a()LRa;

    move-result-object v0

    return-object v0
.end method
