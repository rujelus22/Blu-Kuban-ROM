.class public Lxn;
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
        "Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Lxn;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 304
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
            "Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lxn;->a:LanD;

    if-nez v0, :cond_7

    .line 309
    invoke-static {}, Lxn;->b()V

    .line 311
    :cond_7
    sget-object v0, Lxn;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 338
    const-class v1, Lxn;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lxn;->a:Z

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lxn;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 340
    monitor-exit v1

    return-void

    .line 338
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
            "Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    const-class v1, Lxn;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxn;->a:Z

    if-eqz v0, :cond_12

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_SavedStateFragment has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 330
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 334
    :cond_12
    :try_start_12
    invoke-static {p0}, LwU;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lxn;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 335
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 321
    const-class v1, Lxn;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxn;->a:Z

    if-eqz v0, :cond_12

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_SavedStateFragment has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 321
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 325
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lxn;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lxn;->a:LanD;

    .line 326
    const/4 v0, 0x1

    sput-boolean v0, Lxn;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 327
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 315
    const-class v1, Lxn;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lxn;->a:LanD;

    if-nez v0, :cond_e

    .line 316
    new-instance v0, Lxn;

    invoke-direct {v0}, Lxn;-><init>()V

    sput-object v0, Lxn;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 318
    :cond_e
    monitor-exit v1

    return-void

    .line 315
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;
    .registers 2

    .prologue
    .line 344
    new-instance v0, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;-><init>()V

    .line 346
    invoke-static {v0}, Lxg;->a(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;)V

    .line 348
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lxn;->a()Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    move-result-object v0

    return-object v0
.end method
