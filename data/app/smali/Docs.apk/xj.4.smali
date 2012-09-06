.class public Lxj;
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
        "Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lxj;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 259
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
            "Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lxj;->a:LanD;

    if-nez v0, :cond_7

    .line 264
    invoke-static {}, Lxj;->b()V

    .line 266
    :cond_7
    sget-object v0, Lxj;->a:LanD;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .registers 2

    .prologue
    .line 293
    const-class v1, Lxj;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lxj;->a:Z

    .line 294
    const/4 v0, 0x0

    sput-object v0, Lxj;->a:LanD;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 295
    monitor-exit v1

    return-void

    .line 293
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
            "Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    const-class v1, Lxj;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxj;->a:Z

    if-eqz v0, :cond_12

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_EditorStatusFragment has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 285
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 289
    :cond_12
    :try_start_12
    invoke-static {p0}, LwU;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Lxj;->a:LanD;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_f

    .line 290
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 276
    const-class v1, Lxj;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lxj;->a:Z

    if-eqz v0, :cond_12

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provider_com_google_android_apps_docs_editors_kix_EditorStatusFragment has already been scoped."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 276
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 280
    :cond_12
    :try_start_12
    const-class v0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-static {}, Lxj;->a()LanD;

    move-result-object v2

    invoke-interface {p0, v0, v2}, LanG;->a(Lant;LanD;)LanD;

    move-result-object v0

    sput-object v0, Lxj;->a:LanD;

    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Lxj;->a:Z
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 282
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized b()V
    .registers 2

    .prologue
    .line 270
    const-class v1, Lxj;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lxj;->a:LanD;

    if-nez v0, :cond_e

    .line 271
    new-instance v0, Lxj;

    invoke-direct {v0}, Lxj;-><init>()V

    sput-object v0, Lxj;->a:LanD;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 273
    :cond_e
    monitor-exit v1

    return-void

    .line 270
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;
    .registers 2

    .prologue
    .line 299
    new-instance v0, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;-><init>()V

    .line 301
    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lxj;->a()Lcom/google/android/apps/docs/editors/kix/EditorStatusFragment;

    move-result-object v0

    return-object v0
.end method
