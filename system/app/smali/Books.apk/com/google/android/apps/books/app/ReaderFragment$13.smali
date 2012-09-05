.class Lcom/google/android/apps/books/app/ReaderFragment$13;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 1884
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1887
    const-string v2, "ReaderFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1888
    const-string v2, "ReaderFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFocusChange() with hasFocus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_21
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$602(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z

    .line 1898
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3800(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1899
    .local v0, currentSearchQuery:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mShowingActionBar:Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3900(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-nez v2, :cond_8c

    if-eqz p2, :cond_8c

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4000(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4000(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3600(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mShowingSearchResultsList:Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3400(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 1902
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v3, 0x1

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setShowSearchResults(Z)V
    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3500(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1905
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1906
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_8c

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4200(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 1907
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4200(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1908
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$13;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;
    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4202(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 1911
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_8c
    return-void
.end method
