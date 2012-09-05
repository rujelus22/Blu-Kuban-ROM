.class Lcom/infraware/office/basetoolbar/EditToolbar$1;
.super Ljava/lang/Object;
.source "EditToolbar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 71
    packed-switch p2, :pswitch_data_9a

    :cond_12
    move v5, v0

    .line 102
    .end local p1
    :cond_13
    :goto_13
    return v5

    .line 73
    .restart local p1
    :pswitch_14
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #getter for: Lcom/infraware/office/basetoolbar/EditToolbar;->mbLongPress:Z
    invoke-static {v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$0(Lcom/infraware/office/basetoolbar/EditToolbar;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 74
    instance-of v6, p1, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    if-eqz v6, :cond_13

    .line 75
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #getter for: Lcom/infraware/office/basetoolbar/EditToolbar;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$1(Lcom/infraware/office/basetoolbar/EditToolbar;)Landroid/widget/PopupWindow;

    move-result-object v6

    if-eqz v6, :cond_29

    move v0, v5

    .line 76
    .local v0, isPopuped:Z
    :cond_29
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 78
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    check-cast p1, Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .end local p1
    iput-object p1, v6, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 79
    if-nez v0, :cond_90

    .line 80
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #getter for: Lcom/infraware/office/basetoolbar/EditToolbar;->mbDrag:Z
    invoke-static {v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$2(Lcom/infraware/office/basetoolbar/EditToolbar;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 81
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v6, v6, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v6, v7}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    .line 82
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/MyApplication;

    .line 83
    .local v1, myApp:Lcom/infraware/polarisoffice/MyApplication;
    invoke-virtual {v1}, Lcom/infraware/polarisoffice/MyApplication;->getSubToolbarDataMapping()Ljava/util/HashMap;

    move-result-object v4

    .line 84
    .local v4, subToolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/SubToolbarItem;>;"
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v6, v6, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v6}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    .line 86
    .local v2, subToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;
    if-nez v2, :cond_7c

    .line 87
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v7, v7, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v7}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnClickToolbar(I)V

    .line 88
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    #calls: Lcom/infraware/office/basetoolbar/EditToolbar;->OnDefocusToolbarBtn()V
    invoke-static {v6}, Lcom/infraware/office/basetoolbar/EditToolbar;->access$3(Lcom/infraware/office/basetoolbar/EditToolbar;)V

    goto :goto_13

    .line 91
    :cond_7c
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v6, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCreateSubToolBar(Lcom/infraware/office/basetoolbar/SubToolbarItem;)Lcom/infraware/office/basetoolbar/SubToolbar;

    move-result-object v3

    .line 92
    .local v3, subToolbar:Lcom/infraware/office/basetoolbar/SubToolbar;
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v7, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v7, v7, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v7}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getId()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V

    goto :goto_13

    .line 96
    .end local v1           #myApp:Lcom/infraware/polarisoffice/MyApplication;
    .end local v2           #subToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;
    .end local v3           #subToolbar:Lcom/infraware/office/basetoolbar/SubToolbar;
    .end local v4           #subToolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/SubToolbarItem;>;"
    :cond_90
    iget-object v6, p0, Lcom/infraware/office/basetoolbar/EditToolbar$1;->this$0:Lcom/infraware/office/basetoolbar/EditToolbar;

    iget-object v6, v6, Lcom/infraware/office/basetoolbar/EditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v6, v7}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setBtnState(I)V

    goto/16 :goto_13

    .line 71
    nop

    :pswitch_data_9a
    .packed-switch 0x17
        :pswitch_14
    .end packed-switch
.end method
