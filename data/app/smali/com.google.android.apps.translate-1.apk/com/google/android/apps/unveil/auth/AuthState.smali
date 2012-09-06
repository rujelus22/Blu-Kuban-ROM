.class public Lcom/google/android/apps/unveil/auth/AuthState;
.super Ljava/lang/Object;
.source "AuthState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/auth/AuthState$1;,
        Lcom/google/android/apps/unveil/auth/AuthState$ParcelCreator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/unveil/auth/AuthState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected account:Ljava/lang/String;

.field protected authCookieUrl:Ljava/lang/String;

.field protected lastModifiedTimestamp:J

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field protected prodCookieUrl:Ljava/lang/String;

.field protected tokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;",
            "Lcom/google/android/apps/unveil/auth/AuthToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/apps/unveil/auth/AuthState$ParcelCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/auth/AuthState$ParcelCreator;-><init>(Lcom/google/android/apps/unveil/auth/AuthState$1;)V

    sput-object v0, Lcom/google/android/apps/unveil/auth/AuthState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->tokenCache:Ljava/util/Map;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->lastModifiedTimestamp:J

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->authCookieUrl:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->prodCookieUrl:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 5
    .parameter "frontendUrl"
    .parameter "prodCookieUrl"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->tokenCache:Ljava/util/Map;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->lastModifiedTimestamp:J

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/unveil/auth/AuthState;->setUrls(Ljava/net/URL;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private setAuthCookie(Ljava/lang/String;)V
    .registers 8
    .parameter "authToken"

    .prologue
    .line 114
    if-nez p1, :cond_3

    .line 124
    :cond_2
    :goto_2
    return-void

    .line 117
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, cookie:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/auth/AuthState;->authCookieUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->authCookieUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/unveil/auth/AuthState;->prodCookieUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Setting a second cookie for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/unveil/auth/AuthState;->prodCookieUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/auth/AuthState;->prodCookieUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateTimestamp()V
    .registers 3

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->lastModifiedTimestamp:J

    .line 128
    return-void
.end method


# virtual methods
.method public clearAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)V
    .registers 3
    .parameter "tokenType"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->tokenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    if-ne p1, v0, :cond_10

    .line 106
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 108
    :cond_10
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)Ljava/lang/String;
    .registers 4
    .parameter "tokenType"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->tokenCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/auth/AuthToken;

    .line 92
    .local v0, authToken:Lcom/google/android/apps/unveil/auth/AuthToken;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/google/android/apps/unveil/auth/AuthToken;->authTokenValue:Ljava/lang/String;

    goto :goto_b
.end method

.method public getLastUpdateTimestamp()J
    .registers 3

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->lastModifiedTimestamp:J

    return-wide v0
.end method

.method public isAuthenticated(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;)Z
    .registers 3
    .parameter "tokenType"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->tokenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOlderThan(Lcom/google/android/apps/unveil/auth/AuthState;)Z
    .registers 6
    .parameter "authState"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->lastModifiedTimestamp:J

    iget-wide v2, p1, Lcom/google/android/apps/unveil/auth/AuthState;->lastModifiedTimestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->account:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/google/android/apps/unveil/auth/AuthState;->updateTimestamp()V

    .line 84
    return-void
.end method

.method public setAuthToken(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;Ljava/lang/String;)V
    .registers 5
    .parameter "tokenType"
    .parameter "token"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->tokenCache:Ljava/util/Map;

    new-instance v1, Lcom/google/android/apps/unveil/auth/AuthToken;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/unveil/auth/AuthToken;-><init>(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->SID:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    if-ne p1, v0, :cond_11

    .line 98
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/auth/AuthState;->setAuthCookie(Ljava/lang/String;)V

    .line 100
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/unveil/auth/AuthState;->updateTimestamp()V

    .line 101
    return-void
.end method

.method public setUrls(Ljava/net/URL;Ljava/lang/String;)V
    .registers 9
    .parameter "frontendUrl"
    .parameter "prodCookieUrl"

    .prologue
    .line 58
    iput-object p2, p0, Lcom/google/android/apps/unveil/auth/AuthState;->prodCookieUrl:Ljava/lang/String;

    .line 59
    move-object v0, p2

    .line 61
    .local v0, cookieUrl:Ljava/lang/String;
    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_19
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_19} :catch_1d

    move-result-object v0

    .line 67
    :goto_1a
    iput-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthState;->authCookieUrl:Ljava/lang/String;

    .line 68
    return-void

    .line 63
    :catch_1d
    move-exception v1

    goto :goto_1a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->authCookieUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->prodCookieUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->account:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-wide v1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->lastModifiedTimestamp:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/unveil/auth/AuthState;->tokenCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/auth/AuthToken;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 172
    return-void
.end method
