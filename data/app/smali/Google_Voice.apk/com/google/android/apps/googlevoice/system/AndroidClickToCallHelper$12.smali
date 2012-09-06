.class Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;
.super Ljava/lang/Object;
.source "AndroidClickToCallHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->startClickToCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

.field final synthetic val$clickToCallRpc:Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;->val$clickToCallRpc:Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->clickToCallProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 316
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;->val$clickToCallRpc:Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;->val$clickToCallRpc:Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;->hasException()Z

    move-result v0

    if-nez v0, :cond_28

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    #getter for: Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->access$000(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 321
    :goto_27
    return-void

    .line 319
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$12;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    #getter for: Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->access$000(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_27
.end method
