.class public Ljy;
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
        "LjD;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LjD;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Ljy;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
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
            "LjD;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Ljy;->a:LanD;

    if-nez v0, :cond_7

    .line 78
    invoke-static {}, Ljy;->b()V

    .line 80
    :cond_7
    sget-object v0, Ljy;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 107
    const-class v1, Ljy;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Ljy;->a:Z

    .line 108
    const/4 v0, 0x0

    sput-object v0, Ljy;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 109
    monitor-exit v1

    return-void

    .line 107
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
            "LjD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    const-class v1, Ljy;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Ljy;->a:Z

    if-eqz v0, :cond_12

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_tablet_SelectionModeActionMenu_ActionMenuHelper has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 99
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 103
    :cond_12
    :try_start_12
    invoke-static {p0}, Ljo;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Ljy;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 104
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 90
    const-class v1, Ljy;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Ljy;->a:Z

    if-eqz v0, :cond_12

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_tablet_SelectionModeActionMenu_ActionMenuHelper has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 90
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 94
    :cond_12
    :try_start_12
    const-class v0, LjD;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Ljy;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Ljy;->a:LanD;

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Ljy;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 96
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 84
    const-class v1, Ljy;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljy;->a:LanD;

    if-nez v0, :cond_e

    .line 85
    new-instance v0, Ljy;

    invoke-direct {v0}, Ljy;-><init>()V

    sput-object v0, Ljy;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 87
    :cond_e
    monitor-exit v1

    return-void

    .line 84
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LjD;
    .registers 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Ljy;->a()LjD;

    move-result-object v0

    return-object v0
.end method
