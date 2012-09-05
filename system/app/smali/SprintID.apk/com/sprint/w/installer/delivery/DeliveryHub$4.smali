.class Lcom/sprint/w/installer/delivery/DeliveryHub$4;
.super Ljava/lang/Object;
.source "DeliveryHub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/DeliveryHub;->showProgress()V
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
    .line 424
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$4;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$4;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$4;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$4;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    const v3, 0x7f06006e

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$4;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    const v4, 0x7f0600e9

    invoke-virtual {v3, v4}, Lcom/sprint/w/installer/delivery/DeliveryHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/sprint/w/installer/delivery/DeliveryHub;->sProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sprint/w/installer/delivery/DeliveryHub;->access$002(Lcom/sprint/w/installer/delivery/DeliveryHub;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 428
    return-void
.end method
