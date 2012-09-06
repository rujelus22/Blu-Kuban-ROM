.class public Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;
.super Ljava/lang/Object;
.source "AndroidSetupFlowManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/setup/SetupFlowManager;


# instance fields
.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 2
    .parameter "dependencyResolver"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized clearSetupFlow()V
    .registers 2

    .prologue
    .line 44
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createSetupFlow(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    .registers 4
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/activity/setup/DuplicateSetupFlowException;
        }
    .end annotation

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    if-eqz v0, :cond_e

    .line 28
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/DuplicateSetupFlowException;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/activity/setup/DuplicateSetupFlowException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 27
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30
    :cond_e
    :try_start_e
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_b

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSetupFlow()Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/activity/setup/MissingSetupFlowException;
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    if-nez v0, :cond_e

    .line 37
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/MissingSetupFlowException;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/activity/setup/MissingSetupFlowException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 36
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 39
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_b

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized restoreSetupFlow(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    .registers 5
    .parameter "activity"
    .parameter "savedState"

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    if-nez v1, :cond_11

    .line 50
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;-><init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V

    .line 51
    .local v0, setupHandler:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->restoreStateFromBundle(Landroid/os/Bundle;)V

    .line 52
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;

    .line 54
    .end local v0           #setupHandler:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/AndroidSetupFlowManager;->setupFlow:Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v1

    .line 49
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method
