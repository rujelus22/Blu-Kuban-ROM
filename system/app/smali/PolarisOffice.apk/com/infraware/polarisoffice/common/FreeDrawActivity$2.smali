.class Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;
.super Ljava/lang/Object;
.source "FreeDrawActivity.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FreeDrawActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FreeDrawActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEraseAll()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IHTCClearAll()V

    .line 102
    return-void
.end method

.method public onGetInitialPenMode()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mInitialPenMode:I

    return v0
.end method

.method public onPenColorChanged(I)V
    .registers 3
    .parameter "penColor"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenColor(I)V

    .line 90
    return-void
.end method

.method public onPenModeSetting(I)V
    .registers 3
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->setContentViewTouchListener(I)V

    .line 82
    return-void
.end method

.method public onPenSizeChanged(I)V
    .registers 4
    .parameter "penSize"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    div-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenSize(I)V

    .line 86
    return-void
.end method

.method public onRedo()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    .line 98
    return-void
.end method

.method public onToolbar_CmdUndoRedoUI()[I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 105
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    .line 106
    .local v0, aInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 108
    .local v1, btnState:[I
    iget v2, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_15

    .line 109
    const/4 v2, 0x0

    aput v3, v1, v2

    .line 110
    :cond_15
    iget v2, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1d

    .line 111
    aput v3, v1, v3

    .line 113
    :cond_1d
    return-object v1
.end method

.method public onToolbar_UpdateStatus()Z
    .registers 5

    .prologue
    .line 118
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    .line 119
    .local v1, mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;
    iget v2, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_16

    iget v2, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 120
    :cond_16
    const/4 v0, 0x1

    .line 123
    .local v0, bEnable:Z
    :goto_17
    return v0

    .line 122
    .end local v0           #bEnable:Z
    :cond_18
    const/4 v0, 0x0

    .restart local v0       #bEnable:Z
    goto :goto_17
.end method

.method public onUndo()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawActivity$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IRedoUndo(I)V

    .line 94
    return-void
.end method
