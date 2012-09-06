.class public Lcom/google/android/apps/unveil/history/SuggestionProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SuggestionProvider.java"


# static fields
.field public static final MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    sget v0, Lcom/google/android/apps/unveil/R$string;->suggestion_provider_authority:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()Z
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/history/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/history/SuggestionProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/unveil/history/SuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 28
    invoke-super {p0}, Landroid/content/SearchRecentSuggestionsProvider;->onCreate()Z

    move-result v0

    return v0
.end method
