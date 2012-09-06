.class Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$3;
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
    .line 221
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$3;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$3;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #getter for: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$000(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 226
    return-void
.end method
