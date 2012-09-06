.class public LUT;
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
        "LTU;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTU;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 904
    const/4 v0, 0x0

    sput-boolean v0, LUT;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 902
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
            "LTU;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    sget-object v0, LUT;->a:LanD;

    if-nez v0, :cond_7

    .line 907
    invoke-static {}, LUT;->b()V

    .line 909
    :cond_7
    sget-object v0, LUT;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 936
    const-class v1, LUT;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LUT;->a:Z

    .line 937
    const/4 v0, 0x0

    sput-object v0, LUT;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 938
    monitor-exit v1

    return-void

    .line 936
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
            "LTU;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 928
    const-class v1, LUT;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUT;->a:Z

    if-eqz v0, :cond_12

    .line 929
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_FeedProcessorFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 928
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 932
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LUT;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 933
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 919
    const-class v1, LUT;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUT;->a:Z

    if-eqz v0, :cond_12

    .line 920
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_FeedProcessorFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 919
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 923
    :cond_12
    :try_start_12
    const-class v0, LTU;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LUT;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LUT;->a:LanD;

    .line 924
    const/4 v0, 0x1

    sput-boolean v0, LUT;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 925
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 913
    const-class v1, LUT;

    monitor-enter v1

    :try_start_3
    sget-object v0, LUT;->a:LanD;

    if-nez v0, :cond_e

    .line 914
    new-instance v0, LUT;

    invoke-direct {v0}, LUT;-><init>()V

    sput-object v0, LUT;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 916
    :cond_e
    monitor-exit v1

    return-void

    .line 913
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LTU;
    .registers 3

    .prologue
    .line 942
    new-instance v1, LTU;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    invoke-direct {v1, v0}, LTU;-><init>(Llu;)V

    .line 949
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 902
    invoke-virtual {p0}, LUT;->a()LTU;

    move-result-object v0

    return-object v0
.end method
