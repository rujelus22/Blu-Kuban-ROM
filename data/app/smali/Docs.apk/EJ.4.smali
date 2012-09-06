.class public LEJ;
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
        "LEK;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LEK;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, LEJ;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
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
            "LEK;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, LEJ;->a:LanD;

    if-nez v0, :cond_7

    .line 35
    invoke-static {}, LEJ;->b()V

    .line 37
    :cond_7
    sget-object v0, LEJ;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 64
    const-class v1, LEJ;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LEJ;->a:Z

    .line 65
    const/4 v0, 0x0

    sput-object v0, LEJ;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 66
    monitor-exit v1

    return-void

    .line 64
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
            "LEK;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    const-class v1, LEJ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LEJ;->a:Z

    if-eqz v0, :cond_12

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_trix_jsvm_TrixJSVM has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 56
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 60
    :cond_12
    :try_start_12
    invoke-static {p0}, LEG;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LEJ;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 61
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 47
    const-class v1, LEJ;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LEJ;->a:Z

    if-eqz v0, :cond_12

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_trix_jsvm_TrixJSVM has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 47
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 51
    :cond_12
    :try_start_12
    const-class v0, LEK;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LEJ;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LEJ;->a:LanD;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, LEJ;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 53
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 41
    const-class v1, LEJ;

    monitor-enter v1

    :try_start_3
    sget-object v0, LEJ;->a:LanD;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, LEJ;

    invoke-direct {v0}, LEJ;-><init>()V

    sput-object v0, LEJ;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 44
    :cond_e
    monitor-exit v1

    return-void

    .line 41
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LEK;
    .registers 7

    .prologue
    .line 70
    new-instance v0, LEK;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-static {v1}, LEG;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-static {}, LJc;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LEG;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIL;

    invoke-static {}, LJD;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LEG;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJP;

    invoke-static {}, LZd;->a()LanD;

    move-result-object v4

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, LEG;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LXP;

    invoke-static {}, LFg;->a()LanD;

    move-result-object v5

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LEG;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LFu;

    invoke-direct/range {v0 .. v5}, LEK;-><init>(LanD;LIL;LJP;LXP;LFu;)V

    .line 97
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, LEJ;->a()LEK;

    move-result-object v0

    return-object v0
.end method
