.class Lcom/google/android/apps/books/app/ReaderFragment$16;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1954
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .parameter
    .parameter "view"
    .parameter "itemPosition"
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
    .line 1958
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 1959
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_9

    .line 1982
    :goto_8
    return-void

    .line 1961
    :cond_9
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1962
    .local v10, pageId:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/books/common/Position;

    invoke-static {v10}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    .line 1966
    .local v1, readingPosition:Lcom/google/android/apps/books/common/Position;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4500(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1967
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;

    move-result-object v2

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setBeforeSearchPosition(Lcom/google/android/apps/books/common/Position;)V
    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4700(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;)V

    .line 1970
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3800(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4002(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1975
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SEARCH_WITHIN_BOOK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4000(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 1979
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v2, 0x0

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setShowSearchResults(Z)V
    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3500(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1981
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3800(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_8
.end method
