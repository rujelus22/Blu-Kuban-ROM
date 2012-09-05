.class public Lcom/google/android/apps/plus/content/AdsProvider;
.super Landroid/content/ContentProvider;
.source "AdsProvider.java"


# static fields
.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 83
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/content/AdsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 84
    sget-object v0, Lcom/google/android/apps/plus/content/AdsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.plus.platform"

    const-string v2, "ads"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/google/android/apps/plus/content/AdsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.plus.platform"

    const-string v2, "ads/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/google/android/apps/plus/content/AdsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.google.plus.platform"

    const-string v2, "token"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 62
    return-void
.end method

.method private getAdCursor(Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "esAccount"
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v7, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, applicationContext:Landroid/content/Context;
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/google/android/apps/plus/content/AdsProvider$1;

    invoke-direct {v6, p0, v0, p1}, Lcom/google/android/apps/plus/content/AdsProvider$1;-><init>(Lcom/google/android/apps/plus/content/AdsProvider;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    new-instance v2, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, p1, v7, v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 189
    .local v2, operation:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, shareToken:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getAdPlusOne(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 192
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPlusOneResponse()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;

    move-result-object v1

    .line 193
    .local v1, getPlusOneResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->hasPlusoneData()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusonedByViewer()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v3

    .line 198
    .local v3, setByViewer:Z
    :goto_4b
    const-string v5, "AdsProvider"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 199
    const-string v5, "AdsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>> Returning setByViewer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_76
    invoke-static {p3, v4, v3}, Lcom/google/android/apps/plus/content/AdsProvider;->toAdCursor([Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 193
    .end local v3           #setByViewer:Z
    :cond_7b
    const/4 v3, 0x0

    goto :goto_4b
.end method

.method private getDoritosCookieCursor(Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "esAccount"
    .parameter "projection"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {p1}, Lcom/google/android/apps/plus/content/AdsProvider;->getDoritosCookieSharedPreferencesFileName(Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 239
    .local v8, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v9, "drt"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, cachedCookie:Ljava/lang/String;
    if-eqz v0, :cond_52

    .line 241
    const-string v9, "drt_expiry"

    const-wide/16 v10, -0x1

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 242
    .local v5, expiryTimestamp:Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_50

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_50

    const/4 v6, 0x1

    .line 244
    .local v6, isCookieStillValid:Z
    :goto_39
    if-eqz v6, :cond_52

    .line 245
    const-string v9, "AdsProvider"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 246
    const-string v9, "AdsProvider"

    const-string v10, "Returning cached doritos cookie"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_4b
    invoke-static {p2, v0}, Lcom/google/android/apps/plus/content/AdsProvider;->toDoritosCookieCursor([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 270
    .end local v5           #expiryTimestamp:Ljava/lang/Long;
    .end local v6           #isCookieStillValid:Z
    :goto_4f
    return-object v9

    .line 242
    .restart local v5       #expiryTimestamp:Ljava/lang/Long;
    :cond_50
    const/4 v6, 0x0

    goto :goto_39

    .line 251
    .end local v5           #expiryTimestamp:Ljava/lang/Long;
    :cond_52
    const-string v9, "AdsProvider"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 252
    const-string v9, "AdsProvider"

    const-string v10, "Fetching new doritos cookie"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_62
    new-instance v7, Lcom/google/android/apps/plus/api/GetDoritosCookieOperation;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9, p1}, Lcom/google/android/apps/plus/api/GetDoritosCookieOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 256
    .local v7, operation:Lcom/google/android/apps/plus/api/GetDoritosCookieOperation;
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/GetDoritosCookieOperation;->start()V

    .line 257
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/GetDoritosCookieOperation;->getDoritosCookie()Lorg/apache/http/cookie/Cookie;

    move-result-object v1

    .line 258
    .local v1, doritosCookie:Lorg/apache/http/cookie/Cookie;
    if-nez v1, :cond_7b

    .line 259
    const-string v9, ""

    invoke-static {p2, v9}, Lcom/google/android/apps/plus/content/AdsProvider;->toDoritosCookieCursor([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_4f

    .line 261
    :cond_7b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_drt_="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, doritosResult:Ljava/lang/String;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 265
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "drt"

    invoke-interface {v3, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v4

    .line 267
    .local v4, expiryDate:Ljava/util/Date;
    const-string v11, "drt_expiry"

    if-nez v4, :cond_b0

    const-wide/16 v9, 0x0

    :goto_a5
    invoke-interface {v3, v11, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    invoke-static {p2, v2}, Lcom/google/android/apps/plus/content/AdsProvider;->toDoritosCookieCursor([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_4f

    .line 267
    :cond_b0
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    goto :goto_a5
.end method

.method public static getDoritosCookieSharedPreferencesFileName(Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 3
    .parameter "esAccount"

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEsAccount(Landroid/net/Uri;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 158
    const-string v3, "account"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, accountName:Ljava/lang/String;
    if-nez v0, :cond_16

    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 161
    .local v1, esAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v1, :cond_14

    .line 170
    :cond_13
    :goto_13
    return-object v2

    :cond_14
    move-object v2, v1

    .line 164
    goto :goto_13

    .line 166
    .end local v1           #esAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getAccountByName(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 167
    .restart local v1       #esAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_13

    move-object v2, v1

    .line 170
    goto :goto_13
.end method

.method private static toAdCursor([Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .registers 14
    .parameter "projection"
    .parameter "shareToken"
    .parameter "setByViewer"

    .prologue
    .line 213
    new-instance v4, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 214
    .local v4, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v7

    .line 215
    .local v7, row:Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_c
    if-ge v5, v6, :cond_59

    aget-object v3, v0, v5

    .line 216
    .local v3, columnName:Ljava/lang/String;
    const-string v8, "_id"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-long v1, v8

    .line 220
    .local v1, baseId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 215
    .end local v1           #baseId:J
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 221
    :cond_2b
    const-string v8, "has_plus1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 222
    if-eqz p2, :cond_3e

    const/4 v8, 0x1

    :goto_36
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_28

    :cond_3e
    const/4 v8, 0x0

    goto :goto_36

    .line 224
    :cond_40
    new-instance v8, Landroid/database/sqlite/SQLiteException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Column does not exist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 227
    .end local v3           #columnName:Ljava/lang/String;
    :cond_59
    return-object v4
.end method

.method private static toDoritosCookieCursor([Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .parameter "projection"
    .parameter "doritosResult"

    .prologue
    .line 284
    if-eqz p0, :cond_6

    array-length v2, p0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    .line 285
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected a single column projection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_e
    new-instance v0, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 288
    .local v0, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v1

    .line 289
    .local v1, row:Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 290
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/apps/plus/content/AdsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.com.google.plus.platform.ad"

    .line 117
    :goto_24
    return-object v0

    .line 114
    :pswitch_25
    const-string v0, "vnd.android.cursor.item/vnd.com.google.plus.platform.ad"

    goto :goto_24

    .line 117
    :pswitch_28
    const-string v0, "vnd.android.cursor.item/vnd.com.google.plus.platform.token"

    goto :goto_24

    .line 109
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/AdsProvider;->getEsAccount(Landroid/net/Uri;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 132
    .local v0, esAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_f

    .line 133
    const-string v2, "AdsProvider"

    const-string v3, "No active account or specified account could not be found; aborting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_e
    return-object v1

    .line 136
    :cond_f
    const-string v2, "AdsProvider"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 137
    const-string v2, "AdsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Ads query by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", projection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selectionArgs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_58
    sget-object v2, Lcom/google/android/apps/plus/content/AdsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_84

    .line 151
    const-string v2, "AdsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 145
    :pswitch_7a
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/apps/plus/content/AdsProvider;->getAdCursor(Lcom/google/android/apps/plus/content/EsAccount;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_e

    .line 148
    :pswitch_7f
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/content/AdsProvider;->getDoritosCookieCursor(Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_e

    .line 143
    :pswitch_data_84
    .packed-switch 0x2
        :pswitch_7a
        :pswitch_7f
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method
