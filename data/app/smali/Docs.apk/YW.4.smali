.class public LYW;
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
        "LXA;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXA;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 695
    const/4 v0, 0x0

    sput-boolean v0, LYW;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 693
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
            "LXA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    sget-object v0, LYW;->a:LanD;

    if-nez v0, :cond_7

    .line 698
    invoke-static {}, LYW;->b()V

    .line 700
    :cond_7
    sget-object v0, LYW;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 727
    const-class v1, LYW;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LYW;->a:Z

    .line 728
    const/4 v0, 0x0

    sput-object v0, LYW;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 729
    monitor-exit v1

    return-void

    .line 727
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
            "LXA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    const-class v1, LYW;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYW;->a:Z

    if-eqz v0, :cond_12

    .line 720
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_CipherUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 719
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 723
    :cond_12
    :try_start_12
    invoke-static {p0}, LXU;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LYW;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 724
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 710
    const-class v1, LYW;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LYW;->a:Z

    if-eqz v0, :cond_12

    .line 711
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_utils_CipherUtilitiesImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 710
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 714
    :cond_12
    :try_start_12
    const-class v0, LXA;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LYW;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LYW;->a:LanD;

    .line 715
    const/4 v0, 0x1

    sput-boolean v0, LYW;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 716
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 704
    const-class v1, LYW;

    monitor-enter v1

    :try_start_3
    sget-object v0, LYW;->a:LanD;

    if-nez v0, :cond_e

    .line 705
    new-instance v0, LYW;

    invoke-direct {v0}, LYW;-><init>()V

    sput-object v0, LYW;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 707
    :cond_e
    monitor-exit v1

    return-void

    .line 704
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LXA;
    .registers 2

    .prologue
    .line 733
    new-instance v0, LXA;

    invoke-direct {v0}, LXA;-><init>()V

    .line 735
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 693
    invoke-virtual {p0}, LYW;->a()LXA;

    move-result-object v0

    return-object v0
.end method
