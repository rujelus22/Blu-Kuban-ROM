.class Lcom/android/browser/view/BookmarkExpandableView$2;
.super Ljava/lang/Object;
.source "BookmarkExpandableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/view/BookmarkExpandableView;


# direct methods
.method constructor <init>(Lcom/android/browser/view/BookmarkExpandableView;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    :cond_6
    :goto_6
    return-void

    .line 287
    :cond_7
    const/high16 v0, 0x7f0d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 288
    .local v3, groupPosition:I
    const v0, 0x7f0d0001

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 289
    .local v4, childPosition:I
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mAdapter:Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    invoke-static {v0}, Lcom/android/browser/view/BookmarkExpandableView;->access$200(Lcom/android/browser/view/BookmarkExpandableView;)Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getGroupCount()I

    move-result v0

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mAdapter:Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    invoke-static {v0}, Lcom/android/browser/view/BookmarkExpandableView;->access$200(Lcom/android/browser/view/BookmarkExpandableView;)Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v0

    if-le v0, v4, :cond_6

    .line 293
    const v0, 0x7f0d0002

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 294
    .local v5, id:J
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lcom/android/browser/view/BookmarkExpandableView;->access$300(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 295
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lcom/android/browser/view/BookmarkExpandableView;->access$300(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    goto :goto_6
.end method
