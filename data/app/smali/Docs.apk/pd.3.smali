.class public Lpd;
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
        "Loj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Loj;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Loj;

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lpd;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
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
            "Loj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lpd;->a:LanD;

    if-nez v0, :cond_7

    .line 84
    invoke-static {}, Lpd;->b()V

    .line 86
    :cond_7
    sget-object v0, Lpd;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 113
    const-class v1, Lpd;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lpd;->a:Z

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lpd;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 115
    monitor-exit v1

    return-void

    .line 113
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
            "Loj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    const-class v1, Lpd;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lpd;->a:Z

    if-eqz v0, :cond_12

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_dialogs_DialogRegistryFactory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 105
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_12
    :try_start_12
    invoke-static {p0}, LoC;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lpd;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 110
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    const-class v1, Lpd;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lpd;->a:Z

    if-eqz v0, :cond_12

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_dialogs_DialogRegistryFactory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 96
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 100
    :cond_12
    :try_start_12
    const-class v0, Loj;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lpd;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lpd;->a:LanD;

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lpd;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 102
    monitor-exit v1

    return-void
.end method

.method public static a(Loj;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    invoke-static {p0}, LoC;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loj;

    sput-object v0, Lpd;->a:Loj;

    .line 126
    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 90
    const-class v1, Lpd;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lpd;->a:LanD;

    if-nez v0, :cond_e

    .line 91
    new-instance v0, Lpd;

    invoke-direct {v0}, Lpd;-><init>()V

    sput-object v0, Lpd;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 93
    :cond_e
    monitor-exit v1

    return-void

    .line 90
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lpd;->a()Loj;

    move-result-object v0

    return-object v0
.end method

.method public a()Loj;
    .registers 2

    .prologue
    .line 121
    sget-object v0, Lpd;->a:Loj;

    return-object v0
.end method
