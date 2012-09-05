.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$6;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_strVendor:Ljava/lang/String;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$12(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "- FV03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_37

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c015c

    if-ne v0, v1, :cond_37

    .line 326
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_36

    .line 327
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->requestFocus()Z

    .line 328
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetFocus()V

    .line 334
    :cond_36
    :goto_36
    return v2

    .line 333
    :cond_37
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$24(Z)V

    goto :goto_36
.end method
