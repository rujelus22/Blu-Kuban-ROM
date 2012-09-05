.class Lcom/sprint/w/installer/delivery/DeliveryHub$3;
.super Ljava/lang/Object;
.source "DeliveryHub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/DeliveryHub;->startProcessing()V
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
    .line 180
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$3;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$3;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->showProgress()V

    .line 183
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$3;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    #calls: Lcom/sprint/w/installer/delivery/DeliveryHub;->processRequest()V
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$500(Lcom/sprint/w/installer/delivery/DeliveryHub;)V

    .line 184
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$3;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$3;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryHub;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method
