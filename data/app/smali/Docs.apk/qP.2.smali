.class public LqP;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 777
    const/4 v0, 0x0

    sput-boolean v0, LqP;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 775
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
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    sget-object v0, LqP;->a:LanD;

    if-nez v0, :cond_7

    .line 780
    invoke-static {}, LqP;->b()V

    .line 782
    :cond_7
    sget-object v0, LqP;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 809
    const-class v1, LqP;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LqP;->a:Z

    .line 810
    const/4 v0, 0x0

    sput-object v0, LqP;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 811
    monitor-exit v1

    return-void

    .line 809
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
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    const-class v1, LqP;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqP;->a:Z

    if-eqz v0, :cond_12

    .line 802
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_DownloadFileDocumentOpenerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 801
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 805
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LqP;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 806
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 792
    const-class v1, LqP;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqP;->a:Z

    if-eqz v0, :cond_12

    .line 793
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_DownloadFileDocumentOpenerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 792
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 796
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LqP;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LqP;->a:LanD;

    .line 797
    const/4 v0, 0x1

    sput-boolean v0, LqP;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 798
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 786
    const-class v1, LqP;

    monitor-enter v1

    :try_start_3
    sget-object v0, LqP;->a:LanD;

    if-nez v0, :cond_e

    .line 787
    new-instance v0, LqP;

    invoke-direct {v0}, LqP;-><init>()V

    sput-object v0, LqP;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 789
    :cond_e
    monitor-exit v1

    return-void

    .line 786
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;
    .registers 9

    .prologue
    .line 815
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, LUV;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lqi;->O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVg;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lqi;->P(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llu;

    invoke-static {}, LdD;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lqi;->Q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LdE;

    invoke-static {}, LSl;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lqi;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LRU;

    invoke-static {}, LqM;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lqi;->S(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LpO;

    invoke-static {}, LRl;->a()LanD;

    move-result-object v7

    invoke-interface {v7}, LanD;->a()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lqi;->T(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LQN;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;-><init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)V

    .line 852
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 775
    invoke-virtual {p0}, LqP;->a()Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    move-result-object v0

    return-object v0
.end method
