.class public LIt;
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
        "LIA;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LIA;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, LIt;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
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
            "LIA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, LIt;->a:LanD;

    if-nez v0, :cond_7

    .line 81
    invoke-static {}, LIt;->b()V

    .line 83
    :cond_7
    sget-object v0, LIt;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 110
    const-class v1, LIt;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LIt;->a:Z

    .line 111
    const/4 v0, 0x0

    sput-object v0, LIt;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 112
    monitor-exit v1

    return-void

    .line 110
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
            "LIA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    const-class v1, LIt;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LIt;->a:Z

    if-eqz v0, :cond_12

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_honeycomb_HoneycombActionBarHelper_Factory has already been scoped."

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
    invoke-static {p0}, LIm;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LIt;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 107
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    const-class v1, LIt;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LIt;->a:Z

    if-eqz v0, :cond_12

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_honeycomb_HoneycombActionBarHelper_Factory has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 93
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :cond_12
    :try_start_12
    const-class v0, LIA;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LIt;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LIt;->a:LanD;

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, LIt;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 99
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 87
    const-class v1, LIt;

    monitor-enter v1

    :try_start_3
    sget-object v0, LIt;->a:LanD;

    if-nez v0, :cond_e

    .line 88
    new-instance v0, LIt;

    invoke-direct {v0}, LIt;-><init>()V

    sput-object v0, LIt;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 90
    :cond_e
    monitor-exit v1

    return-void

    .line 87
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LIA;
    .registers 4

    .prologue
    .line 116
    new-instance v2, LIA;

    invoke-static {}, Lgx;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LIm;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-static {}, Lgz;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LIm;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LdQ;

    invoke-direct {v2, v0, v1}, LIA;-><init>(LanD;LdQ;)V

    .line 128
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, LIt;->a()LIA;

    move-result-object v0

    return-object v0
.end method
