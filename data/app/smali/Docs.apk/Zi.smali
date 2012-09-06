.class public LZi;
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
        "LZD;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LZD;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 740
    const/4 v0, 0x0

    sput-boolean v0, LZi;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 738
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
            "LZD;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    sget-object v0, LZi;->a:LanD;

    if-nez v0, :cond_7

    .line 743
    invoke-static {}, LZi;->b()V

    .line 745
    :cond_7
    sget-object v0, LZi;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 772
    const-class v1, LZi;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZi;->a:Z

    .line 773
    const/4 v0, 0x0

    sput-object v0, LZi;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 774
    monitor-exit v1

    return-void

    .line 772
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
            "LZD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    const-class v1, LZi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZi;->a:Z

    if-eqz v0, :cond_12

    .line 765
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_NetworkUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 764
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 768
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZi;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 769
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 755
    const-class v1, LZi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZi;->a:Z

    if-eqz v0, :cond_12

    .line 756
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_NetworkUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 755
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 759
    :cond_12
    :try_start_12
    const-class v0, LZD;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZi;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZi;->a:LanD;

    .line 760
    const/4 v0, 0x1

    sput-boolean v0, LZi;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 761
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 749
    const-class v1, LZi;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZi;->a:LanD;

    if-nez v0, :cond_e

    .line 750
    new-instance v0, LZi;

    invoke-direct {v0}, LZi;-><init>()V

    sput-object v0, LZi;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 752
    :cond_e
    monitor-exit v1

    return-void

    .line 749
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LZD;
    .registers 3

    .prologue
    .line 778
    new-instance v1, LZD;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXU;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFX;

    invoke-direct {v1, v0}, LZD;-><init>(LFX;)V

    .line 785
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 738
    invoke-virtual {p0}, LZi;->a()LZD;

    move-result-object v0

    return-object v0
.end method
