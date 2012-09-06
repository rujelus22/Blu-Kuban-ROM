.class public Lpf;
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
        "LpF;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LpF;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lpf;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 214
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
            "LpF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lpf;->a:LanD;

    if-nez v0, :cond_7

    .line 219
    invoke-static {}, Lpf;->b()V

    .line 221
    :cond_7
    sget-object v0, Lpf;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 248
    const-class v1, Lpf;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lpf;->a:Z

    .line 249
    const/4 v0, 0x0

    sput-object v0, Lpf;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 250
    monitor-exit v1

    return-void

    .line 248
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
            "LpF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    const-class v1, Lpf;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lpf;->a:Z

    if-eqz v0, :cond_12

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_dialogs_SortSelectionDialogFragment_SortSelectionListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 240
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 244
    :cond_12
    :try_start_12
    invoke-static {p0}, LoC;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lpf;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 245
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 231
    const-class v1, Lpf;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lpf;->a:Z

    if-eqz v0, :cond_12

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_doclist_dialogs_SortSelectionDialogFragment_SortSelectionListener has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 231
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 235
    :cond_12
    :try_start_12
    const-class v0, LpF;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lpf;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lpf;->a:LanD;

    .line 236
    const/4 v0, 0x1

    sput-boolean v0, Lpf;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 237
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 225
    const-class v1, Lpf;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lpf;->a:LanD;

    if-nez v0, :cond_e

    .line 226
    new-instance v0, Lpf;

    invoke-direct {v0}, Lpf;-><init>()V

    sput-object v0, Lpf;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 228
    :cond_e
    monitor-exit v1

    return-void

    .line 225
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lpf;->a()LpF;

    move-result-object v0

    return-object v0
.end method

.method public a()LpF;
    .registers 3

    .prologue
    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Provider instance not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
