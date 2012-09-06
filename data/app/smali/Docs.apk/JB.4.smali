.class public LJB;
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
        "LJq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LJq;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 172
    const/4 v0, 0x0

    sput-boolean v0, LJB;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 170
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
            "LJq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    sget-object v0, LJB;->a:LanD;

    if-nez v0, :cond_7

    .line 175
    invoke-static {}, LJB;->b()V

    .line 177
    :cond_7
    sget-object v0, LJB;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 204
    const-class v1, LJB;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LJB;->a:Z

    .line 205
    const/4 v0, 0x0

    sput-object v0, LJB;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 206
    monitor-exit v1

    return-void

    .line 204
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
            "LJq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    const-class v1, LJB;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LJB;->a:Z

    if-eqz v0, :cond_12

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_issuers_DefaultHttpIssuer has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 196
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 200
    :cond_12
    :try_start_12
    invoke-static {p0}, LJt;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LJB;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 201
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 187
    const-class v1, LJB;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LJB;->a:Z

    if-eqz v0, :cond_12

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_issuers_DefaultHttpIssuer has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 187
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 191
    :cond_12
    :try_start_12
    const-class v0, LJq;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LJB;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LJB;->a:LanD;

    .line 192
    const/4 v0, 0x1

    sput-boolean v0, LJB;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 193
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 181
    const-class v1, LJB;

    monitor-enter v1

    :try_start_3
    sget-object v0, LJB;->a:LanD;

    if-nez v0, :cond_e

    .line 182
    new-instance v0, LJB;

    invoke-direct {v0}, LJB;-><init>()V

    sput-object v0, LJB;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 184
    :cond_e
    monitor-exit v1

    return-void

    .line 181
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LJq;
    .registers 4

    .prologue
    .line 210
    new-instance v2, LJq;

    invoke-static {}, LJD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LJt;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJP;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v1

    invoke-static {v1}, LJt;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    invoke-direct {v2, v0, v1}, LJq;-><init>(LJP;LanD;)V

    .line 222
    return-object v2
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, LJB;->a()LJq;

    move-result-object v0

    return-object v0
.end method
