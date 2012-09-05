.class public final Lcom/widevine/drm/internal/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/widevine/drm/internal/aa;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/widevine/drmapi/android/WVEventListener;


# direct methods
.method public constructor <init>(Lcom/widevine/drmapi/android/WVEventListener;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/widevine/drm/internal/ab;->a:Z

    iput-boolean v0, p0, Lcom/widevine/drm/internal/ab;->b:Z

    iput v0, p0, Lcom/widevine/drm/internal/ab;->c:I

    iput-object v1, p0, Lcom/widevine/drm/internal/ab;->d:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/widevine/drm/internal/ab;->e:Lcom/widevine/drmapi/android/WVEventListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/widevine/drm/internal/ab;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/widevine/drm/internal/ab;->e:Lcom/widevine/drmapi/android/WVEventListener;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/widevine/drm/internal/aa;)I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/widevine/drm/internal/ab;->a:Z

    if-nez v0, :cond_10

    instance-of v0, p1, Lcom/widevine/drm/internal/m;

    if-nez v0, :cond_10

    instance-of v0, p1, Lcom/widevine/drm/internal/ac;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_48

    if-nez v0, :cond_10

    const/4 v0, -0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/widevine/drm/internal/ab;->b:Z

    if-eqz v0, :cond_16

    const/4 v0, -0x2

    goto :goto_e

    :cond_16
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/widevine/drm/internal/ab;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/widevine/drm/internal/ab;->c:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x0

    iput v0, p0, Lcom/widevine/drm/internal/ab;->c:I

    :cond_2d
    iget-object v0, p0, Lcom/widevine/drm/internal/ab;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/widevine/drm/internal/ab;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    const-string v0, "Overwriting task map entry"

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V

    :cond_40
    iget v0, p0, Lcom/widevine/drm/internal/ab;->c:I

    invoke-virtual {p1, v0}, Lcom/widevine/drm/internal/aa;->a(I)V

    iget v0, p0, Lcom/widevine/drm/internal/ab;->c:I
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_48

    goto :goto_e

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/widevine/drm/internal/ab;->a:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/widevine/drm/internal/ab;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "No task map entry to remove"

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/widevine/drm/internal/ab;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/widevine/drm/internal/ab;->e:Lcom/widevine/drmapi/android/WVEventListener;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/widevine/drm/internal/ab;->a:Z

    return v0
.end method

.method public final declared-synchronized d()Lcom/widevine/drmapi/android/WVEventListener;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/widevine/drm/internal/ab;->e:Lcom/widevine/drmapi/android/WVEventListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
