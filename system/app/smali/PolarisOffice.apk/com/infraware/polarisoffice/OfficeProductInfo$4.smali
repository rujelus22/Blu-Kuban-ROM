.class Lcom/infraware/polarisoffice/OfficeProductInfo$4;
.super Ljava/lang/Object;
.source "OfficeProductInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeProductInfo;->onChangeScreen(I)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$4;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$4;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 393
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$4;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    .line 394
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$4;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$5(Lcom/infraware/polarisoffice/OfficeProductInfo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 399
    :goto_1c
    return-void

    .line 396
    :cond_1d
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$4;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const v1, 0x7f080068

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$6(Lcom/infraware/polarisoffice/OfficeProductInfo;I)V

    .line 397
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$4;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_1c
.end method
