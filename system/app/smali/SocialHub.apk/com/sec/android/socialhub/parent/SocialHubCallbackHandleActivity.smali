.class public abstract Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;
.super Lcom/sec/android/socialhub/parent/TitleActivity;
.source "SocialHubCallbackHandleActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/ISocialHubConnector;
.implements Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;
.implements Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;,
        Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;
    }
.end annotation


# instance fields
.field private bReqServiceConnected:Z

.field private bServiceConnected:Z

.field protected mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

.field protected mHandler:Landroid/os/Handler;

.field private mIMEFocused:Landroid/view/View;

.field private mIMERunnable:Ljava/lang/Runnable;

.field protected mIMManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRequestManager:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

.field protected mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

.field public mTimeOut:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    .line 52
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    iput v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mTimeOut:I

    .line 59
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMEFocused:Landroid/view/View;

    .line 60
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 63
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 64
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mRequestManager:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    .line 66
    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->bServiceConnected:Z

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->bReqServiceConnected:Z

    .line 205
    new-instance v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$2;-><init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMERunnable:Ljava/lang/Runnable;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMEFocused:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected errorHandle(IIIIIILjava/lang/String;)V
    .registers 15
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 528
    const/4 v1, -0x1

    if-le p2, v1, :cond_19

    .line 530
    invoke-static {p2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .local v0, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    move-object v1, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 531
    invoke-interface/range {v0 .. v5}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 541
    .end local v0           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :goto_18
    return-void

    .line 539
    :cond_19
    invoke-static {p0, p4, p5, p6}, Lcom/sec/android/socialhub/sns/SnsErrorCode;->getErrorString(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method

.method public getRequestManager()Lcom/sec/android/socialhub/service/SocialHubServiceMgr;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mRequestManager:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    return-object v0
.end method

.method public getServiceManager()Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method public initialize()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 156
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mRequestManager:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    .line 164
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mRequestManager:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->bindService(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_3b

    .line 169
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->bindService(Landroid/content/Context;Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)Z

    move-result v0

    if-ne v0, v2, :cond_47

    .line 174
    :cond_47
    invoke-static {p0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->initialize(Landroid/content/Context;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getSnsProfile()Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 177
    return-void
.end method

.method public isPossibleHandleCabllack()Z
    .registers 4

    .prologue
    .line 366
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "isPossibleHandleCabllack()"

    const-string v2, "possible."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method protected isReqServiceConnected()Z
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->bReqServiceConnected:Z

    return v0
.end method

.method protected isServiceConneceted()Z
    .registers 2

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->bServiceConnected:Z

    return v0
.end method

.method public onApiCalled(I)V
    .registers 6
    .parameter "reqType"

    .prologue
    .line 315
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onApiCalled()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_28

    .line 320
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onApiCalled()"

    const-string v2, "mHandler is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_27
    :goto_27
    return-void

    .line 324
    :cond_28
    iget v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mTimeOut:I

    if-lez v0, :cond_27

    .line 326
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$3;-><init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)V

    iget v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mTimeOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_27
.end method

.method public onCallbackHandler(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 15
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 494
    new-instance v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIHandler;-><init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;Ljava/lang/Object;IIILandroid/net/Uri;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string v1, "SocialHubCallbackHandleActivity"

    const-string v2, "onCreate()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent UI Start! - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$1;-><init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.socialhub.action.service_connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.sec.android.socialhub.action.service_disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->initialize()V

    .line 150
    const-string v1, "SocialHubCallbackHandleActivity"

    const-string v2, "onCreate()"

    const-string v3, "Parent UI End!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/TitleActivity;->onDestroy()V

    .line 236
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mRequestManager:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    if-eqz v0, :cond_1a

    .line 240
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mRequestManager:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubServiceMgr;->unbindService(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v3, :cond_1a

    .line 246
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    if-eqz v0, :cond_2a

    .line 248
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->unbindService(Landroid/content/Context;Lcom/sec/android/socialhub/parent/ISocialHubSnsObserver;)Z

    move-result v0

    if-ne v0, v3, :cond_2a

    .line 255
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    if-eqz v0, :cond_33

    .line 257
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 260
    :cond_33
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    if-eqz v0, :cond_3c

    .line 262
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;->close()V

    .line 265
    :cond_3c
    iput-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mRequestManager:Lcom/sec/android/socialhub/service/SocialHubServiceMgr;

    .line 266
    iput-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 267
    iput-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    .line 268
    iput-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    .line 269
    iput-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    .line 270
    iput-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mProfile:Lcom/sec/android/socialhub/sns/SocialHubFeedProfile;

    .line 271
    return-void
.end method

.method public onErrorHandler(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 23
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 513
    new-instance v0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$UIErrorHandler;-><init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 514
    return-void
.end method

.method public onMessageApiCalled(III)V
    .registers 8
    .parameter "reqID"
    .parameter "reqType"
    .parameter "reqOption"

    .prologue
    .line 305
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onMessageApiCalled()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reqOption"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 10
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 295
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onMessageReponse()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onReqServiceConnected()V
    .registers 4

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->bReqServiceConnected:Z

    .line 393
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onReqServiceConnected()"

    const-string v2, "Service is connected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public onReqServiceDisconnected()V
    .registers 4

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->bReqServiceConnected:Z

    .line 399
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onReqServiceDisconnected()"

    const-string v2, "Service is disconnected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public onServiceConnected()V
    .registers 4

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->bServiceConnected:Z

    .line 381
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onServiceConnected()"

    const-string v2, "Service is connected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 4

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->bServiceConnected:Z

    .line 387
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "onServiceDisconnected()"

    const-string v2, "Service is disconnected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public abstract onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
.end method

.method public abstract onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
.end method

.method public requestConnect()V
    .registers 5

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;

    .line 182
    .local v0, connector:Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;
    if-eqz v0, :cond_1d

    .line 184
    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsConnector;->isConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onServiceConnected()V

    .line 187
    const-string v1, "SocialHubCallbackHandleActivity"

    const-string v2, "onCreate()"

    const-string v3, "service is already connected!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1d
    :goto_1d
    return-void

    .line 191
    :cond_1e
    const-string v1, "SocialHubCallbackHandleActivity"

    const-string v2, "onCreate()"

    const-string v3, "service is not connected"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public requestIME(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMEFocused:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 201
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMERunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_f
    return-void
.end method

.method public setTimeOut(I)V
    .registers 6
    .parameter "time"

    .prologue
    .line 279
    if-lez p1, :cond_1e

    .line 281
    iput p1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mTimeOut:I

    .line 282
    const-string v0, "SocialHubCallbackHandleActivity"

    const-string v1, "setTimeOut()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1e
    return-void
.end method
