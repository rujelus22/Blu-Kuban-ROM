.class Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;
.super Ljava/lang/Object;
.source "SlideListActivity.java"

# interfaces
.implements Lcom/infraware/common/control/dragndroplist/DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/SlideListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrop(II)V
    .registers 7
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v3, 0x1

    .line 211
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    if-eqz v1, :cond_34

    .line 212
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->onDrop(II)V

    .line 213
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 214
    if-ge p2, p1, :cond_42

    .line 215
    add-int/lit8 v0, p1, 0x1

    .line 216
    .local v0, i:I
    add-int/lit8 v0, p1, 0x1

    :goto_23
    add-int/lit8 v1, p2, 0x1

    if-gt v0, v1, :cond_35

    .line 218
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    add-int/lit8 v2, p2, 0x1

    #setter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mLastChangeItemPosition:I
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$2(Lcom/infraware/polarisoffice/ppt/SlideListActivity;I)V

    .line 229
    .end local v0           #i:I
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mSelectedIconNum:I
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$3(Lcom/infraware/polarisoffice/ppt/SlideListActivity;I)V

    .line 231
    :cond_34
    return-void

    .line 217
    .restart local v0       #i:I
    :cond_35
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0, v3}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    .line 216
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 220
    .end local v0           #i:I
    :cond_42
    if-le p2, p1, :cond_2e

    .line 221
    add-int/lit8 v0, p1, 0x1

    .line 222
    .restart local v0       #i:I
    add-int/lit8 v0, p1, 0x1

    :goto_48
    add-int/lit8 v1, p2, 0x1

    if-lt v0, v1, :cond_54

    .line 224
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    add-int/lit8 v2, p2, 0x1

    #setter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mLastChangeItemPosition:I
    invoke-static {v1, v2}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$2(Lcom/infraware/polarisoffice/ppt/SlideListActivity;I)V

    goto :goto_2e

    .line 223
    :cond_54
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$2;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$0(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method
