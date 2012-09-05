.class Lcom/google/android/apps/books/app/ReaderFragment$11;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->createSearchMenuExpandListener()Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;
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
    .line 1825
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1835
    const-string v2, "ReaderFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1836
    const-string v2, "ReaderFragment"

    const-string v3, "mSearchMenu.onMenuItemActionCollapse()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_12
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3300(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mShowingSearchResultsList:Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3400(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1845
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z
    invoke-static {v2, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$602(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z

    .line 1846
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V
    invoke-static {v2, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1847
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setShowSearchResults(Z)V
    invoke-static {v2, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3500(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1867
    :goto_31
    return v0

    .line 1852
    :cond_32
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3600(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1853
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mShowingSearchResultsList:Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3400(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1855
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setShowSearchResults(Z)V
    invoke-static {v2, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3500(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1856
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3300(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1859
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->clearSearchHighlights(Z)V
    invoke-static {v2, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1863
    :cond_54
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$11;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v2, v0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->exitSearch(ZZ)V

    :cond_59
    move v0, v1

    .line 1867
    goto :goto_31
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1828
    const/4 v0, 0x1

    return v0
.end method
