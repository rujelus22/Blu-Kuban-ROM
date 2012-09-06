.class public Llo;
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
        "LkP;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LkP;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Llo;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 207
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
            "LkP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Llo;->a:LanD;

    if-nez v0, :cond_7

    .line 212
    invoke-static {}, Llo;->b()V

    .line 214
    :cond_7
    sget-object v0, Llo;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 241
    const-class v1, Llo;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Llo;->a:Z

    .line 242
    const/4 v0, 0x0

    sput-object v0, Llo;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 243
    monitor-exit v1

    return-void

    .line 241
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
            "LkP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    const-class v1, Llo;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Llo;->a:Z

    if-eqz v0, :cond_12

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_data_DatabaseModelLoader has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 233
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 237
    :cond_12
    :try_start_12
    invoke-static {p0}, Llg;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Llo;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 238
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 224
    const-class v1, Llo;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Llo;->a:Z

    if-eqz v0, :cond_12

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_data_DatabaseModelLoader has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 224
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 228
    :cond_12
    :try_start_12
    const-class v0, LkP;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Llo;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Llo;->a:LanD;

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Llo;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 230
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 218
    const-class v1, Llo;

    monitor-enter v1

    :try_start_3
    sget-object v0, Llo;->a:LanD;

    if-nez v0, :cond_e

    .line 219
    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    sput-object v0, Llo;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 221
    :cond_e
    monitor-exit v1

    return-void

    .line 218
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 207
    invoke-virtual {p0}, Llo;->a()LkP;

    move-result-object v0

    return-object v0
.end method

.method public a()LkP;
    .registers 3

    .prologue
    .line 247
    new-instance v1, LkP;

    invoke-static {}, LMv;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Llg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb;

    invoke-direct {v1, v0}, LkP;-><init>(LMb;)V

    .line 254
    return-object v1
.end method
