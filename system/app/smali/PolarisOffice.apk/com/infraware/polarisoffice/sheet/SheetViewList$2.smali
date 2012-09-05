.class Lcom/infraware/polarisoffice/sheet/SheetViewList$2;
.super Ljava/lang/Object;
.source "SheetViewList.java"

# interfaces
.implements Lcom/infraware/common/control/dragndroplist/DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/sheet/SheetViewList;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrop(II)V
    .registers 10
    .parameter "from"
    .parameter "to"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$0(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    if-eqz v0, :cond_2b

    .line 113
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$0(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->onDrop(II)V

    .line 114
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 115
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$2;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$1(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISheetEdit(ILjava/lang/String;IIII)V

    .line 117
    :cond_2b
    return-void
.end method
