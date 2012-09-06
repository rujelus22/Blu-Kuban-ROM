.class final Lcom/google/android/youtube/app/honeycomb/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/i;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuggestionClick(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/i;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_27

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 105
    :try_start_17
    const-string v2, "suggest_intent_query"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 106
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/i;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-static {v2, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;Ljava/lang/String;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_26} :catch_28

    move-result v0

    .line 112
    :cond_27
    :goto_27
    return v0

    .line 109
    :catch_28
    move-exception v1

    goto :goto_27
.end method

.method public final onSuggestionSelect(I)Z
    .registers 3
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method
