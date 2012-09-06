.class public Lra;
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
        "Lrs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lrs;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 712
    const/4 v0, 0x0

    sput-boolean v0, Lra;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 710
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
            "Lrs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    sget-object v0, Lra;->a:LanD;

    if-nez v0, :cond_7

    .line 715
    invoke-static {}, Lra;->b()V

    .line 717
    :cond_7
    sget-object v0, Lra;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 744
    const-class v1, Lra;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lra;->a:Z

    .line 745
    const/4 v0, 0x0

    sput-object v0, Lra;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 746
    monitor-exit v1

    return-void

    .line 744
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
            "Lrs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    const-class v1, Lra;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lra;->a:Z

    if-eqz v0, :cond_12

    .line 737
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_LocalOpenerSelector has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 736
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 740
    :cond_12
    :try_start_12
    invoke-static {p0}, Lqi;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lra;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 741
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 727
    const-class v1, Lra;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lra;->a:Z

    if-eqz v0, :cond_12

    .line 728
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_LocalOpenerSelector has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 727
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 731
    :cond_12
    :try_start_12
    const-class v0, Lrs;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lra;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lra;->a:LanD;

    .line 732
    const/4 v0, 0x1

    sput-boolean v0, Lra;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 733
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 721
    const-class v1, Lra;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lra;->a:LanD;

    if-nez v0, :cond_e

    .line 722
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    sput-object v0, Lra;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 724
    :cond_e
    monitor-exit v1

    return-void

    .line 721
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 710
    invoke-virtual {p0}, Lra;->a()Lrs;

    move-result-object v0

    return-object v0
.end method

.method public a()Lrs;
    .registers 6

    .prologue
    .line 750
    new-instance v4, Lrs;

    invoke-static {}, Lri;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lqi;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, LqZ;->a()LanD;

    move-result-object v1

    invoke-static {v1}, Lqi;->J(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-static {}, Lrk;->a()LanD;

    move-result-object v2

    invoke-static {v2}, Lqi;->K(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LanD;

    invoke-static {}, Lrl;->a()LanD;

    move-result-object v3

    invoke-static {v3}, Lqi;->L(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LanD;

    invoke-direct {v4, v0, v1, v2, v3}, Lrs;-><init>(LanD;LanD;LanD;LanD;)V

    .line 772
    return-object v4
.end method
