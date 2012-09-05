.class public abstract Lcom/sec/android/socialhub/state/MessageBaseState;
.super Lcom/sec/android/socialhub/state/BaseState;
.source "MessageBaseState.java"


# instance fields
.field private list_by:Landroid/view/MenuItem;

.field protected mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/BaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->mMode:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;

    .line 43
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgBaseQeury;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgBaseQeury;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/state/MessageBaseState;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;

    return-object v0
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 12
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/BaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 109
    if-nez p1, :cond_8

    .line 175
    :goto_7
    return-void

    .line 112
    :cond_8
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 114
    iget-object v6, p0, Lcom/sec/android/socialhub/state/BaseState;->mInflater:Landroid/view/MenuInflater;

    const v9, 0x7f0a0007

    invoke-virtual {v6, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/MessageBaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 117
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    const/4 v4, 0x0

    .line 119
    .local v4, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const v6, 0x7f0b0142

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 120
    .local v1, compose_message:Landroid/view/MenuItem;
    const v6, 0x7f0b0145

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 121
    .local v5, view_mode:Landroid/view/MenuItem;
    const v6, 0x7f0b0143

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 123
    .local v2, delete:Landroid/view/MenuItem;
    const v6, 0x7f0b0146

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;

    .line 125
    if-eqz v0, :cond_4c

    const-string v6, "5_SNS"

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 127
    iget-object v6, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v4

    .line 130
    :cond_4c
    if-eqz v4, :cond_69

    .line 134
    const/4 v6, 0x5

    :try_start_4f
    invoke-interface {v4, v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 136
    if-eqz v1, :cond_5b

    .line 137
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    :cond_5b
    const/16 v6, 0x18

    invoke-interface {v4, v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v6

    if-nez v6, :cond_69

    .line 142
    if-eqz v2, :cond_69

    .line 143
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_69
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_4f .. :try_end_69} :catch_b2

    .line 152
    :cond_69
    :goto_69
    if-eqz v0, :cond_91

    const-string v6, "2_Email"

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_89

    const-string v6, "3_SevenEmail"

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_89

    const-string v6, "0_All"

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    :cond_89
    move v6, v8

    :goto_8a
    if-nez v6, :cond_91

    .line 160
    if-eqz v5, :cond_91

    .line 161
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    :cond_91
    sget v6, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    if-ne v6, v8, :cond_c0

    .line 166
    if-eqz v0, :cond_b9

    const-string v6, "2_Email"

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ab

    const-string v6, "3_SevenEmail"

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 167
    :cond_ab
    iget-object v6, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 146
    :catch_b2
    move-exception v3

    .line 148
    .local v3, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_69

    .end local v3           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_b7
    move v6, v7

    .line 152
    goto :goto_8a

    .line 169
    :cond_b9
    iget-object v6, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 173
    :cond_c0
    iget-object v6, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7
.end method

.method public abstract getMode()I
.end method

.method public handleOptionMenu(Landroid/view/MenuItem;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/BaseState;->handleOptionMenu(Landroid/view/MenuItem;)V

    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 185
    packed-switch v0, :pswitch_data_fa

    .line 321
    :cond_b
    :goto_b
    return-void

    .line 193
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 205
    :pswitch_1f
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const v3, 0x7f080089

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/state/MessageBaseState;->showComposeDialog(Lcom/sec/android/socialhub/dialog/AbsListDialog;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto :goto_b

    .line 211
    :pswitch_35
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    if-eqz v0, :cond_b

    .line 213
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getCursorCount()I

    move-result v0

    .line 215
    if-lez v0, :cond_5d

    .line 217
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_b

    .line 219
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getDeleteState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    goto :goto_b

    .line 224
    :cond_5d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 232
    :pswitch_71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    sget v2, Lcom/sec/android/socialhub/messagelist/MessageListView;->mEmailViewMode:I

    new-instance v3, Lcom/sec/android/socialhub/state/MessageBaseState$1;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/state/MessageBaseState$1;-><init>(Lcom/sec/android/socialhub/state/MessageBaseState;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_b

    .line 276
    :pswitch_a3
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_b

    .line 278
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    goto/16 :goto_b

    .line 283
    :pswitch_bc
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 286
    sget v2, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    new-instance v3, Lcom/sec/android/socialhub/state/MessageBaseState$2;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/state/MessageBaseState$2;-><init>(Lcom/sec/android/socialhub/state/MessageBaseState;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_b

    .line 317
    :pswitch_ef
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v0, :cond_b

    .line 318
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->requestRefresh()V

    goto/16 :goto_b

    .line 185
    :pswitch_data_fa
    .packed-switch 0x7f0b0141
        :pswitch_ef
        :pswitch_1f
        :pswitch_35
        :pswitch_a3
        :pswitch_71
        :pswitch_bc
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onBackPressed()V

    .line 96
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onDestroy()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->list_by:Landroid/view/MenuItem;

    .line 90
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onPause()V

    .line 58
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onRefresh()V

    .line 52
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 63
    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v1

    .line 64
    .local v1, manager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
    if-eqz v1, :cond_20

    .line 66
    const-string v3, "1_Messaging"

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v2

    .line 68
    .local v2, message:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccountCount()I

    move-result v0

    .line 70
    .local v0, iAccountCount:I
    if-nez v2, :cond_20

    if-nez v0, :cond_20

    .line 72
    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v3, :cond_20

    .line 74
    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v3, p0}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestNoAccountPage(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 81
    .end local v0           #iAccountCount:I
    .end local v2           #message:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    :goto_1f
    return-void

    .line 80
    :cond_20
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onResume()V

    goto :goto_1f
.end method

.method public saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 2
    .parameter "accounts"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/BaseState;->saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 102
    return-void
.end method

.method public showComposeDialog(Lcom/sec/android/socialhub/dialog/AbsListDialog;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 8
    .parameter "dialog"
    .parameter "account"

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/state/BaseState;->showComposeDialog(Lcom/sec/android/socialhub/dialog/AbsListDialog;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 329
    if-eqz p2, :cond_f

    const-string v1, "0_All"

    iget-object v2, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 331
    :cond_f
    invoke-virtual {p1}, Lcom/sec/android/socialhub/dialog/AbsListDialog;->showDialog()V

    .line 347
    .end local p1
    :cond_12
    :goto_12
    return-void

    .line 335
    .restart local p1
    :cond_13
    instance-of v1, p1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;

    if-eqz v1, :cond_12

    .line 339
    :try_start_17
    check-cast p1, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;

    .end local p1
    iget-object v1, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    iget-object v2, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    iget-object v3, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->startAppCompose(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_12

    .line 341
    :catch_2d
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method
