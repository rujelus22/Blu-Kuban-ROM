.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeSheetList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 706
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const-string v4, ""

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strInputValue:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$9(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$10(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    .line 709
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 710
    .local v1, totalNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    if-lt v0, v1, :cond_3e

    .line 715
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 716
    check-cast p1, Landroid/widget/Button;

    .end local p1
    const/high16 v2, -0x100

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 717
    return-void

    .line 711
    .restart local p1
    :cond_3e
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 712
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 713
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$13;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method
