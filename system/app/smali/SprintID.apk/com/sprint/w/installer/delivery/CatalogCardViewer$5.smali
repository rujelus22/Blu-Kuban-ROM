.class Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;
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
    .line 208
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 212
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliverRequestID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sprint/w/installer/DownloadService;->cancelDownload(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$200(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 215
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #calls: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiReadyDownload()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$700(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    .line 221
    :cond_20
    :goto_20
    return-void

    .line 217
    :cond_21
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    #calls: Lcom/sprint/w/installer/delivery/CatalogCardViewer;->setUiDone()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->access$400(Lcom/sprint/w/installer/delivery/CatalogCardViewer;)V

    .line 218
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogCardViewer$5;->this$0:Lcom/sprint/w/installer/delivery/CatalogCardViewer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/CatalogCardViewer;->showDialog(I)V

    goto :goto_20
.end method
