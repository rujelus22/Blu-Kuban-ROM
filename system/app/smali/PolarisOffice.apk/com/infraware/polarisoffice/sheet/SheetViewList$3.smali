.class Lcom/infraware/polarisoffice/sheet/SheetViewList$3;
.super Ljava/lang/Object;
.source "SheetViewList.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/RemoveListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$0(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    if-eqz v0, :cond_1c

    .line 124
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetViewList;->mIconList:Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->access$0(Lcom/infraware/polarisoffice/sheet/SheetViewList;)Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/sheet/SheetViewList$IconListAdapter;->removeItem(I)V

    .line 125
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetViewList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 127
    :cond_1c
    return-void
.end method
