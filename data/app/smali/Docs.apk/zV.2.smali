.class public LzV;
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
        "LzW;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LzW;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, LzV;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
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
            "LzW;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, LzV;->a:LanD;

    if-nez v0, :cond_7

    .line 80
    invoke-static {}, LzV;->b()V

    .line 82
    :cond_7
    sget-object v0, LzV;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 109
    const-class v1, LzV;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LzV;->a:Z

    .line 110
    const/4 v0, 0x0

    sput-object v0, LzV;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 111
    monitor-exit v1

    return-void

    .line 109
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
            "LzW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    const-class v1, LzV;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LzV;->a:Z

    if-eqz v0, :cond_12

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_imageloader_ImageCache has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 101
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 105
    :cond_12
    :try_start_12
    invoke-static {p0}, LzO;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LzV;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 106
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 92
    const-class v1, LzV;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LzV;->a:Z

    if-eqz v0, :cond_12

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_imageloader_ImageCache has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 92
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 96
    :cond_12
    :try_start_12
    const-class v0, LzW;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LzV;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LzV;->a:LanD;

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, LzV;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 98
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 86
    const-class v1, LzV;

    monitor-enter v1

    :try_start_3
    sget-object v0, LzV;->a:LanD;

    if-nez v0, :cond_e

    .line 87
    new-instance v0, LzV;

    invoke-direct {v0}, LzV;-><init>()V

    sput-object v0, LzV;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 89
    :cond_e
    monitor-exit v1

    return-void

    .line 86
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, LzV;->a()LzW;

    move-result-object v0

    return-object v0
.end method

.method public a()LzW;
    .registers 2

    .prologue
    .line 115
    new-instance v0, LzW;

    invoke-direct {v0}, LzW;-><init>()V

    .line 117
    invoke-static {v0}, LzT;->a(LzW;)V

    .line 119
    return-object v0
.end method
