.class Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;
.super Ljava/lang/Object;
.source "CatalogCardViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/CatalogCardViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$000(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$000(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/CatalogCard;->link:Ljava/lang/String;

    if-eqz v1, :cond_81

    .line 111
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #calls: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->saveItemDetails()V
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$100(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    .line 113
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$200(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;
    invoke-static {v2}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$000(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$200(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;
    invoke-static {v2}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$000(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/CatalogCard;->terms:Ljava/lang/String;

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packTerm:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$200(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;
    invoke-static {v2}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$000(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/CatalogCard;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packName:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$200(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->deliveryType:I

    .line 117
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$200(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mCard:Lcom/sprint/w/installer/delivery/CatalogCard;
    invoke-static {v2}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$000(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/CatalogCard;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/CatalogCard;->link:Ljava/lang/String;

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->url:Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-virtual {v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v2}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$200(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$1;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-virtual {v1, v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0           #i:Landroid/content/Intent;
    :cond_81
    return-void
.end method
