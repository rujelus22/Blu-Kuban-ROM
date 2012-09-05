.class Lcom/infraware/office/basetoolbar/EditToolbar$2;
.super Ljava/lang/Object;
.source "EditToolbar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 13
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 108
    instance-of v3, p1, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    if-eqz v3, :cond_5f

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 110
    .local v0, btn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    if-eqz p2, :cond_60

    .line 112
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3, v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->getPageCountOfToolbarBtn(Lcom/infraware/office/basetoolbar/ToolbarBtn;)I

    move-result v1

    .line 113
    .local v1, buttonsPage:I
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #getter for: Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I
    invoke-static {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$4(Lcom/infraware/office/basetoolbar/EditToolbar;)I

    move-result v3

    if-eq v3, v1, :cond_56

    .line 114
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 116
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #getter for: Lcom/infraware/office/basetoolbar/EditToolbar;->mCurrentPage:I
    invoke-static {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$4(Lcom/infraware/office/basetoolbar/EditToolbar;)I

    move-result v3

    sub-int v4, v1, v3

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "window"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    mul-int v2, v4, v3

    .line 117
    .local v2, offset:I
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #calls: Lcom/infraware/office/basetoolbar/EditToolbar;->SetCurrentPage(I)V
    invoke-static {v3, v1}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$5(Lcom/infraware/office/basetoolbar/EditToolbar;I)V

    .line 118
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #getter for: Lcom/infraware/office/basetoolbar/EditToolbar;->mToolbarView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$6(Lcom/infraware/office/basetoolbar/EditToolbar;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    int-to-float v5, v2

    const/4 v6, 0x0

    const/16 v7, 0x12c

    #calls: Lcom/infraware/office/basetoolbar/EditToolbar;->createAnimation(FFI)Landroid/view/animation/Animation;
    invoke-static {v4, v5, v6, v7}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$7(Lcom/infraware/office/basetoolbar/EditToolbar;FFI)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    .end local v2           #offset:I
    :cond_56
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/EditToolbar$2;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v3, v8, v9}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnMoveOffset(IZ)V

    .line 122
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 129
    .end local v0           #btn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    .end local v1           #buttonsPage:I
    :cond_5f
    :goto_5f
    return-void

    .line 125
    .restart local v0       #btn:Lcom/infraware/office/basetoolbar/ToolbarBtn;
    :cond_60
    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getBtnState()I

    move-result v3

    if-eq v3, v9, :cond_5f

    .line 126
    invoke-virtual {v0, v8}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    goto :goto_5f
.end method
