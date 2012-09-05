.class Lcom/infraware/polarisoffice/sheet/SheetViewList$8;
.super Ljava/lang/Object;
.source "SheetViewList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetViewList;->OnSheetDelete()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    .line 304
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$1(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$4(Lcom/infraware/polarisoffice/sheet/SheetViewList;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 305
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetViewList;->arItem:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mSelectedItem:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$4(Lcom/infraware/polarisoffice/sheet/SheetViewList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$0(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->notifyDataSetChanged()V

    .line 307
    return-void
.end method
