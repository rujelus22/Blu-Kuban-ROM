.class Lcom/sprint/w/installer/delivery/DeliveryHub$6;
.super Ljava/lang/Object;
.source "DeliveryHub.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/DeliveryHub;->setupPinUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V
    .registers 2
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$6;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 496
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$6;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 497
    .local v0, et:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$6;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$400(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2b

    .line 498
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$6;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    const/4 v2, 0x1

    #setter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->sPinCleared:Z
    invoke-static {v1, v2}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$702(Lcom/sprint/w/installer/delivery/DeliveryHub;Z)Z

    .line 500
    :cond_2b
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$6;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #calls: Lcom/sprint/w/installer/delivery/DeliveryHub;->startProcessing()V
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$600(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    .line 501
    return-void
.end method
