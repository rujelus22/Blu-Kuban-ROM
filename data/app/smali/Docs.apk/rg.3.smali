.class public Lrg;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1467
    const/4 v0, 0x0

    sput-boolean v0, Lrg;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1465
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
            "Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1469
    sget-object v0, Lrg;->a:LanD;

    if-nez v0, :cond_7

    .line 1470
    invoke-static {}, Lrg;->b()V

    .line 1472
    :cond_7
    sget-object v0, Lrg;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1499
    const-class v1, Lrg;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lrg;->a:Z

    .line 1500
    const/4 v0, 0x0

    sput-object v0, Lrg;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1501
    monitor-exit v1

    return-void

    .line 1499
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
            "Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1491
    const-class v1, Lrg;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrg;->a:Z

    if-eqz v0, :cond_12

    .line 1492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_SiteDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1491
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1495
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->ba(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lrg;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1496
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1482
    const-class v1, Lrg;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrg;->a:Z

    if-eqz v0, :cond_12

    .line 1483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_SiteDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1482
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1486
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lrg;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lrg;->a:LanD;

    .line 1487
    const/4 v0, 0x1

    sput-boolean v0, Lrg;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1488
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1476
    const-class v1, Lrg;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lrg;->a:LanD;

    if-nez v0, :cond_e

    .line 1477
    new-instance v0, Lrg;

    invoke-direct {v0}, Lrg;-><init>()V

    sput-object v0, Lrg;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1479
    :cond_e
    monitor-exit v1

    return-void

    .line 1476
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;
    .registers 3

    .prologue
    .line 1505
    new-instance v1, Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lqi;->bb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;-><init>(Landroid/content/Context;)V

    .line 1512
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1465
    invoke-virtual {p0}, Lrg;->a()Lcom/google/android/apps/docs/doclist/documentopener/SiteDocumentOpener;

    move-result-object v0

    return-object v0
.end method
