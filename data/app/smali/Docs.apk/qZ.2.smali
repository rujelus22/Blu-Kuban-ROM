.class public LqZ;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1217
    const/4 v0, 0x0

    sput-boolean v0, LqZ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1215
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
            "Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1219
    sget-object v0, LqZ;->a:LanD;

    if-nez v0, :cond_7

    .line 1220
    invoke-static {}, LqZ;->b()V

    .line 1222
    :cond_7
    sget-object v0, LqZ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1249
    const-class v1, LqZ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LqZ;->a:Z

    .line 1250
    const/4 v0, 0x0

    sput-object v0, LqZ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1251
    monitor-exit v1

    return-void

    .line 1249
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
            "Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1241
    const-class v1, LqZ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqZ;->a:Z

    if-eqz v0, :cond_12

    .line 1242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_LocalFileIntentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1241
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1245
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->aI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LqZ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1246
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1232
    const-class v1, LqZ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqZ;->a:Z

    if-eqz v0, :cond_12

    .line 1233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_LocalFileIntentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1232
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1236
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LqZ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LqZ;->a:LanD;

    .line 1237
    const/4 v0, 0x1

    sput-boolean v0, LqZ;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1238
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1226
    const-class v1, LqZ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LqZ;->a:LanD;

    if-nez v0, :cond_e

    .line 1227
    new-instance v0, LqZ;

    invoke-direct {v0}, LqZ;-><init>()V

    sput-object v0, LqZ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1229
    :cond_e
    monitor-exit v1

    return-void

    .line 1226
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;
    .registers 8

    .prologue
    .line 1255
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->aJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, LRl;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lqi;->aK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQN;

    invoke-static {}, LZd;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lqi;->aL(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LXP;

    invoke-static {}, LdD;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lqi;->aM(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LdE;

    invoke-static {}, LZk;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lqi;->aN(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LZJ;

    invoke-static {}, LqT;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lqi;->aO(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;-><init>(Landroid/content/Context;LQN;LXP;LdE;LZJ;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;)V

    .line 1287
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1215
    invoke-virtual {p0}, LqZ;->a()Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    move-result-object v0

    return-object v0
.end method
