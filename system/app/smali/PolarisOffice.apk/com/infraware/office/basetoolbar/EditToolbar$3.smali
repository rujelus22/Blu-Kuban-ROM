.class Lcom/infraware/office/basetoolbar/EditToolbar$3;
.super Landroid/os/Handler;
.source "EditToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/basetoolbar/EditToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/basetoolbar/EditToolbar;


# direct methods
.method constructor <init>(Lcom/infraware/office/basetoolbar/EditToolbar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/EditToolbar$3;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 136
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_29

    .line 137
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar$3;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #setter for: Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z
    invoke-static {v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$8(Lcom/infraware/office/basetoolbar/EditToolbar;Z)V

    .line 138
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar$3;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v1, v1, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    if-eqz v1, :cond_29

    .line 140
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar$3;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/EditToolbar$3;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v2, v2, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->getPageCountOfToolbarBtn(Lcom/infraware/office/basetoolbar/ToolbarBtn;)I

    move-result v0

    .line 141
    .local v0, buttonsPage:I
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar$3;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #getter for: Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I
    invoke-static {v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$4(Lcom/infraware/office/basetoolbar/EditToolbar;)I

    move-result v1

    if-ne v1, v0, :cond_29

    .line 142
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/EditToolbar$3;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v1, v1, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->showTooltip()V

    .line 147
    .end local v0           #buttonsPage:I
    :cond_29
    return-void
.end method
