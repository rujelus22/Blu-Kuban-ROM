.class public LiR;
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
        "LiY;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LiY;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 841
    const/4 v0, 0x0

    sput-boolean v0, LiR;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 839
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
            "LiY;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    sget-object v0, LiR;->a:LanD;

    if-nez v0, :cond_7

    .line 844
    invoke-static {}, LiR;->b()V

    .line 846
    :cond_7
    sget-object v0, LiR;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 873
    const-class v1, LiR;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LiR;->a:Z

    .line 874
    const/4 v0, 0x0

    sput-object v0, LiR;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 875
    monitor-exit v1

    return-void

    .line 873
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
            "LiY;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    const-class v1, LiR;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiR;->a:Z

    if-eqz v0, :cond_12

    .line 866
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_ListViewPosition has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 865
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 869
    :cond_12
    :try_start_12
    invoke-static {p0}, Lik;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LiR;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 870
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 856
    const-class v1, LiR;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LiR;->a:Z

    if-eqz v0, :cond_12

    .line 857
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_model_navigation_ListViewPosition has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 856
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 860
    :cond_12
    :try_start_12
    const-class v0, LiY;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LiR;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LiR;->a:LanD;

    .line 861
    const/4 v0, 0x1

    sput-boolean v0, LiR;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 862
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 850
    const-class v1, LiR;

    monitor-enter v1

    :try_start_3
    sget-object v0, LiR;->a:LanD;

    if-nez v0, :cond_e

    .line 851
    new-instance v0, LiR;

    invoke-direct {v0}, LiR;-><init>()V

    sput-object v0, LiR;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 853
    :cond_e
    monitor-exit v1

    return-void

    .line 850
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LiY;
    .registers 3

    .prologue
    .line 879
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 839
    invoke-virtual {p0}, LiR;->a()LiY;

    move-result-object v0

    return-object v0
.end method
