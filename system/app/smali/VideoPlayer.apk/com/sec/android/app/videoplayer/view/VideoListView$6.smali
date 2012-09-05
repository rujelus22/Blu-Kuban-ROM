.class Lcom/sec/android/app/videoplayer/view/VideoListView$6;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;->initMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr p3, v2

    .line 888
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 890
    .local v1, selectView:Landroid/view/View;
    if-eqz v1, :cond_3d

    .line 891
    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 893
    .local v0, itemCheckBox:Landroid/widget/CheckBox;
    const-wide/16 v2, -0x65

    cmp-long v2, p4, v2

    if-eqz v2, :cond_3d

    const-wide/16 v2, -0x66

    cmp-long v2, p4, v2

    if-eqz v2, :cond_3d

    const-wide/16 v2, -0x67

    cmp-long v2, p4, v2

    if-eqz v2, :cond_3d

    .line 897
    if-eqz v0, :cond_3d

    .line 898
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 899
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 900
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 909
    .end local v0           #itemCheckBox:Landroid/widget/CheckBox;
    :cond_3d
    :goto_3d
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoListView;->updateDeleteListUI()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$1300(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    .line 910
    return-void

    .line 902
    .restart local v0       #itemCheckBox:Landroid/widget/CheckBox;
    :cond_43
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 903
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 904
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$6;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d
.end method
