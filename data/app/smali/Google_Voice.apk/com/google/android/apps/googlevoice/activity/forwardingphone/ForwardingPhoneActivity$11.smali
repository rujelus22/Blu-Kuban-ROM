.class Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$11;
.super Ljava/lang/Object;
.source "ForwardingPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$11;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$11;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$602(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    .line 344
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$11;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$000(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x443

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$11;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dismissProgress()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$500(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$11;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->onVerificationCanceled()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    .line 347
    return-void
.end method
