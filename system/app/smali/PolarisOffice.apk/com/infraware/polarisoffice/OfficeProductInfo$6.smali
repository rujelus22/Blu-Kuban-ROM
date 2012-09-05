.class Lcom/infraware/polarisoffice/OfficeProductInfo$6;
.super Ljava/lang/Object;
.source "OfficeProductInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$6;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 449
    sparse-switch p2, :sswitch_data_1e

    .line 460
    :goto_5
    return v0

    .line 453
    :sswitch_6
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$6;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    invoke-virtual {v2, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    .line 454
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$6;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const v2, 0x7f0800b8

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelMsg:I
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$7(Lcom/infraware/polarisoffice/OfficeProductInfo;I)V

    .line 455
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$6;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_5

    :sswitch_1b
    move v0, v1

    .line 458
    goto :goto_5

    .line 449
    nop

    :sswitch_data_1e
    .sparse-switch
        0x4 -> :sswitch_6
        0x17 -> :sswitch_6
        0x54 -> :sswitch_1b
    .end sparse-switch
.end method
