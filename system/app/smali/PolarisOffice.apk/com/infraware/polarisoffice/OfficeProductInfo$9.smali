.class Lcom/infraware/polarisoffice/OfficeProductInfo$9;
.super Ljava/lang/Object;
.source "OfficeProductInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeProductInfo;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$9;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$9;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 501
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$9;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    .line 502
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$9;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$5(Lcom/infraware/polarisoffice/OfficeProductInfo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 507
    :goto_1c
    return-void

    .line 504
    :cond_1d
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$9;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const v1, 0x7f080068

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$6(Lcom/infraware/polarisoffice/OfficeProductInfo;I)V

    .line 505
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$9;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_1c
.end method
