.class public Lcom/google/mobile/googlenav/common/I18n;
.super Ljava/lang/Object;


# static fields
.field private static STRING_RESOURCE:Ljava/lang/String;

.field private static instance:Lcom/google/mobile/googlenav/common/I18n;


# instance fields
.field private embeddedLocalizedStrings:[Ljava/lang/String;

.field private remoteLocalizedStrings:[Ljava/lang/String;

.field private systemLanguage:Ljava/lang/String;

.field private systemLocale:Ljava/lang/String;

.field private uiLanguage:Ljava/lang/String;

.field private uiLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "/strings.dat"

    sput-object v0, Lcom/google/mobile/googlenav/common/I18n;->STRING_RESOURCE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/mobile/googlenav/common/I18n;->instance:Lcom/google/mobile/googlenav/common/I18n;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->embeddedLocalizedStrings:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->remoteLocalizedStrings:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/mobile/googlenav/common/I18n;->calculateSystemLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/mobile/googlenav/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/mobile/googlenav/common/I18n;->locale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/mobile/googlenav/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method

.method private static calculateSystemLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/mobile/googlenav/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.locale"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/mobile/googlenav/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    move-object v0, v1

    goto :goto_23
.end method

.method public static getBestLocaleMatch(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/google/mobile/googlenav/common/I18n;->optimizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/I18n;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    move v4, v7

    move v2, v7

    :goto_d
    array-length v5, p1

    if-ge v2, v5, :cond_22

    aget-object v5, p1, v2

    if-nez v2, :cond_20

    const/4 v6, 0x1

    :goto_15
    invoke-static {v0, v1, v5, v6}, Lcom/google/mobile/googlenav/common/I18n;->getLocaleMatchLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    if-le v5, v3, :cond_1d

    move v3, v5

    move v4, v2

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_20
    move v6, v7

    goto :goto_15

    :cond_22
    aget-object v0, p1, v4

    return-object v0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/mobile/googlenav/common/I18n;->indexOfLocaleSeparator(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    move-object v0, v3

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/I18n;->indexOfLocaleSeparator(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_8

    move-object v0, v3

    goto :goto_8
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/google/mobile/googlenav/common/I18n;->indexOfLocaleSeparator(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static getLocaleMatchLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto :goto_7

    :cond_10
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    goto :goto_7

    :cond_18
    if-eqz p3, :cond_1c

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static indexOfLocaleSeparator(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v0, :cond_10

    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    if-ltz v1, :cond_f

    if-lt v0, v1, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method public static init(Ljava/lang/String;)Lcom/google/mobile/googlenav/common/I18n;
    .registers 2

    new-instance v0, Lcom/google/mobile/googlenav/common/I18n;

    invoke-direct {v0, p0}, Lcom/google/mobile/googlenav/common/I18n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/mobile/googlenav/common/I18n;->instance:Lcom/google/mobile/googlenav/common/I18n;

    sget-object v0, Lcom/google/mobile/googlenav/common/I18n;->instance:Lcom/google/mobile/googlenav/common/I18n;

    return-object v0
.end method

.method public static locale()Ljava/lang/String;
    .registers 1

    const-string v0, "L1"

    return-object v0
.end method

.method public static normalizeLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v2, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "en"

    if-eqz p0, :cond_52

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/mobile/googlenav/common/util/text/TextUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_24

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_52

    :cond_24
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    array-length v2, v1

    if-lt v2, v5, :cond_52

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_52
    return-object v0
.end method

.method private static optimizeLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, "en"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "en_AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "en_NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    const-string v0, "en_GB"

    goto :goto_4

    :cond_18
    const-string v0, "nb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "no"

    goto :goto_4

    :cond_23
    move-object v0, p0

    goto :goto_4
.end method


# virtual methods
.method public getUiLocale()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->uiLocale:Ljava/lang/String;

    return-object v0
.end method

.method public setSystemLocale(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/google/mobile/googlenav/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->systemLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->systemLocale:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_15

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->systemLocale:Ljava/lang/String;

    :goto_12
    iput-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->systemLanguage:Ljava/lang/String;

    return-void

    :cond_15
    iget-object v1, p0, Lcom/google/mobile/googlenav/common/I18n;->systemLocale:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public setUiLocale(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    invoke-static {p1}, Lcom/google/mobile/googlenav/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->uiLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->uiLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/I18n;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->uiLanguage:Ljava/lang/String;

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/mobile/googlenav/common/I18n;->systemLocale:Ljava/lang/String;

    goto :goto_6
.end method
