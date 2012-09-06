.class public LGF;
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
        "LGj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LGj;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 305
    const/4 v0, 0x0

    sput-boolean v0, LGF;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 303
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
            "LGj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, LGF;->a:LanD;

    if-nez v0, :cond_7

    .line 308
    invoke-static {}, LGF;->b()V

    .line 310
    :cond_7
    sget-object v0, LGF;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 337
    const-class v1, LGF;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, LGF;->a:Z

    .line 338
    const/4 v0, 0x0

    sput-object v0, LGF;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 339
    monitor-exit v1

    return-void

    .line 337
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
            "LGj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    const-class v1, LGF;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LGF;->a:Z

    if-eqz v0, :cond_12

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_flags_ClientFlagSynchronizerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 329
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 333
    :cond_12
    :try_start_12
    invoke-static {p0}, LGn;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LGF;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 334
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 320
    const-class v1, LGF;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, LGF;->a:Z

    if-eqz v0, :cond_12

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_flags_ClientFlagSynchronizerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 320
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 324
    :cond_12
    :try_start_12
    const-class v0, LGj;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, LGF;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, LGF;->a:LanD;

    .line 325
    const/4 v0, 0x1

    sput-boolean v0, LGF;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 326
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 314
    const-class v1, LGF;

    monitor-enter v1

    :try_start_3
    sget-object v0, LGF;->a:LanD;

    if-nez v0, :cond_e

    .line 315
    new-instance v0, LGF;

    invoke-direct {v0}, LGF;-><init>()V

    sput-object v0, LGF;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 317
    :cond_e
    monitor-exit v1

    return-void

    .line 314
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()LGj;
    .registers 6

    .prologue
    .line 343
    new-instance v4, LGj;

    invoke-static {}, LJc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LGn;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIL;

    invoke-static {}, LGz;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LGn;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFX;

    invoke-static {}, LGA;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LGn;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFZ;

    invoke-static {}, LGC;->a()LanD;

    move-result-object v3

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LGn;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LGe;

    invoke-direct {v4, v0, v1, v2, v3}, LGj;-><init>(LIL;LFX;LFZ;LGe;)V

    .line 365
    return-object v4
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, LGF;->a()LGj;

    move-result-object v0

    return-object v0
.end method
