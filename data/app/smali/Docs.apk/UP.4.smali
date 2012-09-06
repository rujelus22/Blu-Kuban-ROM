.class public LUP;
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
        "LTP;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTP;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 954
    const/4 v0, 0x0

    sput-boolean v0, LUP;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 952
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
            "LTP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 956
    sget-object v0, LUP;->a:LanD;

    if-nez v0, :cond_7

    .line 957
    invoke-static {}, LUP;->b()V

    .line 959
    :cond_7
    sget-object v0, LUP;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 986
    const-class v1, LUP;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LUP;->a:Z

    .line 987
    const/4 v0, 0x0

    sput-object v0, LUP;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 988
    monitor-exit v1

    return-void

    .line 986
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
            "LTP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 978
    const-class v1, LUP;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUP;->a:Z

    if-eqz v0, :cond_12

    .line 979
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_FeedProcessorDriverHelperImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 978
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 982
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->P(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LUP;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 983
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 969
    const-class v1, LUP;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUP;->a:Z

    if-eqz v0, :cond_12

    .line 970
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_FeedProcessorDriverHelperImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 969
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 973
    :cond_12
    :try_start_12
    const-class v0, LTP;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LUP;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LUP;->a:LanD;

    .line 974
    const/4 v0, 0x1

    sput-boolean v0, LUP;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 975
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 963
    const-class v1, LUP;

    monitor-enter v1

    :try_start_3
    sget-object v0, LUP;->a:LanD;

    if-nez v0, :cond_e

    .line 964
    new-instance v0, LUP;

    invoke-direct {v0}, LUP;-><init>()V

    sput-object v0, LUP;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 966
    :cond_e
    monitor-exit v1

    return-void

    .line 963
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LTP;
    .registers 2

    .prologue
    .line 992
    new-instance v0, LTP;

    invoke-direct {v0}, LTP;-><init>()V

    .line 994
    invoke-static {v0}, LUH;->a(LTP;)V

    .line 996
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 952
    invoke-virtual {p0}, LUP;->a()LTP;

    move-result-object v0

    return-object v0
.end method
