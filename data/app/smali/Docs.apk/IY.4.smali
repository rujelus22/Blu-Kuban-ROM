.class public LIY;
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
        "LIE;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LIE;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 219
    const/4 v0, 0x0

    sput-boolean v0, LIY;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 217
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
            "LIE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    sget-object v0, LIY;->a:LanD;

    if-nez v0, :cond_7

    .line 222
    invoke-static {}, LIY;->b()V

    .line 224
    :cond_7
    sget-object v0, LIY;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 251
    const-class v1, LIY;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LIY;->a:Z

    .line 252
    const/4 v0, 0x0

    sput-object v0, LIY;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 253
    monitor-exit v1

    return-void

    .line 251
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
            "LIE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    const-class v1, LIY;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LIY;->a:Z

    if-eqz v0, :cond_12

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_AccountAuthenticatorImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 243
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 247
    :cond_12
    :try_start_12
    invoke-static {p0}, LIN;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LIY;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 248
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 234
    const-class v1, LIY;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LIY;->a:Z

    if-eqz v0, :cond_12

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_http_AccountAuthenticatorImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 234
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 238
    :cond_12
    :try_start_12
    const-class v0, LIE;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LIY;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LIY;->a:LanD;

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, LIY;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 240
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 228
    const-class v1, LIY;

    monitor-enter v1

    :try_start_3
    sget-object v0, LIY;->a:LanD;

    if-nez v0, :cond_e

    .line 229
    new-instance v0, LIY;

    invoke-direct {v0}, LIY;-><init>()V

    sput-object v0, LIY;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 231
    :cond_e
    monitor-exit v1

    return-void

    .line 228
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LIE;
    .registers 3

    .prologue
    .line 257
    new-instance v1, LIE;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LIN;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-direct {v1, v0}, LIE;-><init>(LanD;)V

    .line 264
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 217
    invoke-virtual {p0}, LIY;->a()LIE;

    move-result-object v0

    return-object v0
.end method
