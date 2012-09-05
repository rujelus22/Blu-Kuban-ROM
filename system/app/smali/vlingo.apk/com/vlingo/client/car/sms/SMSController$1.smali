.class Lcom/vlingo/client/car/sms/SMSController$1;
.super Ljava/lang/Object;
.source "SMSController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/sms/SMSController;->onSendText(Lcom/vlingo/client/car/sms/SMSMessageView;Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSController;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/sms/SMSController;)V
    .registers 2
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSController$1;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController$1;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    #getter for: Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSController;->access$100(Lcom/vlingo/client/car/sms/SMSController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController$1;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    #getter for: Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSController;->access$100(Lcom/vlingo/client/car/sms/SMSController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 364
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController$1;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    #getter for: Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSController;->access$100(Lcom/vlingo/client/car/sms/SMSController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->dismiss()V

    .line 365
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController$1;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0, v1}, Lcom/vlingo/client/car/sms/SMSController;->access$102(Lcom/vlingo/client/car/sms/SMSController;Lcom/vlingo/client/ui/VProgressDialog;)Lcom/vlingo/client/ui/VProgressDialog;

    .line 367
    :cond_23
    return-void
.end method
