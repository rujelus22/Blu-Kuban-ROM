.class Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;
.super Ljava/lang/Object;
.source "SlideListActivity.java"

# interfaces
.implements Lcom/infraware/common/control/dragndroplist/DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/SlideListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field backgroundColor:I

.field defaultBackgroundColor:I

.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const v0, -0x1fefcff0

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public onDrag(IILandroid/widget/ListView;)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "listView"

    .prologue
    .line 252
    return-void
.end method

.method public onStartDrag(Landroid/view/View;IIZ)V
    .registers 9
    .parameter "itemView"
    .parameter "nCurItemIndex"
    .parameter "itemIndex"
    .parameter "mDragMode"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    if-eqz v0, :cond_36

    .line 261
    if-eqz p4, :cond_36

    .line 262
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #setter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mSelectedIconNum:I
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$3(Lcom/infraware/polarisoffice/ppt/SlideListActivity;I)V

    .line 263
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mSelectedIconNum:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$4(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->ChangeMoveIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->notifyDataSetChanged()V

    .line 269
    :cond_36
    return-void
.end method

.method public onStopDrag(Landroid/view/View;)V
    .registers 6
    .parameter "itemView"

    .prologue
    .line 272
    if-eqz p1, :cond_27

    .line 274
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mSelectedIconNum:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$4(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->ChangeMoveIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$4;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->notifyDataSetChanged()V

    .line 281
    :cond_27
    return-void
.end method
