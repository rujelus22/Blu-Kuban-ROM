.class public Lcom/android/calendar/CalendarRecentSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "CalendarRecentSuggestionsProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate()Z
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/calendar/CalendarRecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/CalendarRecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 30
    invoke-super {p0}, Landroid/content/SearchRecentSuggestionsProvider;->onCreate()Z

    move-result v0

    return v0
.end method
