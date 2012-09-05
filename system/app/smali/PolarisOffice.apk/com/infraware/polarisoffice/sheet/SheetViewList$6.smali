.class Lcom/infraware/polarisoffice/sheet/SheetViewList$6;
.super Ljava/lang/Object;
.source "SheetViewList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetViewList;->OnSheetEditName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 258
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSheetNameEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$2(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, changedEditName:Ljava/lang/String;
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$1(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$4(Lcom/infraware/polarisoffice/sheet/SheetViewList;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 260
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$4(Lcom/infraware/polarisoffice/sheet/SheetViewList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    new-instance v7, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;

    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    invoke-direct {v7, v0, v4, v2}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;-><init>(Lcom/infraware/polarisoffice/sheet/SheetViewList;ILjava/lang/String;)V

    .line 262
    .local v7, iconItem:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconItem;
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$4(Lcom/infraware/polarisoffice/sheet/SheetViewList;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$6;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$0(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->notifyDataSetChanged()V

    .line 264
    return-void
.end method
