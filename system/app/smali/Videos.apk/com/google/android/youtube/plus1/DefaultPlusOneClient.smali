.class public Lcom/google/android/youtube/plus1/DefaultPlusOneClient;
.super Ljava/lang/Object;
.source "DefaultPlusOneClient.java"

# interfaces
.implements Lcom/google/android/youtube/plus1/PlusOneClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    }
.end annotation


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final controllerWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;

.field private final plusOneDeveloperKeySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 7
    .parameter "packageName"
    .parameter "plusOneDeveloperKey"
    .parameter "accountManager"
    .parameter "uiThreadExecutor"
    .parameter "backgroundExecutor"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "packageName cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->packageName:Ljava/lang/String;

    .line 44
    const-string v0, "plusOneDeveliperKey cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "accountManager cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->accountManager:Landroid/accounts/AccountManager;

    .line 47
    const-string v0, "uiThreadExecutor cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->uiThreadExecutor:Ljava/util/concurrent/Executor;

    .line 49
    const-string v0, "backgroundExecutor cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 51
    new-instance v0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$1;-><init>(Lcom/google/android/youtube/plus1/DefaultPlusOneClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->plusOneDeveloperKeySupplier:Lcom/google/common/base/Supplier;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->controllerWrappers:Ljava/util/Map;

    .line 57
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 8
    .parameter "username"

    .prologue
    .line 98
    iget-object v4, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->accountManager:Landroid/accounts/AccountManager;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    .line 99
    .local v2, internalAccount:Landroid/accounts/Account;
    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 103
    .end local v2           #internalAccount:Landroid/accounts/Account;
    :goto_16
    return-object v2

    .line 98
    .restart local v2       #internalAccount:Landroid/accounts/Account;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 103
    .end local v2           #internalAccount:Landroid/accounts/Account;
    :cond_1a
    const/4 v2, 0x0

    goto :goto_16
.end method


# virtual methods
.method public canUserPlusOne(Ljava/lang/String;)Z
    .registers 4
    .parameter "username"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->getControllerWrapper(Ljava/lang/String;)Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    move-result-object v0

    .line 108
    .local v0, controllerWrapper:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->canPlusOne()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method protected createControllerWrapper(Ljava/lang/String;Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    .registers 5
    .parameter "username"
    .parameter "controller"

    .prologue
    .line 94
    new-instance v1, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-direct {v1, p2, v0}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;-><init>(Lcom/google/android/plus1/PlusOneController;Z)V

    return-object v1

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected declared-synchronized getControllerWrapper(Ljava/lang/String;)Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    .registers 10
    .parameter "username"

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, 0x0

    .line 71
    .local v0, account:Landroid/accounts/Account;
    if-eqz p1, :cond_17

    .line 72
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 73
    if-nez v0, :cond_17

    .line 74
    const-string v5, "Account is not / no longer found in AccountManager."

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->controllerWrappers:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_44

    .line 76
    const/4 v3, 0x0

    .line 89
    :cond_15
    :goto_15
    monitor-exit p0

    return-object v3

    .line 79
    :cond_17
    :try_start_17
    iget-object v5, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->controllerWrappers:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    .line 80
    .local v3, controllerWrapper:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    if-nez v3, :cond_15

    .line 81
    new-instance v1, Lcom/google/android/plus1/ApiaryPlusOneApi;

    iget-object v5, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->accountManager:Landroid/accounts/AccountManager;

    iget-object v6, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->plusOneDeveloperKeySupplier:Lcom/google/common/base/Supplier;

    iget-object v7, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->packageName:Ljava/lang/String;

    invoke-direct {v1, v5, v0, v6, v7}, Lcom/google/android/plus1/ApiaryPlusOneApi;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/Supplier;Ljava/lang/String;)V

    .line 83
    .local v1, api:Lcom/google/android/plus1/PlusOneModel;
    new-instance v4, Lcom/google/android/plus1/PlusOneMemoryStore;

    invoke-direct {v4}, Lcom/google/android/plus1/PlusOneMemoryStore;-><init>()V

    .line 84
    .local v4, store:Lcom/google/android/plus1/PlusOneStore;
    new-instance v2, Lcom/google/android/plus1/PlusOneController;

    iget-object v5, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->uiThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/google/android/plus1/PlusOneController;-><init>(Lcom/google/android/plus1/PlusOneModel;Lcom/google/android/plus1/PlusOneStore;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 86
    .local v2, controller:Lcom/google/android/plus1/PlusOneController;
    invoke-virtual {p0, p1, v2}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->createControllerWrapper(Ljava/lang/String;Lcom/google/android/plus1/PlusOneController;)Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    move-result-object v3

    .line 87
    iget-object v5, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->controllerWrappers:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_17 .. :try_end_43} :catchall_44

    goto :goto_15

    .line 70
    .end local v1           #api:Lcom/google/android/plus1/PlusOneModel;
    .end local v2           #controller:Lcom/google/android/plus1/PlusOneController;
    .end local v3           #controllerWrapper:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    .end local v4           #store:Lcom/google/android/plus1/PlusOneStore;
    :catchall_44
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;
    .registers 4
    .parameter "username"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;->getControllerWrapper(Ljava/lang/String;)Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    move-result-object v0

    .line 61
    .local v0, controllerWrapper:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    #getter for: Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->controller:Lcom/google/android/plus1/PlusOneController;
    invoke-static {v0}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->access$000(Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v1

    goto :goto_7
.end method
