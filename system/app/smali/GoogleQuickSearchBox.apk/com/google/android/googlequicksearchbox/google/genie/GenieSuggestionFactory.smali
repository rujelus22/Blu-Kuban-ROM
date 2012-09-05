.class public Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
.super Ljava/lang/Object;
.source "GenieSuggestionFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/Maps;)V
    .registers 3
    .parameter "context"
    .parameter "maps"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    .line 56
    return-void
.end method

.method private createBusinessListingSuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;ZLcom/google/android/googlequicksearchbox/google/Maps;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .registers 15
    .parameter "entry"
    .parameter "logData"
    .parameter "fresh"
    .parameter "maps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 188
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 189
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, cid:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "is_business_listing"

    aput-object v6, v5, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v7, "business_rating"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/google/android/googlequicksearchbox/MapBackedSuggestionExtras;->fromKeyValuePairs([Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v1

    .line 194
    .local v1, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    invoke-direct {p0, p1, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->makeBusinessListingText2(Lorg/json/JSONArray;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 195
    .local v3, text2:Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v0, v5}, Lcom/google/android/googlequicksearchbox/google/Maps;->getBusinessUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 196
    .local v2, intentData:Landroid/net/Uri;
    invoke-virtual {p2, v8}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickTypeIfNotSet(I)V

    .line 198
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text2(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    const v6, 0x7f02001a

    invoke-direct {p0, v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getResourceUriString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->icon1(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {p4}, Lcom/google/android/googlequicksearchbox/google/Maps;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentComponent(Landroid/content/ComponentName;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->extras(Lcom/google/android/googlequicksearchbox/SuggestionExtras;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v5

    return-object v5
.end method

.method private createNavSuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .registers 8
    .parameter "entry"
    .parameter "logData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x7

    .line 139
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 140
    .local v0, title:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, url:Landroid/net/Uri;
    invoke-virtual {p2, v4}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickTypeIfNotSet(I)V

    .line 142
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text2Url(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    const v3, 0x7f020022

    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getResourceUriString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->icon1(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    return-object v2
.end method

.method private createQuerySuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .registers 9
    .parameter "entry"
    .parameter "logData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickTypeIfNotSet(I)V

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, prefetch:Z
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-le v3, v4, :cond_19

    .line 125
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_44

    const/4 v0, 0x1

    .line 127
    :cond_19
    :goto_19
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->shouldPrefetch(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    return-object v2

    :cond_44
    move v0, v2

    .line 125
    goto :goto_19
.end method

.method private createSearchHistorySuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .registers 10
    .parameter "entry"
    .parameter "logData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p2, v6}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickTypeIfNotSet(I)V

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, prefetch:Z
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v5, :cond_1a

    .line 160
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_49

    move v0, v2

    .line 162
    :cond_1a
    :goto_1a
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v3

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->shouldPrefetch(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    return-object v2

    :cond_49
    move v0, v3

    .line 160
    goto :goto_1a
.end method

.method public static getBusinessRating(Lcom/google/android/googlequicksearchbox/Suggestion;)F
    .registers 6
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 220
    if-nez p0, :cond_e

    move-object v0, v2

    .line 221
    .local v0, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :goto_5
    if-nez v0, :cond_13

    .line 222
    .local v2, rating:Ljava/lang/String;
    :goto_7
    if-eqz v2, :cond_d

    .line 224
    :try_start_9
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_1a

    move-result v3

    .line 229
    :cond_d
    :goto_d
    return v3

    .line 220
    .end local v0           #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .end local v2           #rating:Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v0

    goto :goto_5

    .line 221
    .restart local v0       #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :cond_13
    const-string v4, "business_rating"

    invoke-interface {v0, v4}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 225
    .restart local v2       #rating:Ljava/lang/String;
    :catch_1a
    move-exception v1

    .line 226
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_d
.end method

.method private getResourceUriString(I)Ljava/lang/String;
    .registers 3
    .parameter "resId"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/util/Util;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBusinessListing(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .registers 4
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 213
    if-nez p0, :cond_a

    move-object v0, v1

    .line 214
    .local v0, extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :goto_4
    if-nez v0, :cond_f

    .line 216
    .local v1, isListing:Ljava/lang/String;
    :goto_6
    if-nez v1, :cond_16

    const/4 v2, 0x0

    :goto_9
    return v2

    .line 213
    .end local v0           #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    .end local v1           #isListing:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v0

    goto :goto_4

    .line 214
    .restart local v0       #extras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;
    :cond_f
    const-string v2, "is_business_listing"

    invoke-interface {v0, v2}, Lcom/google/android/googlequicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 216
    .restart local v1       #isListing:Ljava/lang/String;
    :cond_16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_9
.end method

.method private makeBusinessListingText2(Lorg/json/JSONArray;Z)Ljava/lang/CharSequence;
    .registers 8
    .parameter "entry"
    .parameter "mFresh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 175
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, distance:Ljava/lang/String;
    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, address:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v1, description:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_31

    if-eqz p2, :cond_31

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public fromExtraData(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    .registers 9
    .parameter "extraDataStr"
    .parameter "userQuery"

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, extraData:Lorg/json/JSONObject;
    const-string v3, "log"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->fromJson(Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_1d

    if-eqz p2, :cond_1d

    .line 91
    invoke-virtual {v2, p2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putQuery(Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1e

    .line 97
    .end local v1           #extraData:Lorg/json/JSONObject;
    .end local v2           #logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    :cond_1d
    :goto_1d
    return-object v2

    .line 95
    .restart local v2       #logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    :catch_1e
    move-exception v0

    .line 96
    .local v0, ex:Lorg/json/JSONException;
    const-string v3, "QSB.GenieSuggestionFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing extra data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public fromJson(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;Z)Lcom/google/android/googlequicksearchbox/Suggestion;
    .registers 9
    .parameter "entry"
    .parameter "logData"
    .parameter "fresh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_4

    .line 76
    :goto_3
    return-object v1

    .line 64
    :cond_4
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 65
    .local v0, entryType:I
    sparse-switch v0, :sswitch_data_3c

    .line 75
    const-string v2, "QSB.GenieSuggestionFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown entry type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 67
    :sswitch_25
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->createQuerySuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    goto :goto_3

    .line 69
    :sswitch_2a
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->createNavSuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    goto :goto_3

    .line 71
    :sswitch_2f
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->createBusinessListingSuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;ZLcom/google/android/googlequicksearchbox/google/Maps;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    goto :goto_3

    .line 73
    :sswitch_36
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->createSearchHistorySuggestion(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    goto :goto_3

    .line 65
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_25
        0x5 -> :sswitch_2a
        0x17 -> :sswitch_2f
        0x19 -> :sswitch_36
    .end sparse-switch
.end method

.method public getIntentExtraData(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)Ljava/lang/String;
    .registers 7
    .parameter "logData"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, extraData:Lorg/json/JSONObject;
    if-eqz p1, :cond_11

    .line 104
    new-instance v1, Lorg/json/JSONObject;

    .end local v1           #extraData:Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .restart local v1       #extraData:Lorg/json/JSONObject;
    :try_start_8
    const-string v2, "log"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->toJson()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_15

    .line 111
    :cond_11
    :goto_11
    if-nez v1, :cond_2f

    const/4 v2, 0x0

    :goto_14
    return-object v2

    .line 107
    :catch_15
    move-exception v0

    .line 108
    .local v0, ex:Lorg/json/JSONException;
    const-string v2, "QSB.GenieSuggestionFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adding log data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 111
    .end local v0           #ex:Lorg/json/JSONException;
    :cond_2f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14
.end method
