.class Lcom/infraware/polarisoffice/OfficeProductInfo$5;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$5;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 441
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$5;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->m_IsUpdatedCanceled:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$4(Lcom/infraware/polarisoffice/OfficeProductInfo;Z)V

    .line 442
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$5;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    .line 443
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$5;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const v1, 0x7f0800b8

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelMsg:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$7(Lcom/infraware/polarisoffice/OfficeProductInfo;I)V

    .line 444
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$5;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    .line 445
    return-void
.end method
