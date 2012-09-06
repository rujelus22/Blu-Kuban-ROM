.class public Ljz;
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
        "Lid;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lid;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Ljz;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 116
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
            "Lid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Ljz;->a:LanD;

    if-nez v0, :cond_7

    .line 121
    invoke-static {}, Ljz;->b()V

    .line 123
    :cond_7
    sget-object v0, Ljz;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 150
    const-class v1, Ljz;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Ljz;->a:Z

    .line 151
    const/4 v0, 0x0

    sput-object v0, Ljz;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 152
    monitor-exit v1

    return-void

    .line 150
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
            "Lid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    const-class v1, Ljz;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Ljz;->a:Z

    if-eqz v0, :cond_12

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_tablet_SelectionModeActionMenu_ActionMenuListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 142
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 146
    :cond_12
    :try_start_12
    invoke-static {p0}, Ljo;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Ljz;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 147
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 133
    const-class v1, Ljz;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Ljz;->a:Z

    if-eqz v0, :cond_12

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_tablet_SelectionModeActionMenu_ActionMenuListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 133
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 137
    :cond_12
    :try_start_12
    const-class v0, LjE;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Ljz;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Ljz;->a:LanD;

    .line 138
    const/4 v0, 0x1

    sput-boolean v0, Ljz;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 139
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 127
    const-class v1, Ljz;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljz;->a:LanD;

    if-nez v0, :cond_e

    .line 128
    new-instance v0, Ljz;

    invoke-direct {v0}, Ljz;-><init>()V

    sput-object v0, Ljz;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 130
    :cond_e
    monitor-exit v1

    return-void

    .line 127
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LjE;
    .registers 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0}, Ljz;->a()LjE;

    move-result-object v0

    return-object v0
.end method
