.class public Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView$ViewType;
.super Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
.source "LocalSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewType"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 82
    const-string v0, "local"

    const v1, 0x7f040003

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;-><init>(Ljava/lang/String;I)V

    .line 83
    return-void
.end method


# virtual methods
.method public canHandleEntry(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .registers 3
    .parameter "entry"

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 88
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->isBusinessListing(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    .line 90
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public bridge synthetic getLayoutId()I
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getLayoutId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getViewType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getViewType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V

    return-void
.end method
