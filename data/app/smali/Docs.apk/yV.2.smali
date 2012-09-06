.class public LyV;
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
        "LyX;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LyX;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, LyV;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
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
            "LyX;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, LyV;->a:LanD;

    if-nez v0, :cond_7

    .line 95
    invoke-static {}, LyV;->b()V

    .line 97
    :cond_7
    sget-object v0, LyV;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 124
    const-class v1, LyV;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LyV;->a:Z

    .line 125
    const/4 v0, 0x0

    sput-object v0, LyV;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 126
    monitor-exit v1

    return-void

    .line 124
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
            "LyX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    const-class v1, LyV;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LyV;->a:Z

    if-eqz v0, :cond_12

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_childfactories_ParagraphChildFactory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 116
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 120
    :cond_12
    :try_start_12
    invoke-static {p0}, LyR;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LyV;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 121
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    const-class v1, LyV;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LyV;->a:Z

    if-eqz v0, :cond_12

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_childfactories_ParagraphChildFactory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 107
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 111
    :cond_12
    :try_start_12
    const-class v0, LyX;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LyV;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LyV;->a:LanD;

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, LyV;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 113
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 101
    const-class v1, LyV;

    monitor-enter v1

    :try_start_3
    sget-object v0, LyV;->a:LanD;

    if-nez v0, :cond_e

    .line 102
    new-instance v0, LyV;

    invoke-direct {v0}, LyV;-><init>()V

    sput-object v0, LyV;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 104
    :cond_e
    monitor-exit v1

    return-void

    .line 101
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, LyV;->a()LyX;

    move-result-object v0

    return-object v0
.end method

.method public a()LyX;
    .registers 2

    .prologue
    .line 130
    new-instance v0, LyX;

    invoke-direct {v0}, LyX;-><init>()V

    .line 132
    return-object v0
.end method
