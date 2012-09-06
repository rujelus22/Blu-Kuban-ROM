.class public Lcom/google/android/gsf/SAMLUtils;
.super Ljava/lang/Object;
.source "SAMLUtils.java"


# static fields
.field private static final DEFAULT_HOSTED_BASE_PATH:Ljava/lang/String; = "https://www.google.com"

.field private static final HOSTED_PREFIX:Ljava/lang/String; = "/a/"

.field private static final TEST_GAIA_HOSTED_BASE_PATH:Ljava/lang/String; = "http://dasher-qa.corp.google.com"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "cookieString"
    .parameter "name"

    .prologue
    .line 109
    if-nez p0, :cond_5

    .line 110
    const-string v6, ""

    .line 119
    :goto_4
    return-object v6

    .line 112
    :cond_5
    const-string v6, "; "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, cookieFragments:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v4, :cond_2c

    aget-object v1, v0, v3

    .line 114
    .local v1, cookieFragment:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, nameValue:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_29

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 116
    const/4 v6, 0x1

    aget-object v6, v5, v6

    goto :goto_4

    .line 113
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 119
    .end local v1           #cookieFragment:Ljava/lang/String;
    .end local v5           #nameValue:[Ljava/lang/String;
    :cond_2c
    const-string v6, ""

    goto :goto_4
.end method

.method public static extractHID(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "cookieManager"
    .parameter "domainName"

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-static {v5, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, HIDExtractionPath:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HID"

    invoke-static {v3, v4}, Lcom/google/android/gsf/SAMLUtils;->extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, HID:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_23

    .line 95
    invoke-static {v5, p1}, Lcom/google/android/gsf/SAMLUtils;->makeLSIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, LSIDExtractionPath:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LSID"

    invoke-static {v3, v4}, Lcom/google/android/gsf/SAMLUtils;->extractCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .end local v2           #LSIDExtractionPath:Ljava/lang/String;
    :cond_23
    return-object v0
.end method

.method private static final getHostedBaseUrl(Z)Ljava/lang/String;
    .registers 3
    .parameter "useTestGaia"

    .prologue
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_18

    const-string v0, "http://dasher-qa.corp.google.com"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/a/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v0, "https://www.google.com"

    goto :goto_9
.end method

.method private static makeHIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "useTestGaia"
    .parameter "domainName"

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "useTestGaia"
    .parameter "domainName"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/gsf/SAMLUtils;->getHostedBaseUrl(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeLSIDCookieExtractionPath(ZLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "useTestGaia"
    .parameter "domainName"

    .prologue
    .line 78
    if-eqz p0, :cond_18

    const-string v0, "http://dasher-qa.corp.google.com"

    .line 79
    .local v0, url:Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/accounts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 78
    .end local v0           #url:Ljava/lang/String;
    :cond_18
    const-string v0, "https://www.google.com"

    goto :goto_4
.end method

.method public static makeWebLoginStartUrl(ZLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "useTestGaia"
    .parameter "domainName"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/google/android/gsf/SAMLUtils;->makeHostedGaiaBasePath(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ServiceLogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
