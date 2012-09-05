.class public Lcom/google/android/tts/network/NetworkLangCountryHelper;
.super Ljava/lang/Object;
.source "NetworkLangCountryHelper.java"


# instance fields
.field private final mAvailableLangCountries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableLangs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter "ctx"
    .parameter "availableLangsId"
    .parameter "availableCountriesId"

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/tts/network/NetworkLangCountryHelper;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .parameter "availableLangs"
    .parameter "availableLangCountries"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangs:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangCountries:Ljava/util/Map;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/network/NetworkLangCountryHelper;->buildDataMaps([Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private buildDataMaps([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14
    .parameter "availableLangs"
    .parameter "availableCountries"

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x0

    .line 32
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v5, :cond_26

    aget-object v3, v0, v1

    .line 36
    .local v3, lang:Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 37
    .local v6, sep:I
    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, key:Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, value:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangs:Ljava/util/Map;

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 42
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #lang:Ljava/lang/String;
    .end local v6           #sep:I
    .end local v7           #value:Ljava/lang/String;
    :cond_26
    move-object v0, p2

    array-length v5, v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v5, :cond_43

    aget-object v4, v0, v1

    .line 43
    .local v4, langCountry:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 44
    .restart local v6       #sep:I
    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 45
    .restart local v2       #key:Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 46
    .restart local v7       #value:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangCountries:Ljava/util/Map;

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 48
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #langCountry:Ljava/lang/String;
    .end local v6           #sep:I
    .end local v7           #value:Ljava/lang/String;
    :cond_43
    return-void
.end method

.method private buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "language"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "country"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inferCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "language"
    .parameter "country"

    .prologue
    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 102
    .end local p2
    :goto_6
    return-object p2

    .line 93
    .restart local p2
    :cond_7
    const-string v0, "deu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 94
    const-string p2, "deu"

    goto :goto_6

    .line 95
    :cond_12
    const-string v0, "ita"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 96
    const-string p2, "ita"

    goto :goto_6

    .line 97
    :cond_1d
    const-string v0, "fra"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 98
    const-string p2, "fra"

    goto :goto_6

    .line 99
    :cond_28
    const-string v0, "spa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 100
    const-string p2, "esp"

    goto :goto_6

    .line 102
    :cond_33
    const/4 p2, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getBcp47Code(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "language"
    .parameter "country"

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/network/NetworkLangCountryHelper;->inferCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, countryInferred:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 72
    if-eqz p2, :cond_26

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/tts/network/NetworkLangCountryHelper;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangCountries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 75
    iget-object v2, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangCountries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .end local v1           #key:Ljava/lang/String;
    :goto_25
    return-object v2

    .line 79
    :cond_26
    iget-object v2, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_25

    .line 82
    :cond_2f
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "language"
    .parameter "country"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 54
    if-eqz p2, :cond_1b

    .line 55
    iget-object v0, p0, Lcom/google/android/tts/network/NetworkLangCountryHelper;->mAvailableLangCountries:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/google/android/tts/network/NetworkLangCountryHelper;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 56
    const/4 v0, 0x1

    .line 63
    :goto_1a
    return v0

    .line 60
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a

    .line 63
    :cond_1d
    const/4 v0, -0x2

    goto :goto_1a
.end method
