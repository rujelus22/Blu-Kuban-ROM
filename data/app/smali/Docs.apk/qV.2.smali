.class public LqV;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 307
    const/4 v0, 0x0

    sput-boolean v0, LqV;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 305
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
            "Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    sget-object v0, LqV;->a:LanD;

    if-nez v0, :cond_7

    .line 310
    invoke-static {}, LqV;->b()V

    .line 312
    :cond_7
    sget-object v0, LqV;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 339
    const-class v1, LqV;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LqV;->a:Z

    .line 340
    const/4 v0, 0x0

    sput-object v0, LqV;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 341
    monitor-exit v1

    return-void

    .line 339
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
            "Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    const-class v1, LqV;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqV;->a:Z

    if-eqz v0, :cond_12

    .line 332
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_ForcePreventOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 331
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 335
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LqV;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 336
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 322
    const-class v1, LqV;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LqV;->a:Z

    if-eqz v0, :cond_12

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_ForcePreventOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 322
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 326
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LqV;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LqV;->a:LanD;

    .line 327
    const/4 v0, 0x1

    sput-boolean v0, LqV;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 328
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 316
    const-class v1, LqV;

    monitor-enter v1

    :try_start_3
    sget-object v0, LqV;->a:LanD;

    if-nez v0, :cond_e

    .line 317
    new-instance v0, LqV;

    invoke-direct {v0}, LqV;-><init>()V

    sput-object v0, LqV;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 319
    :cond_e
    monitor-exit v1

    return-void

    .line 316
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;
    .registers 2

    .prologue
    .line 345
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;

    invoke-direct {v0}, Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;-><init>()V

    .line 347
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, LqV;->a()Lcom/google/android/apps/docs/doclist/documentopener/ForcePreventOpener;

    move-result-object v0

    return-object v0
.end method
