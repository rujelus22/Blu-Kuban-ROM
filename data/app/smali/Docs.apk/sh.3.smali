.class public Lsh;
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
        "LrO;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LrO;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Lsh;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 206
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
            "LrO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lsh;->a:LanD;

    if-nez v0, :cond_7

    .line 211
    invoke-static {}, Lsh;->b()V

    .line 213
    :cond_7
    sget-object v0, Lsh;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 240
    const-class v1, Lsh;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lsh;->a:Z

    .line 241
    const/4 v0, 0x0

    sput-object v0, Lsh;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 242
    monitor-exit v1

    return-void

    .line 240
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
            "LrO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    const-class v1, Lsh;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lsh;->a:Z

    if-eqz v0, :cond_12

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_driveapp_DriveAppAuthorizerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 232
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 236
    :cond_12
    :try_start_12
    invoke-static {p0}, LrW;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lsh;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 237
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 223
    const-class v1, Lsh;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lsh;->a:Z

    if-eqz v0, :cond_12

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_documentopener_driveapp_DriveAppAuthorizerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 223
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 227
    :cond_12
    :try_start_12
    const-class v0, LrO;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lsh;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lsh;->a:LanD;

    .line 228
    const/4 v0, 0x1

    sput-boolean v0, Lsh;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 229
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 217
    const-class v1, Lsh;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lsh;->a:LanD;

    if-nez v0, :cond_e

    .line 218
    new-instance v0, Lsh;

    invoke-direct {v0}, Lsh;-><init>()V

    sput-object v0, Lsh;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 220
    :cond_e
    monitor-exit v1

    return-void

    .line 217
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lsh;->a()LrO;

    move-result-object v0

    return-object v0
.end method

.method public a()LrO;
    .registers 3

    .prologue
    .line 246
    new-instance v1, LrO;

    invoke-static {}, LSk;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LrW;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRS;

    invoke-direct {v1, v0}, LrO;-><init>(LRS;)V

    .line 253
    return-object v1
.end method
