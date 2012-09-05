.class public abstract Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;
.super Landroid/widget/LinearLayout;
.source "UinboxGatewayLayout.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/sec/android/socialhub/parent/ISocialHubListView;
.implements Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;


# instance fields
.field protected mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

.field mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

.field protected mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/ProgressDialog;

.field protected mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

.field protected mReqeuster:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mDialog:Landroid/app/ProgressDialog;

    .line 51
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mDialog:Landroid/app/ProgressDialog;

    .line 51
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mReqeuster:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    .line 76
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 88
    move-object v6, p3

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 91
    .local v6, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    iget-object v8, v8, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    iget v9, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 93
    .local v0, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    const/4 v2, 0x0

    .line 94
    .local v2, email_delete:Landroid/view/MenuItem;
    const/4 v3, 0x0

    .line 95
    .local v3, email_edit:Landroid/view/MenuItem;
    const/4 v7, 0x0

    .line 96
    .local v7, sns_delete:Landroid/view/MenuItem;
    const/4 v4, 0x0

    .line 97
    .local v4, im_delete:Landroid/view/MenuItem;
    const/4 v5, 0x0

    .line 99
    .local v5, im_edit:Landroid/view/MenuItem;
    if-nez v0, :cond_24

    .line 101
    const-string v8, "UinboxGatewayLayout"

    const-string v9, "onItemClick()"

    const-string v10, "account is null!!"

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_23
    :goto_23
    return-void

    .line 105
    :cond_24
    iget-object v8, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-static {v8}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_cc

    .line 137
    :goto_2d
    if-eqz v2, :cond_37

    .line 139
    new-instance v8, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$1;

    invoke-direct {v8, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;)V

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 160
    :cond_37
    if-eqz v3, :cond_41

    .line 162
    new-instance v8, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$2;

    invoke-direct {v8, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$2;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;)V

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 186
    :cond_41
    if-eqz v4, :cond_4b

    .line 188
    new-instance v8, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$3;

    invoke-direct {v8, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$3;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;)V

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 212
    :cond_4b
    if-eqz v5, :cond_55

    .line 214
    new-instance v8, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$4;

    invoke-direct {v8, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$4;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;)V

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 244
    :cond_55
    if-eqz v7, :cond_23

    .line 246
    new-instance v8, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$5;

    invoke-direct {v8, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout$5;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;)V

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_23

    .line 109
    :pswitch_60
    iget-object v8, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    if-eqz v8, :cond_7e

    iget-object v8, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    :goto_66
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 110
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x7f080002

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 111
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const v11, 0x7f080003

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 112
    goto :goto_2d

    .line 109
    :cond_7e
    iget-object v8, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    goto :goto_66

    .line 115
    :pswitch_81
    iget-object v8, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 116
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v11, 0x7f080002

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 117
    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    const v11, 0x7f080003

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    .line 118
    goto :goto_2d

    .line 121
    :pswitch_9b
    iget-object v8, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 123
    iget-object v8, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 125
    .local v1, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v1, :cond_ba

    .line 127
    iget-object v8, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getStringResource(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 130
    :cond_ba
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v11, 0x7f080002

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 131
    goto/16 :goto_2d

    .line 105
    nop

    :pswitch_data_cc
    .packed-switch 0x2
        :pswitch_60
        :pswitch_60
        :pswitch_81
        :pswitch_9b
    .end packed-switch
.end method

.method public onExit()V
    .registers 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    .line 81
    .local v0, mState:Lcom/sec/android/socialhub/state/tab/TabState;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    .line 82
    .local v1, state:Lcom/sec/android/socialhub/state/BaseState;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 83
    return-void
.end method

.method public onMessageApiCalled(III)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "reqOption"

    .prologue
    .line 272
    const-string v0, "UinboxGatewayLayout"

    const-string v1, "onMessageApiCalled()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    packed-switch p2, :pswitch_data_32

    .line 280
    :goto_1d
    return-void

    .line 277
    :pswitch_1e
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f0800eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_1d

    .line 274
    :pswitch_data_32
    .packed-switch 0x11
        :pswitch_1e
    .end packed-switch
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 10
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 285
    const-string v0, "UinboxGatewayLayout"

    const-string v1, "onMessageReponse()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    packed-switch p2, :pswitch_data_2c

    .line 300
    :cond_1d
    :goto_1d
    return-void

    .line 290
    :pswitch_1e
    if-nez p3, :cond_1d

    .line 292
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1d

    .line 297
    :pswitch_26
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1d

    .line 287
    :pswitch_data_2c
    .packed-switch 0x11
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method

.method public removeAccount(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "id"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mReqeuster:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getConnector()Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->removeAccount(Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    return-void
.end method
