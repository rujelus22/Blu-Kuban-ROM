.class Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;
.super Ljava/lang/Object;
.source "FreeDrawToolbar.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 395
    return-void
.end method

.method public onPenColorChanged(I)V
    .registers 3
    .parameter "penColor"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_29

    .line 384
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0, p1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onPenColorChanged(I)V

    .line 385
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setColor(I)V

    .line 386
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setColor(I)V

    .line 387
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/PencilLineButton;->invalidate()V

    .line 388
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/PencilLineButton;->invalidate()V

    .line 390
    :cond_29
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    .line 391
    return-void
.end method

.method public onPenSizeChanged(I)V
    .registers 3
    .parameter "penSize"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_d

    .line 377
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0, p1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onPenSizeChanged(I)V

    .line 379
    :cond_d
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->refreshHandler()V

    .line 380
    return-void
.end method
