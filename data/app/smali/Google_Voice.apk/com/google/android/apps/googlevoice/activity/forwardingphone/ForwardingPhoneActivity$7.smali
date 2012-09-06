.class Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$7;
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
    .line 293
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$7;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 296
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$7;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    #calls: Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->onVerificationCanceled()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->access$300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    .line 298
    return-void
.end method
