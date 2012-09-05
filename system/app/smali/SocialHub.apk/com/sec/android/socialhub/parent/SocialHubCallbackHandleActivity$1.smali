.class Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SocialHubCallbackHandleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 127
    if-eqz p2, :cond_13

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.socialhub.action.service_connected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 133
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onReqServiceConnected()V

    .line 140
    .end local v0           #action:Ljava/lang/String;
    :cond_13
    :goto_13
    return-void

    .line 135
    .restart local v0       #action:Ljava/lang/String;
    :cond_14
    const-string v1, "com.sec.android.socialhub.action.service_disconnected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 137
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->onReqServiceDisconnected()V

    goto :goto_13
.end method
