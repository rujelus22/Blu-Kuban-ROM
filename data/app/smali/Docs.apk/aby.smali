.class public Laby;
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
        "Labt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Labt;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Laby;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
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
            "Labt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Laby;->a:LanD;

    if-nez v0, :cond_7

    .line 90
    invoke-static {}, Laby;->b()V

    .line 92
    :cond_7
    sget-object v0, Laby;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 119
    const-class v1, Laby;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Laby;->a:Z

    .line 120
    const/4 v0, 0x0

    sput-object v0, Laby;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 121
    monitor-exit v1

    return-void

    .line 119
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
            "Labt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    const-class v1, Laby;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Laby;->a:Z

    if-eqz v0, :cond_12

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_view_actionbar_ActionBarModule_ActionBarHelperFactoryProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 111
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 115
    :cond_12
    :try_start_12
    invoke-static {p0}, Labu;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Laby;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 116
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 102
    const-class v1, Laby;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Laby;->a:Z

    if-eqz v0, :cond_12

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_view_actionbar_ActionBarModule_ActionBarHelperFactoryProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 102
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 106
    :cond_12
    :try_start_12
    const-class v0, Labt;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Laby;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Laby;->a:LanD;

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Laby;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 108
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 96
    const-class v1, Laby;

    monitor-enter v1

    :try_start_3
    sget-object v0, Laby;->a:LanD;

    if-nez v0, :cond_e

    .line 97
    new-instance v0, Laby;

    invoke-direct {v0}, Laby;-><init>()V

    sput-object v0, Laby;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 99
    :cond_e
    monitor-exit v1

    return-void

    .line 96
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Labt;
    .registers 4

    .prologue
    .line 125
    new-instance v2, Labt;

    invoke-static {}, LIt;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Labu;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, Labz;->a()LanD;

    move-result-object v1

    invoke-static {v1}, Labu;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-direct {v2, v0, v1}, Labt;-><init>(LanD;LanD;)V

    .line 137
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Laby;->a()Labt;

    move-result-object v0

    return-object v0
.end method
