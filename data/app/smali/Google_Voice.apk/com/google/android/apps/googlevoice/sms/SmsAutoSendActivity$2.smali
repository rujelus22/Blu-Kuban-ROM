.class Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity$2;
.super Ljava/lang/Object;
.source "SmsAutoSendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->buildFailureDialog(Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity$2;->this$0:Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity$2;->this$0:Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->finish()V

    .line 171
    return-void
.end method
