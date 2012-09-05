.class Lcom/google/android/apps/books/app/ReaderFragment$14;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 1914
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter "newText"

    .prologue
    .line 1937
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 4
    .parameter "query"

    .prologue
    const/4 v1, 0x1

    .line 1918
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1932
    :goto_9
    return v1

    .line 1925
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->isSmallDevice()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4300(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1927
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3800(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1931
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$14;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->startSearchWithinVolume(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4400(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/String;)V

    goto :goto_9
.end method
