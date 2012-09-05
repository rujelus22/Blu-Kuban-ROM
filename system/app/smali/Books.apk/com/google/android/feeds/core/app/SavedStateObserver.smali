.class public Lcom/google/android/feeds/core/app/SavedStateObserver;
.super Landroid/database/DataSetObserver;
.source "SavedStateObserver.java"


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mRestored:Z

.field private mState:Landroid/os/Parcelable;

.field private final mView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<+",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static restore(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 7
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<+",
            "Landroid/widget/Adapter;",
            ">;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<+Landroid/widget/Adapter;>;"
    instance-of v2, p0, Landroid/widget/AbsListView;

    if-eqz v2, :cond_b

    move-object v0, p0

    .line 71
    check-cast v0, Landroid/widget/AbsListView;

    .line 72
    .local v0, listView:Landroid/widget/AbsListView;
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 79
    .end local v0           #listView:Landroid/widget/AbsListView;
    :goto_a
    return-void

    .line 73
    :cond_b
    instance-of v2, p0, Landroid/widget/AbsSpinner;

    if-eqz v2, :cond_16

    move-object v1, p0

    .line 74
    check-cast v1, Landroid/widget/AbsSpinner;

    .line 75
    .local v1, spinner:Landroid/widget/AbsSpinner;
    invoke-virtual {v1, p1}, Landroid/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_a

    .line 77
    .end local v1           #spinner:Landroid/widget/AbsSpinner;
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot restore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 127
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 128
    iget-object v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1f

    .line 129
    iget-boolean v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mRestored:Z

    if-nez v0, :cond_1f

    .line 130
    iget-object v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/Feed;->getStatus(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    sget-object v1, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v1, :cond_1f

    .line 131
    iget-object v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/google/android/feeds/core/app/SavedStateObserver;->restore(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feeds/core/app/SavedStateObserver;->mRestored:Z

    .line 147
    :cond_1f
    return-void
.end method
