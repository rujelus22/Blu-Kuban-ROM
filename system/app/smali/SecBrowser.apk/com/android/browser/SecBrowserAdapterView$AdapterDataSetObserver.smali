.class Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SecBrowserAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecBrowserAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/android/browser/SecBrowserAdapterView;


# direct methods
.method constructor <init>(Lcom/android/browser/SecBrowserAdapterView;)V
    .registers 3
    .parameter

    .prologue
    .line 782
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;,"Lcom/android/browser/SecBrowserAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    .line 788
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;,"Lcom/android/browser/SecBrowserAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    .line 789
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget-object v1, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget v1, v1, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    iput v1, v0, Lcom/android/browser/SecBrowserAdapterView;->mOldItemCount:I

    .line 790
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget-object v1, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v1}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    .line 794
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget v0, v0, Lcom/android/browser/SecBrowserAdapterView;->mOldItemCount:I

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget v0, v0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    if-lez v0, :cond_4c

    .line 796
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget-object v1, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/android/browser/SecBrowserAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/android/browser/SecBrowserAdapterView;->access$000(Lcom/android/browser/SecBrowserAdapterView;Landroid/os/Parcelable;)V

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 801
    :goto_41
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAdapterView;->checkFocus()V

    .line 802
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAdapterView;->requestLayout()V

    .line 803
    return-void

    .line 799
    :cond_4c
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAdapterView;->rememberSyncState()V

    goto :goto_41
.end method

.method public onInvalidated()V
    .registers 7

    .prologue
    .local p0, this:Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;,"Lcom/android/browser/SecBrowserAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 807
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/browser/SecBrowserAdapterView;->mDataChanged:Z

    .line 809
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 812
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    #calls: Lcom/android/browser/SecBrowserAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/android/browser/SecBrowserAdapterView;->access$100(Lcom/android/browser/SecBrowserAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 816
    :cond_1d
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget-object v1, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iget v1, v1, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    iput v1, v0, Lcom/android/browser/SecBrowserAdapterView;->mOldItemCount:I

    .line 817
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iput v3, v0, Lcom/android/browser/SecBrowserAdapterView;->mItemCount:I

    .line 818
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iput v2, v0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedPosition:I

    .line 819
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iput-wide v4, v0, Lcom/android/browser/SecBrowserAdapterView;->mSelectedRowId:J

    .line 820
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iput v2, v0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedPosition:I

    .line 821
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iput-wide v4, v0, Lcom/android/browser/SecBrowserAdapterView;->mNextSelectedRowId:J

    .line 822
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    iput-boolean v3, v0, Lcom/android/browser/SecBrowserAdapterView;->mNeedSync:Z

    .line 824
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAdapterView;->checkFocus()V

    .line 825
    iget-object v0, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterDataSetObserver;->this$0:Lcom/android/browser/SecBrowserAdapterView;

    invoke-virtual {v0}, Lcom/android/browser/SecBrowserAdapterView;->requestLayout()V

    .line 826
    return-void
.end method
