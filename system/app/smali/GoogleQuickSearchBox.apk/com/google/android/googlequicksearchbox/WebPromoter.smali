.class public Lcom/google/android/googlequicksearchbox/WebPromoter;
.super Lcom/google/android/googlequicksearchbox/AbstractPromoter;
.source "WebPromoter.java"


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V
    .registers 5
    .parameter "sources"
    .parameter "filter"
    .parameter "next"
    .parameter "config"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/AbstractPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 30
    return-void
.end method


# virtual methods
.method public doPickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .registers 9
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"
    .parameter "currentlyDisplayed"

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebResult()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v2

    .line 38
    .local v2, webResult:Lcom/google/android/googlequicksearchbox/SuggestionList;
    if-nez v2, :cond_24

    const/4 v1, 0x0

    .line 40
    .local v1, webCount:I
    :goto_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_29

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->getCount()I

    move-result v3

    if-ge v3, p2, :cond_29

    .line 41
    invoke-interface {v2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 43
    invoke-interface {v2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 40
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 38
    .end local v0           #i:I
    .end local v1           #webCount:I
    :cond_24
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    goto :goto_7

    .line 48
    .restart local v0       #i:I
    .restart local v1       #webCount:I
    :cond_29
    return-void
.end method
