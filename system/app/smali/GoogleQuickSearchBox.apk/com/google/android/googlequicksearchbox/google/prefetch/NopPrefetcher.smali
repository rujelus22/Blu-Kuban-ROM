.class public Lcom/google/android/googlequicksearchbox/google/prefetch/NopPrefetcher;
.super Ljava/lang/Object;
.source "NopPrefetcher.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "newQuery"

    .prologue
    .line 36
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method public onSuggestionsDone()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method public performSearch(Ljava/lang/String;)Z
    .registers 3
    .parameter "query"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public prefetch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "query"
    .parameter "suggestion"

    .prologue
    .line 45
    return-void
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2
    .parameter "appSearchData"

    .prologue
    .line 49
    return-void
.end method
