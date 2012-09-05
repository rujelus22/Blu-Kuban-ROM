.class Lcom/google/android/apps/books/app/HomeMenuFragment$2;
.super Ljava/lang/Object;
.source "HomeMenuFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


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

.field final synthetic val$adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

.field final synthetic val$searchView:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;Landroid/widget/SearchView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

    iput-object p3, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$searchView:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .registers 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 117
    iget-object v5, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_2f

    move v1, v3

    .line 120
    .local v1, lastItem:Z
    :goto_e
    iget-object v5, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$searchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 121
    iget-object v5, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$searchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 123
    if-eqz v1, :cond_31

    .line 124
    iget-object v4, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    #calls: Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v4}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$200(Lcom/google/android/apps/books/app/HomeMenuFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    #getter for: Lcom/google/android/apps/books/app/HomeMenuFragment;->mLastQuery:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$100(Lcom/google/android/apps/books/app/HomeMenuFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startSearch(Ljava/lang/String;)V

    .line 136
    :goto_29
    iget-object v4, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    #setter for: Lcom/google/android/apps/books/app/HomeMenuFragment;->mLastQuery:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$102(Lcom/google/android/apps/books/app/HomeMenuFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    return v3

    .end local v1           #lastItem:Z
    :cond_2f
    move v1, v4

    .line 117
    goto :goto_e

    .line 129
    .restart local v1       #lastItem:Z
    :cond_31
    iget-object v5, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->val$adapter:Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;

    invoke-virtual {v5, p1}, Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 130
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, volumeId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$2;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    #calls: Lcom/google/android/apps/books/app/HomeMenuFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v5}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$200(Lcom/google/android/apps/books/app/HomeMenuFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5, v2, v4, v4, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToReader(Ljava/lang/String;ZZZ)V

    goto :goto_29
.end method

.method public onSuggestionSelect(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method
