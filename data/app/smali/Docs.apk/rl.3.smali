.class public Lrl;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 402
    const/4 v0, 0x0

    sput-boolean v0, Lrl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 400
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
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Lrl;->a:LanD;

    if-nez v0, :cond_7

    .line 405
    invoke-static {}, Lrl;->b()V

    .line 407
    :cond_7
    sget-object v0, Lrl;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 434
    const-class v1, Lrl;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lrl;->a:Z

    .line 435
    const/4 v0, 0x0

    sput-object v0, Lrl;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 436
    monitor-exit v1

    return-void

    .line 434
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
            "Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    const-class v1, Lrl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrl;->a:Z

    if-eqz v0, :cond_12

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_ZippedTrixDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 426
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 430
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lrl;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 431
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 417
    const-class v1, Lrl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrl;->a:Z

    if-eqz v0, :cond_12

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_ZippedTrixDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 417
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 421
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lrl;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lrl;->a:LanD;

    .line 422
    const/4 v0, 0x1

    sput-boolean v0, Lrl;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 423
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 411
    const-class v1, Lrl;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lrl;->a:LanD;

    if-nez v0, :cond_e

    .line 412
    new-instance v0, Lrl;

    invoke-direct {v0}, Lrl;-><init>()V

    sput-object v0, Lrl;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 414
    :cond_e
    monitor-exit v1

    return-void

    .line 411
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;
    .registers 3

    .prologue
    .line 440
    new-instance v1, Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lqi;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;-><init>(Landroid/content/Context;)V

    .line 447
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lrl;->a()Lcom/google/android/apps/docs/doclist/documentopener/ZippedTrixDocumentOpener;

    move-result-object v0

    return-object v0
.end method
