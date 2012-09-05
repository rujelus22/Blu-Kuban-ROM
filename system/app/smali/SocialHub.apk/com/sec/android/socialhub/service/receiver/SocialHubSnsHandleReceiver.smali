.class public Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SocialHubSnsHandleReceiver.java"


# instance fields
.field private mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;->mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.sns.action.START_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "com.sec.android.app.sns.action.UPDATE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;->mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;

    if-eqz v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;->mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;

    invoke-interface {v0, p2}, Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;->onReceive(Landroid/content/Intent;)V

    .line 24
    :cond_9
    return-void
.end method

.method public setOnBroadCastListener(Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/socialhub/service/receiver/SocialHubSnsHandleReceiver;->mListener:Lcom/sec/android/socialhub/service/receiver/IBroadcastListener;

    .line 29
    return-void
.end method
