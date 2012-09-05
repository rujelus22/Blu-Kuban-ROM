.class Lcom/infraware/polarisoffice/OfficeProductInfo$3;
.super Ljava/lang/Object;
.source "OfficeProductInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeProductInfo;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$3;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$3;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 193
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$3;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v1, 0x0

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->m_IsUpdatedCanceled:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$4(Lcom/infraware/polarisoffice/OfficeProductInfo;Z)V

    .line 194
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$3;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    .line 195
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$3;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$5(Lcom/infraware/polarisoffice/OfficeProductInfo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    :goto_22
    return-void

    .line 197
    :cond_23
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$3;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const v1, 0x7f080068

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$6(Lcom/infraware/polarisoffice/OfficeProductInfo;I)V

    .line 198
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$3;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_22
.end method
