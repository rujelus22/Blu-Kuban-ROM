.class public Llt;
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
        "Llw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Llw;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 259
    const/4 v0, 0x0

    sput-boolean v0, Llt;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 257
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
            "Llw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Llt;->a:LanD;

    if-nez v0, :cond_7

    .line 262
    invoke-static {}, Llt;->b()V

    .line 264
    :cond_7
    sget-object v0, Llt;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 291
    const-class v1, Llt;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Llt;->a:Z

    .line 292
    const/4 v0, 0x0

    sput-object v0, Llt;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 293
    monitor-exit v1

    return-void

    .line 291
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
            "Llw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    const-class v1, Llt;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Llt;->a:Z

    if-eqz v0, :cond_12

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_data_ObsoleteDataCleanerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 283
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 287
    :cond_12
    :try_start_12
    invoke-static {p0}, Llg;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Llt;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 288
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 274
    const-class v1, Llt;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Llt;->a:Z

    if-eqz v0, :cond_12

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_data_ObsoleteDataCleanerImpl has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 274
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 278
    :cond_12
    :try_start_12
    const-class v0, Llw;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Llt;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Llt;->a:LanD;

    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Llt;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 280
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 268
    const-class v1, Llt;

    monitor-enter v1

    :try_start_3
    sget-object v0, Llt;->a:LanD;

    if-nez v0, :cond_e

    .line 269
    new-instance v0, Llt;

    invoke-direct {v0}, Llt;-><init>()V

    sput-object v0, Llt;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 271
    :cond_e
    monitor-exit v1

    return-void

    .line 268
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Llt;->a()Llw;

    move-result-object v0

    return-object v0
.end method

.method public a()Llw;
    .registers 5

    .prologue
    .line 297
    new-instance v3, Llw;

    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Llg;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    invoke-static {}, LIf;->a()LanD;

    move-result-object v1

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Llg;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LHW;

    invoke-static {}, Ldo;->a()LanD;

    move-result-object v2

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Llg;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldg;

    invoke-direct {v3, v0, v1, v2}, Llw;-><init>(Llu;LHW;Ldg;)V

    .line 314
    return-object v3
.end method
