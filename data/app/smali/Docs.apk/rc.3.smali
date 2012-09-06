.class public Lrc;
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
        "Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 957
    const/4 v0, 0x0

    sput-boolean v0, Lrc;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 955
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
            "Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 959
    sget-object v0, Lrc;->a:LanD;

    if-nez v0, :cond_7

    .line 960
    invoke-static {}, Lrc;->b()V

    .line 962
    :cond_7
    sget-object v0, Lrc;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 989
    const-class v1, Lrc;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lrc;->a:Z

    .line 990
    const/4 v0, 0x0

    sput-object v0, Lrc;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 991
    monitor-exit v1

    return-void

    .line 989
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
            "Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    const-class v1, Lrc;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrc;->a:Z

    if-eqz v0, :cond_12

    .line 982
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_NativeGViewDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 981
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 985
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->ag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lrc;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 986
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 972
    const-class v1, Lrc;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lrc;->a:Z

    if-eqz v0, :cond_12

    .line 973
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_NativeGViewDocumentOpener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 972
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 976
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lrc;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lrc;->a:LanD;

    .line 977
    const/4 v0, 0x1

    sput-boolean v0, Lrc;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 978
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 966
    const-class v1, Lrc;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lrc;->a:LanD;

    if-nez v0, :cond_e

    .line 967
    new-instance v0, Lrc;

    invoke-direct {v0}, Lrc;-><init>()V

    sput-object v0, Lrc;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 969
    :cond_e
    monitor-exit v1

    return-void

    .line 966
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;
    .registers 4

    .prologue
    .line 995
    new-instance v2, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lqi;->ah(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lsk;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lqi;->ai(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;-><init>(Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;)V

    .line 1007
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 955
    invoke-virtual {p0}, Lrc;->a()Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;

    move-result-object v0

    return-object v0
.end method
