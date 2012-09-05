.class public Lcom/google/android/apps/books/widget/SearchScrubBar;
.super Landroid/widget/FrameLayout;
.source "SearchScrubBar.java"


# instance fields
.field private mChapterTitle:Landroid/widget/TextView;

.field private mCurrentPage:Landroid/widget/TextView;

.field private mNext:Landroid/view/View;

.field private mPrevious:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/SearchScrubBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getNextButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mNext:Landroid/view/View;

    return-object v0
.end method

.method public getPreviousButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mPrevious:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 50
    const v0, 0x7f0f006e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/SearchScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mChapterTitle:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/SearchScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mCurrentPage:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/SearchScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mPrevious:Landroid/view/View;

    .line 53
    const v0, 0x7f0f0070

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/SearchScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mNext:Landroid/view/View;

    .line 54
    return-void
.end method

.method public setDisplayText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "chapterTitle"
    .parameter "page"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mChapterTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mCurrentPage:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setNextButtonEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 80
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "onClickListener"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mPrevious:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/books/widget/SearchScrubBar;->mNext:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public setPreviousButtonEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 70
    return-void
.end method
