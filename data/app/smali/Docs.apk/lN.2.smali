.class public LlN;
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
        "Lmn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lmn;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    const/4 v0, 0x0

    sput-boolean v0, LlN;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 120
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
            "Lmn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, LlN;->a:LanD;

    if-nez v0, :cond_7

    .line 125
    invoke-static {}, LlN;->b()V

    .line 127
    :cond_7
    sget-object v0, LlN;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 154
    const-class v1, LlN;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LlN;->a:Z

    .line 155
    const/4 v0, 0x0

    sput-object v0, LlN;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 156
    monitor-exit v1

    return-void

    .line 154
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
            "Lmn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    const-class v1, LlN;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LlN;->a:Z

    if-eqz v0, :cond_12

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_data_operations_OperationQueueNetworkChangeListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 146
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 150
    :cond_12
    :try_start_12
    invoke-static {p0}, LlB;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LlN;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 151
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 137
    const-class v1, LlN;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LlN;->a:Z

    if-eqz v0, :cond_12

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_data_operations_OperationQueueNetworkChangeListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 137
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_12
    :try_start_12
    const-class v0, Lmn;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LlN;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LlN;->a:LanD;

    .line 142
    const/4 v0, 0x1

    sput-boolean v0, LlN;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 143
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 131
    const-class v1, LlN;

    monitor-enter v1

    :try_start_3
    sget-object v0, LlN;->a:LanD;

    if-nez v0, :cond_e

    .line 132
    new-instance v0, LlN;

    invoke-direct {v0}, LlN;-><init>()V

    sput-object v0, LlN;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 134
    :cond_e
    monitor-exit v1

    return-void

    .line 131
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, LlN;->a()Lmn;

    move-result-object v0

    return-object v0
.end method

.method public a()Lmn;
    .registers 6

    .prologue
    .line 160
    new-instance v4, Lmn;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LlB;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LlB;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llu;

    invoke-static {}, LZa;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LlB;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LXJ;

    invoke-static {}, LlL;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LlB;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmi;

    invoke-direct {v4, v0, v1, v2, v3}, Lmn;-><init>(Landroid/content/Context;Llu;LXJ;Lmi;)V

    .line 182
    return-object v4
.end method
