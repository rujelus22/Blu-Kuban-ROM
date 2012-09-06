.class public LjA;
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
        "Lkc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lkc;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 161
    const/4 v0, 0x0

    sput-boolean v0, LjA;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 159
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
            "Lkc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, LjA;->a:LanD;

    if-nez v0, :cond_7

    .line 164
    invoke-static {}, LjA;->b()V

    .line 166
    :cond_7
    sget-object v0, LjA;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 193
    const-class v1, LjA;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LjA;->a:Z

    .line 194
    const/4 v0, 0x0

    sput-object v0, LjA;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 195
    monitor-exit v1

    return-void

    .line 193
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
            "Lkc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    const-class v1, LjA;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LjA;->a:Z

    if-eqz v0, :cond_12

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_tablet_TabletDocListController has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 185
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 189
    :cond_12
    :try_start_12
    invoke-static {p0}, Ljo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LjA;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 190
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 176
    const-class v1, LjA;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LjA;->a:Z

    if-eqz v0, :cond_12

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_app_tablet_TabletDocListController has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 176
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 180
    :cond_12
    :try_start_12
    const-class v0, Lkc;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LjA;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LjA;->a:LanD;

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, LjA;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 182
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 170
    const-class v1, LjA;

    monitor-enter v1

    :try_start_3
    sget-object v0, LjA;->a:LanD;

    if-nez v0, :cond_e

    .line 171
    new-instance v0, LjA;

    invoke-direct {v0}, LjA;-><init>()V

    sput-object v0, LjA;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 173
    :cond_e
    monitor-exit v1

    return-void

    .line 170
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, LjA;->a()Lkc;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkc;
    .registers 3

    .prologue
    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
