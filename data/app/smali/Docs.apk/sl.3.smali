.class public Lsl;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 378
    const/4 v0, 0x0

    sput-boolean v0, Lsl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 376
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
            "Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    sget-object v0, Lsl;->a:LanD;

    if-nez v0, :cond_7

    .line 381
    invoke-static {}, Lsl;->b()V

    .line 383
    :cond_7
    sget-object v0, Lsl;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 410
    const-class v1, Lsl;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lsl;->a:Z

    .line 411
    const/4 v0, 0x0

    sput-object v0, Lsl;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 412
    monitor-exit v1

    return-void

    .line 410
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
            "Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    const-class v1, Lsl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lsl;->a:Z

    if-eqz v0, :cond_12

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_driveapp_ThirdPartyDocumentOpenerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 402
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 406
    :cond_12
    :try_start_12
    invoke-static {p0}, LrW;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lsl;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 407
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 393
    const-class v1, Lsl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lsl;->a:Z

    if-eqz v0, :cond_12

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_driveapp_ThirdPartyDocumentOpenerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 393
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 397
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lsl;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lsl;->a:LanD;

    .line 398
    const/4 v0, 0x1

    sput-boolean v0, Lsl;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 399
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 387
    const-class v1, Lsl;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lsl;->a:LanD;

    if-nez v0, :cond_e

    .line 388
    new-instance v0, Lsl;

    invoke-direct {v0}, Lsl;-><init>()V

    sput-object v0, Lsl;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 390
    :cond_e
    monitor-exit v1

    return-void

    .line 387
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;
    .registers 8

    .prologue
    .line 416
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LrW;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, LqT;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LrW;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    invoke-static {}, Lsj;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LrW;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LrR;

    invoke-static {}, Lsg;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LrW;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LrN;

    invoke-static {}, LgE;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LrW;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LeZ;

    invoke-static {}, LqO;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LrW;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;-><init>(Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LrR;LrN;LeZ;Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)V

    .line 448
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lsl;->a()Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    move-result-object v0

    return-object v0
.end method
