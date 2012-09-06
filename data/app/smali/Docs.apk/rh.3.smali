.class public Lrh;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1407
    const/4 v0, 0x0

    sput-boolean v0, Lrh;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1405
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
            "Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1409
    sget-object v0, Lrh;->a:LanD;

    if-nez v0, :cond_7

    .line 1410
    invoke-static {}, Lrh;->b()V

    .line 1412
    :cond_7
    sget-object v0, Lrh;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1439
    const-class v1, Lrh;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lrh;->a:Z

    .line 1440
    const/4 v0, 0x0

    sput-object v0, Lrh;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1441
    monitor-exit v1

    return-void

    .line 1439
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
            "Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1431
    const-class v1, Lrh;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrh;->a:Z

    if-eqz v0, :cond_12

    .line 1432
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_TrixDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1431
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1435
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->aW(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lrh;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1436
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1422
    const-class v1, Lrh;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrh;->a:Z

    if-eqz v0, :cond_12

    .line 1423
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_TrixDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1422
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1426
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lrh;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lrh;->a:LanD;

    .line 1427
    const/4 v0, 0x1

    sput-boolean v0, Lrh;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1428
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1416
    const-class v1, Lrh;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lrh;->a:LanD;

    if-nez v0, :cond_e

    .line 1417
    new-instance v0, Lrh;

    invoke-direct {v0}, Lrh;-><init>()V

    sput-object v0, Lrh;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1419
    :cond_e
    monitor-exit v1

    return-void

    .line 1416
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;
    .registers 5

    .prologue
    .line 1445
    new-instance v3, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lqi;->aX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, LgE;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->aY(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LeZ;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lqi;->aZ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFX;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;-><init>(Landroid/content/Context;LeZ;LFX;)V

    .line 1462
    return-object v3
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1405
    invoke-virtual {p0}, Lrh;->a()Lcom/google/android/apps/docs/doclist/documentopener/TrixDocumentOpener;

    move-result-object v0

    return-object v0
.end method
