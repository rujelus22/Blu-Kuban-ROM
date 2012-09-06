.class Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$5;
.super Ljava/lang/Object;
.source "ForwardingPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 255
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 258
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$5;->this$0:Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->finish()V

    .line 260
    return-void
.end method
