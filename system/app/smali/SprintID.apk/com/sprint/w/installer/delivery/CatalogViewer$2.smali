.class Lcom/sprint/w/installer/delivery/CatalogViewer$2;
.super Ljava/lang/Object;
.source "CatalogViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/CatalogViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/CatalogViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v2}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$100(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/delivery/CatalogCard;

    .line 109
    .local v0, card:Lcom/sprint/w/installer/delivery/CatalogCard;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    invoke-virtual {v2}, Lcom/sprint/w/installer/delivery/CatalogViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v1, i:Landroid/content/Intent;
    const-class v2, Lcom/sprint/w/installer/delivery/CatalogCard;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    const-class v2, Lcom/sprint/w/installer/delivery/DeliveryRequest;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v3}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$600(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$2;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    invoke-virtual {v2, v1}, Lcom/sprint/w/installer/delivery/CatalogViewer;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
