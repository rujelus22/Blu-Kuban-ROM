.class public LGB;
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
        "LGb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LGb;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 255
    const/4 v0, 0x0

    sput-boolean v0, LGB;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 253
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
            "LGb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    sget-object v0, LGB;->a:LanD;

    if-nez v0, :cond_7

    .line 258
    invoke-static {}, LGB;->b()V

    .line 260
    :cond_7
    sget-object v0, LGB;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 287
    const-class v1, LGB;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LGB;->a:Z

    .line 288
    const/4 v0, 0x0

    sput-object v0, LGB;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 289
    monitor-exit v1

    return-void

    .line 287
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
            "LGb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    const-class v1, LGB;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LGB;->a:Z

    if-eqz v0, :cond_12

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_flags_ClientFlagDatabaseImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 279
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 283
    :cond_12
    :try_start_12
    invoke-static {p0}, LGn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LGB;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 284
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 270
    const-class v1, LGB;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LGB;->a:Z

    if-eqz v0, :cond_12

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_flags_ClientFlagDatabaseImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 270
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 274
    :cond_12
    :try_start_12
    const-class v0, LGb;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LGB;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LGB;->a:LanD;

    .line 275
    const/4 v0, 0x1

    sput-boolean v0, LGB;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 276
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 264
    const-class v1, LGB;

    monitor-enter v1

    :try_start_3
    sget-object v0, LGB;->a:LanD;

    if-nez v0, :cond_e

    .line 265
    new-instance v0, LGB;

    invoke-direct {v0}, LGB;-><init>()V

    sput-object v0, LGB;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 267
    :cond_e
    monitor-exit v1

    return-void

    .line 264
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LGb;
    .registers 3

    .prologue
    .line 293
    new-instance v1, LGb;

    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LGn;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-direct {v1, v0}, LGb;-><init>(LanD;)V

    .line 300
    return-object v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, LGB;->a()LGb;

    move-result-object v0

    return-object v0
.end method
