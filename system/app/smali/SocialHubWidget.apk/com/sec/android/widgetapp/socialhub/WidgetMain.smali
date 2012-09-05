.class public Lcom/sec/android/widgetapp/socialhub/WidgetMain;
.super Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;
.source "WidgetMain.java"


# instance fields
.field private mAdapter:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;

.field private mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

.field private mRootView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountOfSNSAccount()I
    .registers 9

    .prologue
    .line 54
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 55
    .local v2, mAccountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 56
    .local v3, mAccounts:[Landroid/accounts/Account;
    const/4 v0, 0x0

    .line 58
    .local v0, accountCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v4, v3

    if-ge v1, v4, :cond_24

    .line 60
    aget-object v4, v3, v1

    if-eqz v4, :cond_21

    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.sec.android.app.snsaccount"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 63
    :cond_24
    const-string v4, "WidgetMain"

    const-string v5, "getCountOfSNSAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count of SNS account = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    const-string v0, "WidgetMain"

    const-string v1, "onActivityResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    packed-switch p1, :pswitch_data_4a

    .line 143
    :goto_2b
    return-void

    .line 119
    :pswitch_2c
    packed-switch p2, :pswitch_data_52

    goto :goto_2b

    .line 122
    :pswitch_30
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setLoading(Z)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mServiceConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestActivityRetrieve()I

    goto :goto_2b

    .line 131
    :pswitch_3b
    packed-switch p2, :pswitch_data_58

    goto :goto_2b

    .line 134
    :pswitch_3f
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setLoading(Z)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mServiceConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestActivityRetrieve()I

    goto :goto_2b

    .line 116
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_3b
    .end packed-switch

    .line 119
    :pswitch_data_52
    .packed-switch -0x1
        :pswitch_30
    .end packed-switch

    .line 131
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 36
    invoke-super {p0, p1}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mRootView:Landroid/widget/FrameLayout;

    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mRootView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 44
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f030003

    invoke-direct {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mAdapter:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;

    .line 45
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mListView:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mAdapter:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v0, "WidgetMain"

    const-string v1, "onResume()"

    const-string v2, "start onResume"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0}, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->getCountOfSNSAccount()I

    move-result v0

    if-gtz v0, :cond_19

    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setEmptyView(ZZ)V

    .line 76
    :goto_18
    return-void

    .line 75
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->startQuery()V

    goto :goto_18
.end method

.method public onServiceConnected()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mAdapter:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;->notifyDataSetChanged()V

    .line 219
    return-void
.end method

.method public onSnsCallback(IILandroid/net/Uri;Z)V
    .registers 14
    .parameter "reqID"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    const/4 v2, 0x0

    .line 147
    const-string v0, "WidgetMain"

    const-string v1, "onSnsCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reqType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " continue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sparse-switch p2, :sswitch_data_a4

    .line 187
    :cond_32
    :goto_32
    return-void

    .line 152
    :sswitch_33
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setLoading(Z)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-virtual {v0, p4}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setContinue(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->startQuery()V

    goto :goto_32

    .line 159
    :sswitch_42
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$DeepLink;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_32

    .line 165
    :try_start_51
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->dismiss()V

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    const-string v0, "url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, deepLinkUrl:Ljava/lang/String;
    const-string v0, "WidgetMain"

    const-string v1, "callbackProfileUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->startActivity(Landroid/content/Intent;)V
    :try_end_93
    .catchall {:try_start_51 .. :try_end_93} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_93} :catch_98

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    const/4 v6, 0x0

    .line 180
    goto :goto_32

    .line 172
    .end local v7           #deepLinkUrl:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :catch_98
    move-exception v0

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    const/4 v6, 0x0

    .line 180
    goto :goto_32

    .line 178
    :catchall_9e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    const/4 v6, 0x0

    throw v0

    .line 148
    :sswitch_data_a4
    .sparse-switch
        0x5 -> :sswitch_33
        0x28 -> :sswitch_42
        0x2b -> :sswitch_33
    .end sparse-switch
.end method

.method public onSnsErrorCallback(IILandroid/net/Uri;IIILjava/lang/String;)V
    .registers 13
    .parameter "reqID"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    .line 197
    const-string v0, "WidgetMain"

    const-string v1, "onSnsErrorCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " httpStatusCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subErrCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sparse-switch p2, :sswitch_data_78

    .line 214
    :goto_50
    return-void

    .line 202
    :sswitch_51
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-virtual {v0, v4}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setLoading(Z)V

    .line 203
    invoke-static {p0, p4, p5, p6}, Lcom/sec/android/widgetapp/socialhub/sns/SnsErrorCode;->getErrorString(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_50

    .line 207
    :sswitch_62
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->dismiss()V

    .line 208
    invoke-static {p0, p4, p5, p6}, Lcom/sec/android/widgetapp/socialhub/sns/SnsErrorCode;->getErrorString(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_50

    .line 198
    nop

    :sswitch_data_78
    .sparse-switch
        0x5 -> :sswitch_51
        0x28 -> :sswitch_62
        0x2b -> :sswitch_51
    .end sparse-switch
.end method

.method public startQuery()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 80
    const-string v0, "WidgetMain"

    const-string v2, "startQuery"

    const-string v3, "start startQuery"

    invoke-static {v0, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDB$DirtyAct;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "owner"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 86
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_13
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/CallBackHandleActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->FeedViewProjection:[Ljava/lang/String;

    const-string v3, "activity_id is not null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_32

    move-result-object v6

    .line 93
    :goto_23
    if-eqz v6, :cond_42

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 96
    .local v7, cursorCount:I
    if-gtz v7, :cond_37

    .line 98
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setEmptyView(ZZ)V

    .line 110
    .end local v7           #cursorCount:I
    :goto_31
    return-void

    .line 88
    :catch_32
    move-exception v8

    .line 90
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 102
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #cursorCount:I
    :cond_37
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mPlainView:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-virtual {v0, v9, v9}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->setEmptyView(ZZ)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/WidgetMain;->mAdapter:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;

    invoke-virtual {v0, v6}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListViewAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_31

    .line 108
    .end local v7           #cursorCount:I
    :cond_42
    const-string v0, "WidgetMain"

    const-string v2, "startQuery()"

    const-string v3, "cursor is null"

    invoke-static {v0, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method
