.class public Lri;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1292
    const/4 v0, 0x0

    sput-boolean v0, Lri;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1290
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
            "Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1294
    sget-object v0, Lri;->a:LanD;

    if-nez v0, :cond_7

    .line 1295
    invoke-static {}, Lri;->b()V

    .line 1297
    :cond_7
    sget-object v0, Lri;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1324
    const-class v1, Lri;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lri;->a:Z

    .line 1325
    const/4 v0, 0x0

    sput-object v0, Lri;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1326
    monitor-exit v1

    return-void

    .line 1324
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
            "Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1316
    const-class v1, Lri;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lri;->a:Z

    if-eqz v0, :cond_12

    .line 1317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_UnknownDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1316
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1320
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->aP(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lri;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1321
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1307
    const-class v1, Lri;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lri;->a:Z

    if-eqz v0, :cond_12

    .line 1308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_UnknownDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1307
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1311
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lri;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lri;->a:LanD;

    .line 1312
    const/4 v0, 0x1

    sput-boolean v0, Lri;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1313
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1301
    const-class v1, Lri;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lri;->a:LanD;

    if-nez v0, :cond_e

    .line 1302
    new-instance v0, Lri;

    invoke-direct {v0}, Lri;-><init>()V

    sput-object v0, Lri;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1304
    :cond_e
    monitor-exit v1

    return-void

    .line 1301
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;
    .registers 4

    .prologue
    .line 1330
    new-instance v2, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;

    invoke-static {}, Lrb;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lqi;->aQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrt;

    invoke-static {}, Lsk;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->aR(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;-><init>(Lrt;Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;)V

    .line 1342
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1290
    invoke-virtual {p0}, Lri;->a()Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;

    move-result-object v0

    return-object v0
.end method
