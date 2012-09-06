.class public Lxi;
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
        "LwG;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LwG;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lxi;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 119
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
            "LwG;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lxi;->a:LanD;

    if-nez v0, :cond_7

    .line 124
    invoke-static {}, Lxi;->b()V

    .line 126
    :cond_7
    sget-object v0, Lxi;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 153
    const-class v1, Lxi;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lxi;->a:Z

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lxi;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 155
    monitor-exit v1

    return-void

    .line 153
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
            "LwG;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    const-class v1, Lxi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxi;->a:Z

    if-eqz v0, :cond_12

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_ConnectivityChangeListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 145
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 149
    :cond_12
    :try_start_12
    invoke-static {p0}, LwU;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lxi;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 150
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 136
    const-class v1, Lxi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxi;->a:Z

    if-eqz v0, :cond_12

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_ConnectivityChangeListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 136
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 140
    :cond_12
    :try_start_12
    const-class v0, LwG;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lxi;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lxi;->a:LanD;

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lxi;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 142
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 130
    const-class v1, Lxi;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lxi;->a:LanD;

    if-nez v0, :cond_e

    .line 131
    new-instance v0, Lxi;

    invoke-direct {v0}, Lxi;-><init>()V

    sput-object v0, Lxi;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 133
    :cond_e
    monitor-exit v1

    return-void

    .line 130
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lxi;->a()LwG;

    move-result-object v0

    return-object v0
.end method

.method public a()LwG;
    .registers 4

    .prologue
    .line 159
    new-instance v2, LwG;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LwU;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFX;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-static {v1}, LwU;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-direct {v2, v0, v1}, LwG;-><init>(LFX;LanD;)V

    .line 171
    return-object v2
.end method
