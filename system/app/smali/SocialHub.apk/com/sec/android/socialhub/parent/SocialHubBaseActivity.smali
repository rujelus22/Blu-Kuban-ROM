.class public Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;
.super Landroid/app/Activity;
.source "SocialHubBaseActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;
    }
.end annotation


# instance fields
.field private bIsActive:Z

.field private bIsChanged:Z

.field protected mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCondtion:Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsActive:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsChanged:Z

    .line 21
    iput-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    .line 23
    iput-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 25
    iput-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mCondtion:Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    .line 27
    return-void
.end method

.method private checkDestroy()V
    .registers 6

    .prologue
    .line 67
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mCondtion:Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    if-eqz v2, :cond_37

    .line 69
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mCondtion:Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    iget-object v2, v2, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mAppType:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 71
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    iget-object v3, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mCondtion:Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    iget-object v3, v3, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mAppType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 72
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    if-eqz v0, :cond_2d

    .line 74
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mCondtion:Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    iget v2, v2, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mID:I

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    move-result-object v1

    .line 75
    .local v1, dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    if-nez v1, :cond_2c

    .line 77
    const-string v2, "SocialHubBaseActivity"

    const-string v3, "checkDestroy()"

    const-string v4, "dto is null. so destroy activity."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->finish()V

    .line 91
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    .end local v1           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_2c
    :goto_2c
    return-void

    .line 83
    .restart local v0       #account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    :cond_2d
    const-string v2, "SocialHubBaseActivity"

    const-string v3, "checkDestroy()"

    const-string v4, "account is null!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 89
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    :cond_37
    const-string v2, "SocialHubBaseActivity"

    const-string v3, "checkDestroy()"

    const-string v4, "does not set destroy page."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method


# virtual methods
.method public onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 139
    return-void
.end method

.method public final onChangeAccount(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 153
    const-string v0, "SocialHubBaseActivity"

    const-string v1, "onChangeAccount()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", appType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->getActionType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->checkDestroy()V

    .line 157
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsActive:Z

    if-ne v0, v4, :cond_44

    .line 159
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    .line 169
    :goto_43
    return-void

    .line 163
    :cond_44
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 165
    const/4 v0, 0x1

    :try_start_48
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsChanged:Z

    .line 166
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v1

    goto :goto_43

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_51

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->registerAccountObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->unregisterAccountObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    .line 128
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsActive:Z

    .line 98
    return-void
.end method

.method public onRefreshView(Ljava/util/ArrayList;)V
    .registers 5
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
    .line 148
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;>;"
    const-string v0, "SocialHubBaseActivity"

    const-string v1, "onRefreshView()"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsActive:Z

    .line 105
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsChanged:Z

    if-ne v0, v1, :cond_20

    .line 107
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 109
    :try_start_a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->onRefreshView(Ljava/util/ArrayList;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->bIsChanged:Z

    .line 115
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_24

    .line 117
    :cond_20
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    return-void

    .line 115
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method protected setDestroyPage(Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;)V
    .registers 6
    .parameter "condtion"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mCondtion:Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;

    .line 62
    const-string v0, "SocialHubBaseActivity"

    const-string v1, "setDestroyPage()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mAppType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity$DestroyPageCondition;->mID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
