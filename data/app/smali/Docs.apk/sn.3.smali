.class public Lsn;
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
        "Lsx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lsx;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 308
    const/4 v0, 0x0

    sput-boolean v0, Lsn;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 306
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
            "Lsx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lsn;->a:LanD;

    if-nez v0, :cond_7

    .line 311
    invoke-static {}, Lsn;->b()V

    .line 313
    :cond_7
    sget-object v0, Lsn;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 340
    const-class v1, Lsn;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lsn;->a:Z

    .line 341
    const/4 v0, 0x0

    sput-object v0, Lsn;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 342
    monitor-exit v1

    return-void

    .line 340
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
            "Lsx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    const-class v1, Lsn;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lsn;->a:Z

    if-eqz v0, :cond_12

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_driveapp_ThirdPartyDocumentOpenerImpl_FactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 332
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 336
    :cond_12
    :try_start_12
    invoke-static {p0}, LrW;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lsn;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 337
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 323
    const-class v1, Lsn;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lsn;->a:Z

    if-eqz v0, :cond_12

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_driveapp_ThirdPartyDocumentOpenerImpl_FactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 323
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 327
    :cond_12
    :try_start_12
    const-class v0, Lsx;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lsn;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lsn;->a:LanD;

    .line 328
    const/4 v0, 0x1

    sput-boolean v0, Lsn;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 329
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 317
    const-class v1, Lsn;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lsn;->a:LanD;

    if-nez v0, :cond_e

    .line 318
    new-instance v0, Lsn;

    invoke-direct {v0}, Lsn;-><init>()V

    sput-object v0, Lsn;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 320
    :cond_e
    monitor-exit v1

    return-void

    .line 317
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lsn;->a()Lsx;

    move-result-object v0

    return-object v0
.end method

.method public a()Lsx;
    .registers 7

    .prologue
    .line 346
    new-instance v0, Lsx;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LrW;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, LqT;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LrW;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    invoke-static {}, Lsj;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LrW;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LrR;

    invoke-static {}, Lsg;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LrW;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LrN;

    invoke-static {}, LgE;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LrW;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LeZ;

    invoke-direct/range {v0 .. v5}, Lsx;-><init>(Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LrR;LrN;LeZ;)V

    .line 373
    return-object v0
.end method
