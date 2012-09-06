.class public LGD;
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
        "LGg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LGg;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 210
    const/4 v0, 0x0

    sput-boolean v0, LGD;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 208
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
            "LGg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    sget-object v0, LGD;->a:LanD;

    if-nez v0, :cond_7

    .line 213
    invoke-static {}, LGD;->b()V

    .line 215
    :cond_7
    sget-object v0, LGD;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 242
    const-class v1, LGD;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LGD;->a:Z

    .line 243
    const/4 v0, 0x0

    sput-object v0, LGD;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 244
    monitor-exit v1

    return-void

    .line 242
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
            "LGg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    const-class v1, LGD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LGD;->a:Z

    if-eqz v0, :cond_12

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_flags_ClientFlagJsonParserImpl has already been scoped."

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
    invoke-static {p0}, LGn;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LGD;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 239
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 225
    const-class v1, LGD;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LGD;->a:Z

    if-eqz v0, :cond_12

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_flags_ClientFlagJsonParserImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 225
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 229
    :cond_12
    :try_start_12
    const-class v0, LGg;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LGD;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LGD;->a:LanD;

    .line 230
    const/4 v0, 0x1

    sput-boolean v0, LGD;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 231
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 219
    const-class v1, LGD;

    monitor-enter v1

    :try_start_3
    sget-object v0, LGD;->a:LanD;

    if-nez v0, :cond_e

    .line 220
    new-instance v0, LGD;

    invoke-direct {v0}, LGD;-><init>()V

    sput-object v0, LGD;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 222
    :cond_e
    monitor-exit v1

    return-void

    .line 219
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LGg;
    .registers 2

    .prologue
    .line 248
    new-instance v0, LGg;

    invoke-direct {v0}, LGg;-><init>()V

    .line 250
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 208
    invoke-virtual {p0}, LGD;->a()LGg;

    move-result-object v0

    return-object v0
.end method
