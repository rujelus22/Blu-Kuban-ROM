.class Lcom/sprint/smps/activities/PaymentAccountDetail$2$1;
.super Ljava/lang/Object;
.source "PaymentAccountDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/PaymentAccountDetail$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/PaymentAccountDetail$2;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/PaymentAccountDetail$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2$1;->this$1:Lcom/sprint/smps/activities/PaymentAccountDetail$2;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sprint/smps/activities/PaymentAccountDetail$2$1;->this$1:Lcom/sprint/smps/activities/PaymentAccountDetail$2;

    #getter for: Lcom/sprint/smps/activities/PaymentAccountDetail$2;->this$0:Lcom/sprint/smps/activities/PaymentAccountDetail;
    invoke-static {v0}, Lcom/sprint/smps/activities/PaymentAccountDetail$2;->access$0(Lcom/sprint/smps/activities/PaymentAccountDetail$2;)Lcom/sprint/smps/activities/PaymentAccountDetail;

    move-result-object v0

    #getter for: Lcom/sprint/smps/activities/PaymentAccountDetail;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/PaymentAccountDetail;->access$3(Lcom/sprint/smps/activities/PaymentAccountDetail;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 159
    const-string v0, "View Payment Options"

    invoke-static {v0}, Lcom/sprint/smps/activities/AddAddress;->dismissActivities(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->retrieveData:Z

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 163
    :cond_17
    return-void
.end method
