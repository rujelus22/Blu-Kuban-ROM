.class public Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;
.super Ljava/lang/Object;
.source "BrowserSourceFilter.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionFilter;


# static fields
.field private static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;


# instance fields
.field private mAcceptedResults:I

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mMaxResults:I

.field private final mSearchAuthorityPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const-string v0, "(?i)((?:http|https|file):\\/\\/|(?:inline|data|about|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;I)V
    .registers 5
    .parameter "context"
    .parameter "config"
    .parameter "maxResults"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const v0, 0x7f0b0003

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mSearchAuthorityPrefix:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 41
    iput p3, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mMaxResults:I

    .line 42
    return-void
.end method

.method private static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "inUrl"

    .prologue
    .line 101
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 102
    .local v2, colon:I
    const/4 v0, 0x1

    .line 103
    .local v0, allLower:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_8
    if-ge v3, v2, :cond_14

    .line 104
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 105
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_25

    .line 114
    .end local v1           #ch:C
    :cond_14
    const-string v4, "http://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "https://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 122
    :cond_24
    :goto_24
    return-object p0

    .line 108
    .restart local v1       #ch:C
    :cond_25
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v0, v4

    .line 109
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_4e

    if-nez v0, :cond_4e

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 103
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 116
    .end local v1           #ch:C
    :cond_51
    const-string v4, "http:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_61

    const-string v4, "https:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 118
    :cond_61
    const-string v4, "http:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_71

    const-string v4, "https:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 119
    :cond_71
    const-string v4, "/"

    const-string v5, "//"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    .line 120
    :cond_7a
    const-string v4, ":"

    const-string v5, "://"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_24
.end method

.method private isPreviousSearchResultsPage(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .registers 5
    .parameter "s"

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    .local v0, url:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mSearchAuthorityPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/Config;->shouldFilterGoogleDomainPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private isText1Uri(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .registers 4
    .parameter "s"

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUrlLikeByBrowserHeuristics(Ljava/lang/String;)Z
    .registers 3
    .parameter "inUrl"

    .prologue
    .line 126
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, url:Ljava/lang/String;
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 130
    :cond_20
    const/4 v1, 0x1

    .line 133
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method


# virtual methods
.method public accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .registers 6
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 46
    iget v2, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mAcceptedResults:I

    iget v3, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mMaxResults:I

    if-lt v2, v3, :cond_8

    .line 66
    :cond_7
    :goto_7
    return v1

    .line 51
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->isText1Uri(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->isPreviousSearchResultsPage(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 61
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, intentData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->isUrlLikeByBrowserHeuristics(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 63
    :cond_24
    iget v1, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mAcceptedResults:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/BrowserSourceFilter;->mAcceptedResults:I

    .line 64
    const/4 v1, 0x1

    goto :goto_7
.end method
