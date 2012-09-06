.class public LqR;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 512
    const/4 v0, 0x0

    sput-boolean v0, LqR;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 510
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
            "Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    sget-object v0, LqR;->a:LanD;

    if-nez v0, :cond_7

    .line 515
    invoke-static {}, LqR;->b()V

    .line 517
    :cond_7
    sget-object v0, LqR;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 544
    const-class v1, LqR;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LqR;->a:Z

    .line 545
    const/4 v0, 0x0

    sput-object v0, LqR;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 546
    monitor-exit v1

    return-void

    .line 544
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
            "Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    const-class v1, LqR;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqR;->a:Z

    if-eqz v0, :cond_12

    .line 537
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_DrawingDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 536
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 540
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LqR;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 541
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 527
    const-class v1, LqR;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqR;->a:Z

    if-eqz v0, :cond_12

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_DrawingDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 527
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 531
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LqR;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LqR;->a:LanD;

    .line 532
    const/4 v0, 0x1

    sput-boolean v0, LqR;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 533
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 521
    const-class v1, LqR;

    monitor-enter v1

    :try_start_3
    sget-object v0, LqR;->a:LanD;

    if-nez v0, :cond_e

    .line 522
    new-instance v0, LqR;

    invoke-direct {v0}, LqR;-><init>()V

    sput-object v0, LqR;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 524
    :cond_e
    monitor-exit v1

    return-void

    .line 521
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;
    .registers 12

    .prologue
    .line 550
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;

    invoke-static {}, Lsm;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsw;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lqi;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {}, LUV;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lqi;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVg;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lqi;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llu;

    invoke-static {}, LdD;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lqi;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LdE;

    invoke-static {}, Lrb;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lqi;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrt;

    invoke-static {}, LSl;->a()LanD;

    move-result-object v7

    invoke-interface {v7}, LanD;->a()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lqi;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LRU;

    invoke-static {}, LqM;->a()LanD;

    move-result-object v8

    invoke-interface {v8}, LanD;->a()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lqi;->z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LpO;

    invoke-static {}, LRl;->a()LanD;

    move-result-object v9

    invoke-interface {v9}, LanD;->a()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lqi;->A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LQN;

    invoke-static {}, LqT;->a()LanD;

    move-result-object v10

    invoke-interface {v10}, LanD;->a()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lqi;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;-><init>(Lsw;Landroid/content/Context;LVg;Llu;LdE;Lrt;LRU;LpO;LQN;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;)V

    .line 602
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 510
    invoke-virtual {p0}, LqR;->a()Lcom/google/android/apps/docs/doclist/documentopener/DrawingDocumentOpener;

    move-result-object v0

    return-object v0
.end method
