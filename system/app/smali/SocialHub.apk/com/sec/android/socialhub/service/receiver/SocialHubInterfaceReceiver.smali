.class public Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SocialHubInterfaceReceiver.java"


# instance fields
.field private mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;->mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.sns.action.LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "com.sec.android.app.sns.action.REMOVE_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "com.sec.android.im.UnreadMessageInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "com.sec.android.im.action.remove_account"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "com.sec.android.im.action.chat_closed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "com.sec.android.app.sns.action.UPDATE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "com.sec.android.socialhub.action.MSG_SYNC_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "com.sec.android.socialhub.action.IM_SYNC_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;->mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;->mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;

    invoke-interface {v0, p2}, Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;->onReceive(Landroid/content/Intent;)V

    .line 37
    :cond_9
    return-void
.end method

.method public setOnBroadCastListener(Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/socialhub/service/receiver/SocialHubInterfaceReceiver;->mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;

    .line 42
    return-void
.end method
