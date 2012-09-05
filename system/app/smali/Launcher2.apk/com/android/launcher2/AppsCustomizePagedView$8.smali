.class Lcom/android/launcher2/AppsCustomizePagedView$8;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;

.field final synthetic val$cellHeight:I

.field final synthetic val$cellWidth:I

.field final synthetic val$immediate:Z

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$layout:Lcom/android/launcher2/PagedViewGridLayout;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;IILcom/android/launcher2/PagedViewGridLayout;ZILjava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$cellWidth:I

    iput p3, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$cellHeight:I

    iput-object p4, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$layout:Lcom/android/launcher2/PagedViewGridLayout;

    iput-boolean p5, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$immediate:Z

    iput p6, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$page:I

    iput-object p7, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1161
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$cellWidth:I

    .line 1162
    .local v3, maxPreviewWidth:I
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$cellHeight:I

    .line 1163
    .local v4, maxPreviewHeight:I
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$layout:Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1f

    .line 1164
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$layout:Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    .line 1165
    .local v12, w:Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v12}, Lcom/android/launcher2/PagedViewWidget;->getPreviewSize()[I

    move-result-object v11

    .line 1166
    .local v11, maxSize:[I
    aget v3, v11, v2

    .line 1167
    const/4 v1, 0x1

    aget v4, v11, v1

    .line 1169
    .end local v11           #maxSize:[I
    .end local v12           #w:Lcom/android/launcher2/PagedViewWidget;
    :cond_1f
    iget-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$immediate:Z

    if-eqz v1, :cond_38

    .line 1170
    new-instance v0, Lcom/android/launcher2/AsyncTaskPageData;

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$page:I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$items:Ljava/util/ArrayList;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V

    .line 1172
    .local v0, data:Lcom/android/launcher2/AsyncTaskPageData;
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #calls: Lcom/android/launcher2/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    invoke-static {v1, v5, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 1173
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #calls: Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$200(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 1178
    .end local v0           #data:Lcom/android/launcher2/AsyncTaskPageData;
    :goto_37
    return-void

    .line 1175
    :cond_38
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$page:I

    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->val$items:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$8;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #getter for: Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I
    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->access$400(Lcom/android/launcher2/AppsCustomizePagedView;)I

    move-result v10

    move v8, v3

    move v9, v4

    #calls: Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/AppsCustomizePagedView;->access$500(Lcom/android/launcher2/AppsCustomizePagedView;ILjava/util/ArrayList;III)V

    goto :goto_37
.end method
