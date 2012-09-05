.class Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;
.super Ljava/lang/Object;
.source "FreeDrawToolbar.java"

# interfaces
.implements Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->createSubToolBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClickSubToolbar(II)V
    .registers 4
    .parameter "toolbarId"
    .parameter "toolbarBtnId"

    .prologue
    .line 433
    packed-switch p2, :pswitch_data_26

    .line 444
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 445
    return-void

    .line 435
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onUndo()V

    goto :goto_3

    .line 439
    :pswitch_17
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onRedo()V

    goto :goto_3

    .line 433
    nop

    :pswitch_data_26
    .packed-switch 0x7f0c02e1
        :pswitch_9
        :pswitch_17
    .end packed-switch
.end method
