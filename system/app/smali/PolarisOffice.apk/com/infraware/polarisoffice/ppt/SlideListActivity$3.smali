.class Lcom/infraware/polarisoffice/ppt/SlideListActivity$3;
.super Ljava/lang/Object;
.source "SlideListActivity.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/RemoveListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$3;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$3;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    if-eqz v0, :cond_1c

    .line 239
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$3;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    #getter for: Lcom/infraware/polarisoffice/ppt/SlideListActivity;->adapter:Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;
    invoke-static {v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideListActivity;)Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/infraware/common/control/dragndroplist/DragNDropAdapter;->onRemove(I)V

    .line 240
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideListActivity$3;->this$0:Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/ppt/SlideListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 242
    :cond_1c
    return-void
.end method
