.class public LZs;
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
        "Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1042
    const/4 v0, 0x0

    sput-boolean v0, LZs;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1040
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
            "Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    sget-object v0, LZs;->a:LanD;

    if-nez v0, :cond_7

    .line 1045
    invoke-static {}, LZs;->b()V

    .line 1047
    :cond_7
    sget-object v0, LZs;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 1074
    const-class v1, LZs;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZs;->a:Z

    .line 1075
    const/4 v0, 0x0

    sput-object v0, LZs;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 1076
    monitor-exit v1

    return-void

    .line 1074
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
            "Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1066
    const-class v1, LZs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZs;->a:Z

    if-eqz v0, :cond_12

    .line 1067
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_TiledBlurEvaluatorFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1066
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1070
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZs;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 1071
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 1057
    const-class v1, LZs;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZs;->a:Z

    if-eqz v0, :cond_12

    .line 1058
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_TiledBlurEvaluatorFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1057
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1061
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZs;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZs;->a:LanD;

    .line 1062
    const/4 v0, 0x1

    sput-boolean v0, LZs;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 1063
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 1051
    const-class v1, LZs;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZs;->a:LanD;

    if-nez v0, :cond_e

    .line 1052
    new-instance v0, LZs;

    invoke-direct {v0}, LZs;-><init>()V

    sput-object v0, LZs;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1054
    :cond_e
    monitor-exit v1

    return-void

    .line 1051
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;
    .registers 2

    .prologue
    .line 1080
    new-instance v0, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;

    invoke-direct {v0}, Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;-><init>()V

    .line 1082
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1040
    invoke-virtual {p0}, LZs;->a()Lcom/google/android/apps/docs/utils/TiledBlurEvaluatorFactoryImpl;

    move-result-object v0

    return-object v0
.end method
