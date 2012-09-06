.class public LZb;
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
        "LXN;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXN;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 790
    const/4 v0, 0x0

    sput-boolean v0, LZb;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 788
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
            "LXN;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    sget-object v0, LZb;->a:LanD;

    if-nez v0, :cond_7

    .line 793
    invoke-static {}, LZb;->b()V

    .line 795
    :cond_7
    sget-object v0, LZb;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 822
    const-class v1, LZb;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LZb;->a:Z

    .line 823
    const/4 v0, 0x0

    sput-object v0, LZb;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 824
    monitor-exit v1

    return-void

    .line 822
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
            "LXN;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    const-class v1, LZb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZb;->a:Z

    if-eqz v0, :cond_12

    .line 815
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_FeedbackReport_Reporter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 814
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 818
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LZb;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 819
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 805
    const-class v1, LZb;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LZb;->a:Z

    if-eqz v0, :cond_12

    .line 806
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_FeedbackReport_Reporter has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 805
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 809
    :cond_12
    :try_start_12
    const-class v0, LXN;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LZb;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LZb;->a:LanD;

    .line 810
    const/4 v0, 0x1

    sput-boolean v0, LZb;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 811
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 799
    const-class v1, LZb;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZb;->a:LanD;

    if-nez v0, :cond_e

    .line 800
    new-instance v0, LZb;

    invoke-direct {v0}, LZb;-><init>()V

    sput-object v0, LZb;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 802
    :cond_e
    monitor-exit v1

    return-void

    .line 799
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXN;
    .registers 2

    .prologue
    .line 828
    new-instance v0, LXN;

    invoke-direct {v0}, LXN;-><init>()V

    .line 830
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 788
    invoke-virtual {p0}, LZb;->a()LXN;

    move-result-object v0

    return-object v0
.end method
