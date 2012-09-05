.class Lcom/vlingo/client/car/sms/SMSController$2;
.super Ljava/lang/Object;
.source "SMSController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$contactToText:Lcom/vlingo/client/core/contacts/DisplayItem;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/sms/SMSController;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSController$2;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    iput-object p2, p0, Lcom/vlingo/client/car/sms/SMSController$2;->val$contactToText:Lcom/vlingo/client/core/contacts/DisplayItem;

    iput-object p3, p0, Lcom/vlingo/client/car/sms/SMSController$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController$2;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    #getter for: Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSController;->access$100(Lcom/vlingo/client/car/sms/SMSController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController$2;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    #getter for: Lcom/vlingo/client/car/sms/SMSController;->mProgressDialog:Lcom/vlingo/client/ui/VProgressDialog;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSController;->access$100(Lcom/vlingo/client/car/sms/SMSController;)Lcom/vlingo/client/ui/VProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 374
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSController$2;->this$0:Lcom/vlingo/client/car/sms/SMSController;

    iget-object v1, p0, Lcom/vlingo/client/car/sms/SMSController$2;->val$contactToText:Lcom/vlingo/client/core/contacts/DisplayItem;

    iget-object v2, p0, Lcom/vlingo/client/car/sms/SMSController$2;->val$message:Ljava/lang/String;

    #calls: Lcom/vlingo/client/car/sms/SMSController;->sendMessage(Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/vlingo/client/car/sms/SMSController;->access$200(Lcom/vlingo/client/car/sms/SMSController;Lcom/vlingo/client/core/contacts/DisplayItem;Ljava/lang/String;)V

    .line 376
    :cond_1d
    return-void
.end method
