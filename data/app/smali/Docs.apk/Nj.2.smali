.class public LNj;
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
        "LNJ;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LNJ;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    const/4 v0, 0x0

    sput-boolean v0, LNj;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 162
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
            "LNJ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, LNj;->a:LanD;

    if-nez v0, :cond_7

    .line 167
    invoke-static {}, LNj;->b()V

    .line 169
    :cond_7
    sget-object v0, LNj;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 196
    const-class v1, LNj;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LNj;->a:Z

    .line 197
    const/4 v0, 0x0

    sput-object v0, LNj;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 198
    monitor-exit v1

    return-void

    .line 196
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
            "LNJ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    const-class v1, LNj;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LNj;->a:Z

    if-eqz v0, :cond_12

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_punchwebview_PunchWebViewFragment_Listener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 188
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 192
    :cond_12
    :try_start_12
    invoke-static {p0}, LME;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LNj;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 193
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 179
    const-class v1, LNj;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LNj;->a:Z

    if-eqz v0, :cond_12

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_punchwebview_PunchWebViewFragment_Listener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 179
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 183
    :cond_12
    :try_start_12
    const-class v0, LNJ;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LNj;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LNj;->a:LanD;

    .line 184
    const/4 v0, 0x1

    sput-boolean v0, LNj;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 185
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 173
    const-class v1, LNj;

    monitor-enter v1

    :try_start_3
    sget-object v0, LNj;->a:LanD;

    if-nez v0, :cond_e

    .line 174
    new-instance v0, LNj;

    invoke-direct {v0}, LNj;-><init>()V

    sput-object v0, LNj;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 176
    :cond_e
    monitor-exit v1

    return-void

    .line 173
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LNJ;
    .registers 2

    .prologue
    .line 202
    invoke-static {}, LNi;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNJ;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, LNj;->a()LNJ;

    move-result-object v0

    return-object v0
.end method
