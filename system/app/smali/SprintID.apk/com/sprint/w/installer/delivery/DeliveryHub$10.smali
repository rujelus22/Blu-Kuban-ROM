.class Lcom/sprint/w/installer/delivery/DeliveryHub$10;
.super Ljava/lang/Object;
.source "DeliveryHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/DeliveryHub;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 559
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$10;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$10;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$10;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #getter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatus:Lcom/sprint/w/installer/DeliveryState;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$100(Lcom/sprint/w/installer/delivery/DeliveryHub;)Lcom/sprint/w/installer/DeliveryState;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$10;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/DeliveryHub;->mStatusExtra:Ljava/lang/String;

    const/4 v3, 0x1

    #calls: Lcom/sprint/w/installer/delivery/DeliveryHub;->statusUpdate(Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$800(Lcom/sprint/w/installer/delivery/DeliveryHub;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 563
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$10;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->finish()V

    .line 564
    return-void
.end method
