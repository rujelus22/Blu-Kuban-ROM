.class public LqQ;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1117
    const/4 v0, 0x0

    sput-boolean v0, LqQ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1115
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
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1119
    sget-object v0, LqQ;->a:LanD;

    if-nez v0, :cond_7

    .line 1120
    invoke-static {}, LqQ;->b()V

    .line 1122
    :cond_7
    sget-object v0, LqQ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1149
    const-class v1, LqQ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LqQ;->a:Z

    .line 1150
    const/4 v0, 0x0

    sput-object v0, LqQ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1151
    monitor-exit v1

    return-void

    .line 1149
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
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1141
    const-class v1, LqQ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqQ;->a:Z

    if-eqz v0, :cond_12

    .line 1142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_DownloadFileUnknownDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1141
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1145
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->aw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LqQ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1146
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1132
    const-class v1, LqQ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqQ;->a:Z

    if-eqz v0, :cond_12

    .line 1133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_DownloadFileUnknownDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1132
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1136
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LqQ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LqQ;->a:LanD;

    .line 1137
    const/4 v0, 0x1

    sput-boolean v0, LqQ;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1138
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1126
    const-class v1, LqQ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LqQ;->a:LanD;

    if-nez v0, :cond_e

    .line 1127
    new-instance v0, LqQ;

    invoke-direct {v0}, LqQ;-><init>()V

    sput-object v0, LqQ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1129
    :cond_e
    monitor-exit v1

    return-void

    .line 1126
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;
    .registers 13

    .prologue
    .line 1155
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;

    invoke-static {}, Lsm;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->ax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsw;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lqi;->ay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {}, LUV;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lqi;->az(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVg;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lqi;->aA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llu;

    invoke-static {}, LdD;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lqi;->aB(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LdE;

    invoke-static {}, Lrb;->a()LanD;

    move-result-object v6

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lqi;->aC(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrt;

    invoke-static {}, LSl;->a()LanD;

    move-result-object v7

    invoke-interface {v7}, LanD;->a()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lqi;->aD(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LRU;

    invoke-static {}, LqM;->a()LanD;

    move-result-object v8

    invoke-interface {v8}, LanD;->a()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lqi;->aE(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LpO;

    invoke-static {}, LRl;->a()LanD;

    move-result-object v9

    invoke-interface {v9}, LanD;->a()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lqi;->aF(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LQN;

    invoke-static {}, LqT;->a()LanD;

    move-result-object v10

    invoke-interface {v10}, LanD;->a()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lqi;->aG(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    invoke-static {}, LYN;->a()LanD;

    move-result-object v11

    invoke-interface {v11}, LanD;->a()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lqi;->aH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LXh;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;-><init>(Lsw;Landroid/content/Context;LVg;Llu;LdE;Lrt;LRU;LpO;LQN;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LXh;)V

    .line 1212
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1115
    invoke-virtual {p0}, LqQ;->a()Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;

    move-result-object v0

    return-object v0
.end method
