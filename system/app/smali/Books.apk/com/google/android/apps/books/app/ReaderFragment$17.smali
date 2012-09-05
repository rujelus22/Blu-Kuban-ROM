.class Lcom/google/android/apps/books/app/ReaderFragment$17;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1985
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1989
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$602(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z

    .line 1991
    const/4 v6, 0x0

    .line 1992
    .local v6, highlightSearch:Ljava/lang/Integer;
    const/4 v7, 0x0

    .line 1998
    .local v7, nextChapterHint:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/SearchScrubBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/SearchScrubBar;->getPreviousButton()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3d

    .line 1999
    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2000
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;

    move-result-object v1

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->findPreviousChapterWithSearchResults(Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4900(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;

    move-result-object v7

    .line 2005
    :cond_25
    :goto_25
    if-eqz v6, :cond_3c

    .line 2008
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SEARCH_WITHIN_BOOK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchQuery:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4000(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;

    move-result-object v4

    move v5, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 2011
    :cond_3c
    return-void

    .line 2001
    :cond_3d
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/SearchScrubBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/SearchScrubBar;->getNextButton()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_25

    .line 2002
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2003
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$17;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;

    move-result-object v1

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->findNextChapterWithSearchResults(Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5000(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_25
.end method
