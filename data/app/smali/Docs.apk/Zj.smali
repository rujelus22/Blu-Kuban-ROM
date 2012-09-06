.class public LZj;
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
        "LZE;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LZE;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 995
    const/4 v0, 0x0

    sput-boolean v0, LZj;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 993
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
            "LZE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    sget-object v0, LZj;->a:LanD;

    if-nez v0, :cond_7

    .line 998
    invoke-static {}, LZj;->b()V

    .line 1000
    :cond_7
    sget-object v0, LZj;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1027
    const-class v1, LZj;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZj;->a:Z

    .line 1028
    const/4 v0, 0x0

    sput-object v0, LZj;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1029
    monitor-exit v1

    return-void

    .line 1027
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
            "LZE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1019
    const-class v1, LZj;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZj;->a:Z

    if-eqz v0, :cond_12

    .line 1020
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_OcrImageEvaluator has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1019
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1023
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZj;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1024
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1010
    const-class v1, LZj;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZj;->a:Z

    if-eqz v0, :cond_12

    .line 1011
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_OcrImageEvaluator has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1010
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1014
    :cond_12
    :try_start_12
    const-class v0, LZE;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZj;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZj;->a:LanD;

    .line 1015
    const/4 v0, 0x1

    sput-boolean v0, LZj;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1016
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1004
    const-class v1, LZj;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZj;->a:LanD;

    if-nez v0, :cond_e

    .line 1005
    new-instance v0, LZj;

    invoke-direct {v0}, LZj;-><init>()V

    sput-object v0, LZj;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1007
    :cond_e
    monitor-exit v1

    return-void

    .line 1004
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LZE;
    .registers 2

    .prologue
    .line 1033
    new-instance v0, LZE;

    invoke-direct {v0}, LZE;-><init>()V

    .line 1035
    invoke-static {v0}, LYL;->a(LZE;)V

    .line 1037
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 993
    invoke-virtual {p0}, LZj;->a()LZE;

    move-result-object v0

    return-object v0
.end method
