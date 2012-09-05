.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateInputListPopup(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 3346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3349
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$33(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3350
    .local v3, strTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->matches:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$33(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    const-string v5, "definition"

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3351
    .local v1, strDef:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #calls: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->GetEditText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v3, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$35(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3352
    .local v2, strFunction:Ljava/lang/String;
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #calls: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->GetEditSelection(Ljava/lang/String;)I
    invoke-static {v4, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$36(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)I

    move-result v0

    .line 3355
    .local v0, idx:I
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/ExEditText;->requestFocus()Z

    .line 3356
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->ISheetFocus()V

    .line 3357
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I
    invoke-static {v5, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I
    invoke-static {v4, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 3358
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    .line 3359
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V

    .line 3360
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$10(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    .line 3361
    iget-object v4, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$24;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mInputListPopup:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$37(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    .line 3365
    .end local v0           #idx:I
    .end local v1           #strDef:Ljava/lang/String;
    .end local v2           #strFunction:Ljava/lang/String;
    .end local v3           #strTitle:Ljava/lang/String;
    :goto_72
    return-void

    .line 3364
    :catch_73
    move-exception v4

    goto :goto_72
.end method
