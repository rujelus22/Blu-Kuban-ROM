.class public Lre;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1347
    const/4 v0, 0x0

    sput-boolean v0, Lre;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1345
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
            "Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    sget-object v0, Lre;->a:LanD;

    if-nez v0, :cond_7

    .line 1350
    invoke-static {}, Lre;->b()V

    .line 1352
    :cond_7
    sget-object v0, Lre;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1379
    const-class v1, Lre;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lre;->a:Z

    .line 1380
    const/4 v0, 0x0

    sput-object v0, Lre;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1381
    monitor-exit v1

    return-void

    .line 1379
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
            "Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1371
    const-class v1, Lre;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lre;->a:Z

    if-eqz v0, :cond_12

    .line 1372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_PresentationDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1371
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1375
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->aS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lre;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1376
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1362
    const-class v1, Lre;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lre;->a:Z

    if-eqz v0, :cond_12

    .line 1363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_PresentationDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1362
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1366
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lre;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lre;->a:LanD;

    .line 1367
    const/4 v0, 0x1

    sput-boolean v0, Lre;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1368
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1356
    const-class v1, Lre;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lre;->a:LanD;

    if-nez v0, :cond_e

    .line 1357
    new-instance v0, Lre;

    invoke-direct {v0}, Lre;-><init>()V

    sput-object v0, Lre;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1359
    :cond_e
    monitor-exit v1

    return-void

    .line 1356
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;
    .registers 5

    .prologue
    .line 1385
    new-instance v3, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lqi;->aT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->aU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFX;

    invoke-static {}, LgE;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lqi;->aV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LeZ;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;-><init>(Landroid/content/Context;LFX;LeZ;)V

    .line 1402
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1345
    invoke-virtual {p0}, Lre;->a()Lcom/google/android/apps/docs/doclist/documentopener/PresentationDocumentOpener;

    move-result-object v0

    return-object v0
.end method
