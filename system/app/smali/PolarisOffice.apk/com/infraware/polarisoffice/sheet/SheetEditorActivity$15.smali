.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateNumbersPopup(I)Landroid/app/AlertDialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 2713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2715
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$26(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v2

    if-ne v2, v0, :cond_2d

    .line 2716
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput v0, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2717
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mChkSeperator:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$27(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2b

    :goto_21
    iput v0, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->bSeparate:I

    .line 2722
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/16 v2, 0x302

    invoke-virtual {v0, v2, v1, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    .line 2723
    return-void

    :cond_2b
    move v0, v1

    .line 2717
    goto :goto_21

    .line 2719
    :cond_2d
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$26(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v0

    if-ne v0, v3, :cond_23

    .line 2720
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$15;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput v3, v0, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    goto :goto_23
.end method
