.class Lcom/infraware/polarisoffice/OfficeProductInfo$11;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$11;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$11;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mIsSubUpdate:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$8(Lcom/infraware/polarisoffice/OfficeProductInfo;Z)V

    .line 526
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$11;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    .line 527
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$11;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$5(Lcom/infraware/polarisoffice/OfficeProductInfo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 528
    return-void
.end method
