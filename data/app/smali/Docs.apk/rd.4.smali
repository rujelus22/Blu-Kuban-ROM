.class public Lrd;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 857
    const/4 v0, 0x0

    sput-boolean v0, Lrd;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 855
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
            "Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    sget-object v0, Lrd;->a:LanD;

    if-nez v0, :cond_7

    .line 860
    invoke-static {}, Lrd;->b()V

    .line 862
    :cond_7
    sget-object v0, Lrd;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 889
    const-class v1, Lrd;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lrd;->a:Z

    .line 890
    const/4 v0, 0x0

    sput-object v0, Lrd;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 891
    monitor-exit v1

    return-void

    .line 889
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
            "Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 881
    const-class v1, Lrd;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrd;->a:Z

    if-eqz v0, :cond_12

    .line 882
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_PdfExportDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 881
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 885
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lrd;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 886
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 872
    const-class v1, Lrd;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrd;->a:Z

    if-eqz v0, :cond_12

    .line 873
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_PdfExportDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 872
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 876
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lrd;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lrd;->a:LanD;

    .line 877
    const/4 v0, 0x1

    sput-boolean v0, Lrd;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 878
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 866
    const-class v1, Lrd;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lrd;->a:LanD;

    if-nez v0, :cond_e

    .line 867
    new-instance v0, Lrd;

    invoke-direct {v0}, Lrd;-><init>()V

    sput-object v0, Lrd;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 869
    :cond_e
    monitor-exit v1

    return-void

    .line 866
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;
    .registers 13

    .prologue
    .line 895
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;

    invoke-static {}, Lsm;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsw;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lqi;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {}, LUV;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lqi;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVg;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lqi;->Y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llu;

    invoke-static {}, LdD;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lqi;->Z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LdE;

    invoke-static {}, Lrb;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lqi;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrt;

    invoke-static {}, LSl;->a()LanD;

    move-result-object v7

    invoke-interface {v7}, LanD;->a()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lqi;->ab(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LRU;

    invoke-static {}, LqM;->a()LanD;

    move-result-object v8

    invoke-interface {v8}, LanD;->a()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lqi;->ac(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LpO;

    invoke-static {}, LRl;->a()LanD;

    move-result-object v9

    invoke-interface {v9}, LanD;->a()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lqi;->ad(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LQN;

    invoke-static {}, LqT;->a()LanD;

    move-result-object v10

    invoke-interface {v10}, LanD;->a()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lqi;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    invoke-static {}, LYN;->a()LanD;

    move-result-object v11

    invoke-interface {v11}, LanD;->a()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lqi;->af(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LXh;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;-><init>(Lsw;Landroid/content/Context;LVg;Llu;LdE;Lrt;LRU;LpO;LQN;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LXh;)V

    .line 952
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lrd;->a()Lcom/google/android/apps/docs/doclist/documentopener/PdfExportDocumentOpener;

    move-result-object v0

    return-object v0
.end method
