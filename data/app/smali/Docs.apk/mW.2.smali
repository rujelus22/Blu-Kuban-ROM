.class public LmW;
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
        "Lmy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lmy;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, LmW;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
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
            "Lmy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, LmW;->a:LanD;

    if-nez v0, :cond_7

    .line 87
    invoke-static {}, LmW;->b()V

    .line 89
    :cond_7
    sget-object v0, LmW;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 116
    const-class v1, LmW;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LmW;->a:Z

    .line 117
    const/4 v0, 0x0

    sput-object v0, LmW;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 118
    monitor-exit v1

    return-void

    .line 116
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
            "Lmy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    const-class v1, LmW;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LmW;->a:Z

    if-eqz v0, :cond_12

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_discussions_DiscussionModule_DiscussionTrackerLabelProvider has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 108
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 112
    :cond_12
    :try_start_12
    invoke-static {p0}, LmP;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LmW;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 113
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 99
    const-class v1, LmW;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LmW;->a:Z

    if-eqz v0, :cond_12

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_discussions_DiscussionModule_DiscussionTrackerLabelProvider has already been scoped."

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
    const-class v0, Lmy;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LmW;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LmW;->a:LanD;

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, LmW;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 105
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 93
    const-class v1, LmW;

    monitor-enter v1

    :try_start_3
    sget-object v0, LmW;->a:LanD;

    if-nez v0, :cond_e

    .line 94
    new-instance v0, LmW;

    invoke-direct {v0}, LmW;-><init>()V

    sput-object v0, LmW;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 96
    :cond_e
    monitor-exit v1

    return-void

    .line 93
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, LmW;->a()Lmy;

    move-result-object v0

    return-object v0
.end method

.method public a()Lmy;
    .registers 3

    .prologue
    .line 122
    new-instance v1, Lmy;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LmP;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lmy;-><init>(Landroid/content/Context;)V

    .line 129
    return-object v1
.end method
