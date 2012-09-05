.class public Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;
.source "SocialHubAddAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    }
.end annotation


# instance fields
.field public listItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

.field private mPageType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

    .line 47
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mPageType:I

    .line 303
    return-void
.end method


# virtual methods
.method public onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    .line 169
    const-string v0, "5_SNS"

    invoke-virtual {p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->onChangeAccount()V

    .line 173
    :cond_12
    return-void
.end method

.method public onAccountPageResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v5, 0xa

    const/4 v4, -0x1

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    const-string v0, "SocialHubAddAccountActivity"

    const-string v1, "onActivityResult()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    packed-switch p1, :pswitch_data_64

    .line 162
    :goto_2d
    return-void

    .line 117
    :pswitch_2e
    packed-switch p2, :pswitch_data_6e

    goto :goto_2d

    .line 120
    :pswitch_32
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->setResult(I)V

    .line 129
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mPageType:I

    packed-switch v0, :pswitch_data_76

    .line 139
    :goto_3a
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->finish()V

    goto :goto_2d

    .line 132
    :pswitch_3e
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v1, "5_SNS"

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v0

    if-lez v0, :cond_50

    .line 133
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->setResult(I)V

    goto :goto_3a

    .line 135
    :cond_50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->setResult(I)V

    goto :goto_3a

    .line 143
    :pswitch_55
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->setResult(I)V

    goto :goto_2d

    .line 151
    :pswitch_59
    packed-switch p2, :pswitch_data_7c

    goto :goto_2d

    .line 154
    :pswitch_5d
    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->setResult(I)V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->finish()V

    goto :goto_2d

    .line 114
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_59
        :pswitch_59
    .end packed-switch

    .line 117
    :pswitch_data_6e
    .packed-switch -0x1
        :pswitch_32
        :pswitch_55
    .end packed-switch

    .line 129
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_3e
    .end packed-switch

    .line 151
    :pswitch_data_7c
    .packed-switch -0x1
        :pswitch_5d
    .end packed-switch
.end method

.method public declared-synchronized onChangeAccount()V
    .registers 4

    .prologue
    .line 198
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_47

    if-eqz v1, :cond_18

    .line 202
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mPageType:I

    packed-switch v1, :pswitch_data_74

    .line 228
    :goto_13
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->notifyDataSetChanged()V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_42

    .line 235
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 207
    :pswitch_1a
    :try_start_1a
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "2_Email"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    .line 208
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "5_SNS"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    .line 209
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "4_SevenIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_41} :catch_42

    goto :goto_13

    .line 230
    :catch_42
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_18

    .line 198
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_47
    move-exception v1

    monitor-exit p0

    throw v1

    .line 213
    :pswitch_4a
    :try_start_4a
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "2_Email"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    goto :goto_13

    .line 217
    :pswitch_58
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "5_SNS"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    goto :goto_13

    .line 221
    :pswitch_66
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "4_SevenIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_73} :catch_42

    goto :goto_13

    .line 204
    :pswitch_data_74
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_13
        :pswitch_58
        :pswitch_4a
        :pswitch_66
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->setContentView(I)V

    .line 69
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->setTitle(I)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mPageType:I

    .line 76
    new-instance v0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

    const v1, 0x7f030002

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->onChangeAccount()V

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onDestroy()V

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 247
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->listItemArray:Ljava/util/ArrayList;

    .line 251
    :cond_16
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

    if-eqz v0, :cond_21

    .line 253
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;->onDestroy()V

    .line 254
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->mAdapter:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter;

    .line 256
    :cond_21
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "list"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 90
    const-string v2, "SocialHubAddAccountActivity"

    const-string v3, "onItemClick()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick  postion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;

    .line 92
    .local v0, holder:Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;
    iget-object v2, v0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->mItem:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    iget-object v1, v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 94
    .local v1, page:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;
    if-eqz v1, :cond_30

    .line 96
    iget-object v2, v0, Lcom/sec/android/socialhub/adapter/AddAccountListAdapter$AddAccountViewHolder;->mItem:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    iget v2, v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mIspType:I

    invoke-interface {v1, p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;->showAccount(Landroid/content/Context;I)V

    .line 98
    :cond_30
    return-void
.end method

.method public onRefreshView(Ljava/util/ArrayList;)V
    .registers 6
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
    .line 179
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;>;"
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onRefreshView(Ljava/util/ArrayList;)V

    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;

    .line 183
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;
    const-string v2, "5_SNS"

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;->onChangeAccount()V

    .line 189
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;
    :cond_22
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubBaseListActivity;->onResume()V

    .line 104
    return-void
.end method
