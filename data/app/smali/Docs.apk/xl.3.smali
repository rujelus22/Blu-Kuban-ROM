.class public Lxl;
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
        "Lxq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lxq;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lxl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
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
            "Lxq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lxl;->a:LanD;

    if-nez v0, :cond_7

    .line 79
    invoke-static {}, Lxl;->b()V

    .line 81
    :cond_7
    sget-object v0, Lxl;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 108
    const-class v1, Lxl;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lxl;->a:Z

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lxl;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 110
    monitor-exit v1

    return-void

    .line 108
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
            "Lxq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    const-class v1, Lxl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxl;->a:Z

    if-eqz v0, :cond_12

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_HashCalculatorImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 100
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 104
    :cond_12
    :try_start_12
    invoke-static {p0}, LwU;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lxl;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 105
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    const-class v1, Lxl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxl;->a:Z

    if-eqz v0, :cond_12

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_HashCalculatorImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 91
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 95
    :cond_12
    :try_start_12
    const-class v0, Lxq;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lxl;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lxl;->a:LanD;

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lxl;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 97
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 85
    const-class v1, Lxl;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lxl;->a:LanD;

    if-nez v0, :cond_e

    .line 86
    new-instance v0, Lxl;

    invoke-direct {v0}, Lxl;-><init>()V

    sput-object v0, Lxl;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 88
    :cond_e
    monitor-exit v1

    return-void

    .line 85
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lxl;->a()Lxq;

    move-result-object v0

    return-object v0
.end method

.method public a()Lxq;
    .registers 2

    .prologue
    .line 114
    new-instance v0, Lxq;

    invoke-direct {v0}, Lxq;-><init>()V

    .line 116
    return-object v0
.end method
