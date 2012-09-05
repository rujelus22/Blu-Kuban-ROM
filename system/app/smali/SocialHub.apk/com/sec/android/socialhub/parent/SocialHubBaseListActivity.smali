.class public Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;
.super Landroid/app/ListActivity;
.source "SocialHubBaseListActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;


# instance fields
.field private bIsActive:Z

.field private bIsChanged:Z

.field protected mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->bIsActive:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->bIsChanged:Z

    .line 15
    iput-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    .line 17
    iput-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    return-void
.end method


# virtual methods
.method public onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 71
    return-void
.end method

.method public final onChangeAccount(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->bIsActive:Z

    if-ne v0, v1, :cond_9

    .line 87
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    .line 97
    :goto_8
    return-void

    .line 91
    :cond_9
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 93
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->bIsChanged:Z

    .line 94
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v1

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->registerAccountObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->unregisterAccountObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->bIsActive:Z

    .line 33
    return-void
.end method

.method public onRefreshView(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;>;"
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->bIsActive:Z

    .line 40
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->bIsChanged:Z

    if-ne v0, v1, :cond_18

    .line 42
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 44
    :try_start_a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onRefreshView(Ljava/util/ArrayList;)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->bIsChanged:Z

    .line 47
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    .line 49
    :cond_18
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 50
    return-void

    .line 47
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
