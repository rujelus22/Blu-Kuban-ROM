.class Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SignOutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler$1;->this$0:Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler$1;->this$0:Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->access$000(Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;)Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler$1;->this$0:Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;->sendEmptyMessage(I)Z

    .line 165
    return-void
.end method
