.class public Lcom/google/android/feeds/core/app/TitleObserver;
.super Landroid/database/DataSetObserver;
.source "TitleObserver.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCursor:Landroid/database/Cursor;

.field private final mOriginalTitle:Ljava/lang/CharSequence;

.field private final mTitleExtra:Ljava/lang/String;


# direct methods
.method private updateTitle()V
    .registers 4

    .prologue
    .line 65
    iget-object v2, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, extras:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mTitleExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, title:Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 68
    iget-object v2, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_13
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/feeds/core/app/TitleObserver;->updateTitle()V

    .line 75
    return-void
.end method

.method public onInvalidated()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/feeds/core/app/TitleObserver;->mOriginalTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method
