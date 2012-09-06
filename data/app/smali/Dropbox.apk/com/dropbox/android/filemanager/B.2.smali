.class final Lcom/dropbox/android/filemanager/B;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/U;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/v;

.field private b:I

.field private c:I

.field private final d:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/filemanager/v;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 865
    iput-object p1, p0, Lcom/dropbox/android/filemanager/B;->a:Lcom/dropbox/android/filemanager/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput v0, p0, Lcom/dropbox/android/filemanager/B;->b:I

    .line 873
    iput v0, p0, Lcom/dropbox/android/filemanager/B;->c:I

    .line 936
    new-instance v0, Lcom/dropbox/android/filemanager/C;

    invoke-direct {v0, p0}, Lcom/dropbox/android/filemanager/C;-><init>(Lcom/dropbox/android/filemanager/B;)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/B;->d:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/filemanager/v;Lcom/dropbox/android/filemanager/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/B;-><init>(Lcom/dropbox/android/filemanager/v;)V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 5

    .prologue
    .line 944
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/filemanager/B;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/v;->d(Lcom/dropbox/android/filemanager/v;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/filemanager/B;->d:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 945
    monitor-exit p0

    return-void

    .line 944
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/dropbox/android/taskqueue/G;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 901
    monitor-enter p0

    :try_start_3
    const-class v2, Lcom/dropbox/android/taskqueue/UserImportUploadTask;

    invoke-virtual {p1, v2}, Lcom/dropbox/android/taskqueue/G;->b(Ljava/lang/Class;)I

    move-result v2

    .line 902
    iget v3, p0, Lcom/dropbox/android/filemanager/B;->b:I

    if-eq v2, v3, :cond_55

    .line 904
    iget v3, p0, Lcom/dropbox/android/filemanager/B;->b:I

    if-le v2, v3, :cond_16

    .line 907
    sget-object v3, Lcom/dropbox/android/util/aw;->f:Lcom/dropbox/android/util/aw;

    invoke-static {v3}, Lcom/dropbox/android/service/NotificationService;->a(Lcom/dropbox/android/util/aw;)V

    .line 909
    :cond_16
    iput v2, p0, Lcom/dropbox/android/filemanager/B;->b:I

    .line 910
    iget v2, p0, Lcom/dropbox/android/filemanager/B;->b:I

    if-gtz v2, :cond_57

    .line 911
    :goto_1c
    if-eqz v0, :cond_59

    .line 914
    iget-object v0, p0, Lcom/dropbox/android/filemanager/B;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/v;->c(Lcom/dropbox/android/filemanager/v;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/util/aw;->f:Lcom/dropbox/android/util/aw;

    invoke-static {v0, v1}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 915
    sget-object v0, Lcom/dropbox/android/util/aw;->f:Lcom/dropbox/android/util/aw;

    invoke-static {v0}, Lcom/dropbox/android/service/NotificationService;->a(Lcom/dropbox/android/util/aw;)V

    .line 916
    iget v0, p0, Lcom/dropbox/android/filemanager/B;->c:I

    if-lez v0, :cond_55

    .line 919
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 920
    const-string v1, "ARG_NUM_UPLOADS"

    iget v2, p0, Lcom/dropbox/android/filemanager/B;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 921
    const/4 v1, 0x0

    iput v1, p0, Lcom/dropbox/android/filemanager/B;->c:I

    .line 922
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/B;->c()V

    .line 923
    iget-object v1, p0, Lcom/dropbox/android/filemanager/B;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v1}, Lcom/dropbox/android/filemanager/v;->c(Lcom/dropbox/android/filemanager/v;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dropbox/android/util/aw;->g:Lcom/dropbox/android/util/aw;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z

    .line 924
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/B;->b()V
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_7f

    .line 934
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :cond_57
    move v0, v1

    .line 910
    goto :goto_1c

    .line 928
    :cond_59
    :try_start_59
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 929
    const-string v1, "ARG_NUM_UPLOADS"

    iget v2, p0, Lcom/dropbox/android/filemanager/B;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 930
    iget-object v1, p0, Lcom/dropbox/android/filemanager/B;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v1}, Lcom/dropbox/android/filemanager/v;->c(Lcom/dropbox/android/filemanager/v;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dropbox/android/util/aw;->g:Lcom/dropbox/android/util/aw;

    invoke-static {v1, v2}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 931
    iget-object v1, p0, Lcom/dropbox/android/filemanager/B;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v1}, Lcom/dropbox/android/filemanager/v;->c(Lcom/dropbox/android/filemanager/v;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dropbox/android/util/aw;->f:Lcom/dropbox/android/util/aw;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z
    :try_end_7e
    .catchall {:try_start_59 .. :try_end_7e} :catchall_7f

    goto :goto_55

    .line 901
    :catchall_7f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .registers 3

    .prologue
    .line 948
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/filemanager/B;->a:Lcom/dropbox/android/filemanager/v;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/v;->d(Lcom/dropbox/android/filemanager/v;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/filemanager/B;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 949
    monitor-exit p0

    return-void

    .line 948
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    .prologue
    .line 876
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/dropbox/android/filemanager/B;->b:I

    .line 877
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/filemanager/B;->c:I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 878
    monitor-exit p0

    return-void

    .line 876
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/dropbox/android/taskqueue/G;)V
    .registers 2
    .parameter

    .prologue
    .line 885
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/B;->b(Lcom/dropbox/android/taskqueue/G;)V

    .line 886
    invoke-static {p1}, Lcom/dropbox/android/util/M;->a(Lcom/dropbox/android/taskqueue/G;)V

    .line 887
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/G;Lcom/dropbox/android/taskqueue/k;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 881
    return-void
.end method

.method public final declared-synchronized b(Lcom/dropbox/android/taskqueue/G;Lcom/dropbox/android/taskqueue/k;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 891
    monitor-enter p0

    :try_start_1
    instance-of v0, p2, Lcom/dropbox/android/taskqueue/UserImportUploadTask;

    if-eqz v0, :cond_10

    .line 892
    iget v0, p0, Lcom/dropbox/android/filemanager/B;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/filemanager/B;->c:I

    .line 893
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/B;->b(Lcom/dropbox/android/taskqueue/G;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    .line 898
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 894
    :cond_10
    :try_start_10
    instance-of v0, p2, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    if-eqz v0, :cond_e

    .line 895
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->l()V

    .line 896
    invoke-static {p1}, Lcom/dropbox/android/util/M;->a(Lcom/dropbox/android/taskqueue/G;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1f

    goto :goto_e

    .line 891
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
