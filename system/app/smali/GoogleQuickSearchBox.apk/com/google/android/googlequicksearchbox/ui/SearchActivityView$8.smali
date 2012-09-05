.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsController()Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .registers 2
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionsDone(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 503
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 505
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPrefetcher()Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onSuggestionsDone()V

    .line 507
    :cond_13
    return-void
.end method

.method public setSuggestionsUpdating(Z)V
    .registers 4
    .parameter "updating"

    .prologue
    .line 498
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    #getter for: Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUserHasTypedSomething:Z
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$800(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    #calls: Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showTextFieldSpinner(Z)V
    invoke-static {v1, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->access$900(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Z)V

    .line 499
    return-void

    .line 498
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method
