.class Lcom/google/android/apps/books/app/HomeMenuFragment$3;
.super Ljava/lang/Object;
.source "HomeMenuFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/HomeMenuFragment;->configureSearchView(Landroid/content/Context;Landroid/widget/SearchView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

.field final synthetic val$searchView:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Landroid/widget/SearchView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->val$searchView:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter "newText"

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    #setter for: Lcom/google/android/apps/books/app/HomeMenuFragment;->mLastQuery:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$102(Lcom/google/android/apps/books/app/HomeMenuFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 6
    .parameter "query"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->val$searchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->val$searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    #calls: Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$200(Lcom/google/android/apps/books/app/HomeMenuFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startSearch(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$3;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    #setter for: Lcom/google/android/apps/books/app/HomeMenuFragment;->mLastQuery:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$102(Lcom/google/android/apps/books/app/HomeMenuFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    return v2
.end method
