.class public LUU;
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
        "LSy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LSy;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 784
    const/4 v0, 0x0

    sput-boolean v0, LUU;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 782
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
            "LSy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    sget-object v0, LUU;->a:LanD;

    if-nez v0, :cond_7

    .line 787
    invoke-static {}, LUU;->b()V

    .line 789
    :cond_7
    sget-object v0, LUU;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 816
    const-class v1, LUU;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LUU;->a:Z

    .line 817
    const/4 v0, 0x0

    sput-object v0, LUU;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 818
    monitor-exit v1

    return-void

    .line 816
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
            "LSy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 808
    const-class v1, LUU;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUU;->a:Z

    if-eqz v0, :cond_12

    .line 809
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_GDataParserProducerImpl_GDataParserProducerFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 808
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 812
    :cond_12
    :try_start_12
    invoke-static {p0}, LUb;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LUU;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 813
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 799
    const-class v1, LUU;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LUU;->a:Z

    if-eqz v0, :cond_12

    .line 800
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_sync_syncadapter_GDataParserProducerImpl_GDataParserProducerFactoryImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 799
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 803
    :cond_12
    :try_start_12
    const-class v0, LTZ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LUU;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LUU;->a:LanD;

    .line 804
    const/4 v0, 0x1

    sput-boolean v0, LUU;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 805
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 793
    const-class v1, LUU;

    monitor-enter v1

    :try_start_3
    sget-object v0, LUU;->a:LanD;

    if-nez v0, :cond_e

    .line 794
    new-instance v0, LUU;

    invoke-direct {v0}, LUU;-><init>()V

    sput-object v0, LUU;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 796
    :cond_e
    monitor-exit v1

    return-void

    .line 793
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LTZ;
    .registers 4

    .prologue
    .line 822
    new-instance v2, LTZ;

    invoke-static {}, LSl;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->G(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRU;

    invoke-static {}, LZm;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LUb;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZR;

    invoke-direct {v2, v0, v1}, LTZ;-><init>(LRU;LZR;)V

    .line 834
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 782
    invoke-virtual {p0}, LUU;->a()LTZ;

    move-result-object v0

    return-object v0
.end method
