.class public final Lcom/google/android/feeds/core/app/RequeryObserver;
.super Landroid/database/DataSetObserver;
.source "RequeryObserver.java"


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method private updateWindow()V
    .registers 6

    .prologue
    .line 114
    iget-object v2, p0, Lcom/google/android/feeds/core/app/RequeryObserver;->mCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/google/android/feeds/core/provider/Feed;->getStatus(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v1

    .line 115
    .local v1, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v2, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v1, v2, :cond_15

    const/4 v0, 0x1

    .line 116
    .local v0, requerying:Z
    :goto_b
    iget-object v3, p0, Lcom/google/android/feeds/core/app/RequeryObserver;->mWindow:Landroid/view/Window;

    const/4 v4, 0x5

    if-eqz v0, :cond_17

    const/4 v2, -0x1

    :goto_11
    invoke-virtual {v3, v4, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 118
    return-void

    .line 115
    .end local v0           #requerying:Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_b

    .line 116
    .restart local v0       #requerying:Z
    :cond_17
    const/4 v2, -0x2

    goto :goto_11
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 103
    invoke-direct {p0}, Lcom/google/android/feeds/core/app/RequeryObserver;->updateWindow()V

    .line 104
    return-void
.end method

.method public onInvalidated()V
    .registers 4

    .prologue
    .line 108
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 109
    const/4 v0, 0x5

    .line 110
    .local v0, featureId:I
    iget-object v1, p0, Lcom/google/android/feeds/core/app/RequeryObserver;->mWindow:Landroid/view/Window;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 111
    return-void
.end method
