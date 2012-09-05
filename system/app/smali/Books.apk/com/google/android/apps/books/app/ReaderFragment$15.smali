.class Lcom/google/android/apps/books/app/ReaderFragment$15;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 1941
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    .prologue
    .line 1945
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1946
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_16

    .line 1947
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4202(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 1951
    :goto_15
    return-void

    .line 1949
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$15;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4202(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    goto :goto_15
.end method
