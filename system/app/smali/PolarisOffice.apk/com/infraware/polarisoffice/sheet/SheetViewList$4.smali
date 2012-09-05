.class Lcom/infraware/polarisoffice/sheet/SheetViewList$4;
.super Ljava/lang/Object;
.source "SheetViewList.java"

# interfaces
.implements Lcom/infraware/common/control/dragndroplist/DragListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetViewList$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetViewList;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(IILandroid/widget/ListView;)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "listView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method public onStartDrag(Landroid/view/View;IIZ)V
    .registers 5
    .parameter "itemView"
    .parameter "nItemCurIndex"
    .parameter "itemIndex"
    .parameter "mDragMode"

    .prologue
    .line 139
    return-void
.end method

.method public onStopDrag(Landroid/view/View;)V
    .registers 2
    .parameter "itemView"

    .prologue
    .line 136
    return-void
.end method
