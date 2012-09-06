.class public LZe;
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
        "LXQ;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXQ;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 950
    const/4 v0, 0x0

    sput-boolean v0, LZe;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 948
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
            "LXQ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 952
    sget-object v0, LZe;->a:LanD;

    if-nez v0, :cond_7

    .line 953
    invoke-static {}, LZe;->b()V

    .line 955
    :cond_7
    sget-object v0, LZe;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 982
    const-class v1, LZe;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZe;->a:Z

    .line 983
    const/4 v0, 0x0

    sput-object v0, LZe;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 984
    monitor-exit v1

    return-void

    .line 982
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
            "LXQ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    const-class v1, LZe;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZe;->a:Z

    if-eqz v0, :cond_12

    .line 975
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_FileUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 974
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 978
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZe;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 979
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 965
    const-class v1, LZe;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZe;->a:Z

    if-eqz v0, :cond_12

    .line 966
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_FileUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 965
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 969
    :cond_12
    :try_start_12
    const-class v0, LXQ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZe;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZe;->a:LanD;

    .line 970
    const/4 v0, 0x1

    sput-boolean v0, LZe;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 971
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 959
    const-class v1, LZe;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZe;->a:LanD;

    if-nez v0, :cond_e

    .line 960
    new-instance v0, LZe;

    invoke-direct {v0}, LZe;-><init>()V

    sput-object v0, LZe;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 962
    :cond_e
    monitor-exit v1

    return-void

    .line 959
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXQ;
    .registers 2

    .prologue
    .line 988
    new-instance v0, LXQ;

    invoke-direct {v0}, LXQ;-><init>()V

    .line 990
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 948
    invoke-virtual {p0}, LZe;->a()LXQ;

    move-result-object v0

    return-object v0
.end method
