.class public Lcom/google/android/apps/reader/content/ReaderSync;
.super Ljava/lang/Object;
.source "ReaderSync.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/content/ReaderSync$PendingActionsQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_LOCK:Ljava/lang/Object; = null

.field private static KEEP_EDITS:Z = false

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_PREFERENCES_ONLY:I = 0x4

.field public static final MODE_UPLOAD_ONLY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ReaderSync"


# instance fields
.field protected final mAccount:Lcom/google/android/accounts/Account;

.field protected final mConfig:Lcom/google/android/apps/reader/util/Config;

.field protected final mContentLoader:Lcom/google/android/apps/reader/content/ContentLoader;

.field protected final mContext:Landroid/content/Context;

.field protected final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDownloadPreferences:Z

.field private mDownloadRecentStreams:Z

.field private mDownloadSubscriptions:Z

.field private mDownloadTags:Z

.field private mDownloadUnreadCounts:Z

.field private final mPostHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

.field private final mPreferencesHandler:Ljava/net/ContentHandler;

.field protected final mReaderPreferences:Landroid/content/SharedPreferences;

.field private final mStreamPreferencesHandler:Ljava/net/ContentHandler;

.field private mSyncStart:J

.field private mToken:Ljava/lang/String;

.field private final mTokenHandler:Ljava/net/ContentHandler;

.field private mUploadPendingActions:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/reader/content/ReaderSync;->KEEP_EDITS:Z

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/reader/content/ReaderSync;->ACTION_SYNC_LOCK:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Lcom/google/android/apps/reader/content/ContentLoader;Ljava/net/ContentHandler;Ljava/net/ContentHandler;Ljava/net/ContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;)V
    .registers 11
    .parameter "context"
    .parameter "db"
    .parameter "account"
    .parameter "contentLoader"
    .parameter "tokenHandler"
    .parameter "preferencesHandler"
    .parameter "streamPreferencesHandler"
    .parameter "httpPostHandler"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-nez p1, :cond_d

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_d
    if-nez p2, :cond_17

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Database is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_17
    if-nez p3, :cond_21

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_21
    if-nez p4, :cond_2b

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Feed resolver factory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2b
    if-nez p5, :cond_35

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Token handler is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_35
    if-nez p6, :cond_3f

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Preferences handler is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_3f
    if-nez p7, :cond_49

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream preferences handler is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_49
    if-nez p8, :cond_53

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HTTP POST handler is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_53
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mContext:Landroid/content/Context;

    .line 191
    invoke-static {p1}, Lcom/google/android/apps/reader/util/Config;->get(Landroid/content/Context;)Lcom/google/android/apps/reader/util/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mConfig:Lcom/google/android/apps/reader/util/Config;

    .line 192
    iput-object p2, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    iput-object p3, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    .line 194
    iput-object p4, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mContentLoader:Lcom/google/android/apps/reader/content/ContentLoader;

    .line 195
    invoke-static {p1, p3}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getSharedPreferences(Landroid/content/Context;Lcom/google/android/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mReaderPreferences:Landroid/content/SharedPreferences;

    .line 196
    iput-object p5, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mTokenHandler:Ljava/net/ContentHandler;

    .line 197
    iput-object p6, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mPreferencesHandler:Ljava/net/ContentHandler;

    .line 198
    iput-object p7, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mStreamPreferencesHandler:Ljava/net/ContentHandler;

    .line 199
    iput-object p8, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mPostHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/ReaderSync;->setMode(I)V

    .line 201
    return-void
.end method

.method private commitPendingAction(J)V
    .registers 9
    .parameter

    .prologue
    .line 297
    sget-boolean v0, Lcom/google/android/apps/reader/content/ReaderSync;->KEEP_EDITS:Z

    if-eqz v0, :cond_2c

    .line 298
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 300
    const-string v2, "committed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    const-string v2, "_id = ?"

    .line 302
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 303
    const-string v4, "pending_actions"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    :goto_2b
    return-void

    .line 305
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/content/ReaderSync;->deletePendingAction(J)V

    goto :goto_2b
.end method

.method private deletePendingAction(J)V
    .registers 8
    .parameter

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 316
    const-string v1, "_id = ?"

    .line 317
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 318
    const-string v3, "pending_actions"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method private getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    return-object v0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private getToken()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mToken:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 233
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->token()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mTokenHandler:Ljava/net/ContentHandler;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mToken:Ljava/lang/String;

    .line 235
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private static isExpired(J)Z
    .registers 6
    .parameter "timestamp"

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p0

    .line 110
    .local v0, age:J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private logHttpNotFound(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mConfig:Lcom/google/android/apps/reader/util/Config;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Config;->logd()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 120
    const-string v0, "ReaderSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_20
    return-void

    .line 122
    :cond_21
    const-string v0, "ReaderSync"

    const-string v1, "Stream not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private static now()J
    .registers 2

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private queryPendingActions()Landroid/database/Cursor;
    .registers 12

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v8

    .line 280
    .local v8, account:Lcom/google/android/accounts/Account;
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 281
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "pending_actions"

    .line 282
    .local v1, table:Ljava/lang/String;
    sget-object v2, Lcom/google/android/apps/reader/content/ReaderSync$PendingActionsQuery;->PROJECTION:[Ljava/lang/String;

    .line 283
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND committed IS NULL"

    .line 284
    .local v3, selection:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v8, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v4, v9

    .line 285
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 286
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 287
    .local v6, having:Ljava/lang/String;
    const-string v7, "created ASC"

    .line 288
    .local v7, orderBy:Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {}, Lcom/google/android/apps/reader/content/ReaderSync;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mSyncStart:J

    .line 555
    iget-boolean v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mUploadPendingActions:Z

    if-eqz v0, :cond_d

    .line 556
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->uploadPendingActions()V

    .line 558
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadPreferences:Z

    if-eqz v0, :cond_14

    .line 559
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadPreferences()V

    .line 561
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadSubscriptions:Z

    if-eqz v0, :cond_1b

    .line 562
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadSubscriptions()V

    .line 564
    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadTags:Z

    if-eqz v0, :cond_22

    .line 565
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadTags()V

    .line 567
    :cond_22
    iget-boolean v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadUnreadCounts:Z

    if-eqz v0, :cond_29

    .line 568
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadUnreadCounts()V

    .line 570
    :cond_29
    iget-boolean v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadRecentStreams:Z

    if-eqz v0, :cond_32

    .line 571
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadRecentStreams(I)V

    .line 573
    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final downloadContent(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Lcom/google/android/apps/reader/content/ReaderSync;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mSyncStart:J

    sub-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract;->withMaxAge(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 394
    .local v0, contentUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mContentLoader:Lcom/google/android/apps/reader/content/ContentLoader;

    invoke-interface {v1, v0}, Lcom/google/android/apps/reader/content/ContentLoader;->loadContent(Landroid/net/Uri;)V

    .line 395
    return-void
.end method

.method protected final downloadPreferences()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->listPreferences()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mPreferencesHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderSync;->get(Landroid/net/Uri;Ljava/net/ContentHandler;)V

    .line 375
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->listStreamPreferences()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mStreamPreferencesHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/content/ReaderSync;->get(Landroid/net/Uri;Ljava/net/ContentHandler;)V

    .line 376
    return-void
.end method

.method protected final downloadRecentStreams(I)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 506
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unread_counts LEFT JOIN usage ON ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    const-string v2, "usage.account_name = unread_counts.account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v2, "usage.stream_id = unread_counts.stream_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 514
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "unread_counts.stream_id"

    aput-object v1, v2, v9

    .line 515
    const-string v3, "unread_counts.account_name = ? AND unread_count != 0"

    .line 516
    new-array v4, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v1, v1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v9

    .line 525
    const-string v7, "usage.timestamp DESC, unread_counts.stream_id LIKE \'user/%\' DESC"

    .line 527
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 528
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v9

    .line 531
    :goto_4b
    :try_start_4b
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 532
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_65

    move-result-object v2

    .line 534
    :try_start_56
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadStream(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_65
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_56 .. :try_end_59} :catch_5c

    .line 531
    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 535
    :catch_5c
    move-exception v3

    .line 536
    :try_start_5d
    invoke-virtual {v3}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    packed-switch v4, :pswitch_data_72

    .line 541
    throw v3
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_65

    .line 546
    :catchall_65
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 538
    :pswitch_6a
    :try_start_6a
    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/content/ReaderSync;->logHttpNotFound(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_65

    goto :goto_59

    .line 546
    :cond_6e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 548
    return-void

    .line 536
    :pswitch_data_72
    .packed-switch 0x194
        :pswitch_6a
    .end packed-switch
.end method

.method protected final downloadStream(Ljava/lang/String;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mContext:Landroid/content/Context;

    .line 404
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    .line 405
    sget-object v2, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mReaderPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x1

    .line 406
    :goto_21
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getRanking(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v1, p1, v2, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 408
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadContent(Landroid/net/Uri;)V

    .line 409
    return-void

    .line 405
    :cond_2f
    const/4 v2, 0x0

    goto :goto_21
.end method

.method protected final downloadSubscriptionStreams()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 447
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 450
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 451
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadContent(Landroid/net/Uri;)V

    .line 452
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 456
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v6

    .line 458
    :goto_1f
    :try_start_1f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 459
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadStream(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_34

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 463
    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 465
    return-void

    .line 463
    :catchall_34
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected final downloadSubscriptions()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadContent(Landroid/net/Uri;)V

    .line 474
    return-void
.end method

.method protected final downloadTagStreams()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 419
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 422
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 423
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadContent(Landroid/net/Uri;)V

    .line 424
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    .line 428
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v6

    .line 430
    :goto_1f
    :try_start_1f
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 431
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadStream(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_34

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 435
    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 437
    return-void

    .line 435
    :catchall_34
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected final downloadTags()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadContent(Landroid/net/Uri;)V

    .line 483
    return-void
.end method

.method protected final downloadUnreadCounts()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/ReaderSync;->downloadContent(Landroid/net/Uri;)V

    .line 490
    return-void
.end method

.method protected get(Landroid/net/Uri;Ljava/net/ContentHandler;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method protected post(Landroid/net/Uri;Lorg/apache/http/HttpEntity;)I
    .registers 6
    .parameter "uri"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 247
    if-nez p1, :cond_9

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 250
    :cond_9
    if-nez p2, :cond_11

    .line 251
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 253
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mPostHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    .line 255
    .local v0, handler:Lcom/google/android/apps/reader/net/HttpContentHandler;
    :try_start_13
    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 256
    invoke-static {p1, v0}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getResponseCode(Landroid/net/Uri;Lcom/google/android/apps/reader/net/HttpContentHandler;)I
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1e

    move-result v1

    .line 258
    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    return v1

    :catchall_1e
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    throw v1
.end method

.method public setMode(I)V
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 204
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_32

    move v1, v3

    .line 205
    .local v1, uploadOnly:Z
    :goto_7
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_34

    move v0, v3

    .line 206
    .local v0, preferencesOnly:Z
    :goto_c
    iput-boolean v3, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mUploadPendingActions:Z

    .line 207
    if-eqz v1, :cond_12

    if-eqz v0, :cond_36

    :cond_12
    move v2, v3

    :goto_13
    iput-boolean v2, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadPreferences:Z

    .line 208
    if-nez v1, :cond_38

    if-nez v0, :cond_38

    move v2, v3

    :goto_1a
    iput-boolean v2, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadSubscriptions:Z

    .line 209
    if-nez v1, :cond_3a

    if-nez v0, :cond_3a

    move v2, v3

    :goto_21
    iput-boolean v2, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadTags:Z

    .line 210
    if-nez v1, :cond_3c

    if-nez v0, :cond_3c

    move v2, v3

    :goto_28
    iput-boolean v2, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadUnreadCounts:Z

    .line 211
    if-nez v1, :cond_3e

    if-nez v0, :cond_3e

    move v2, v3

    :goto_2f
    iput-boolean v2, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadRecentStreams:Z

    .line 212
    return-void

    .end local v0           #preferencesOnly:Z
    .end local v1           #uploadOnly:Z
    :cond_32
    move v1, v4

    .line 204
    goto :goto_7

    .restart local v1       #uploadOnly:Z
    :cond_34
    move v0, v4

    .line 205
    goto :goto_c

    .restart local v0       #preferencesOnly:Z
    :cond_36
    move v2, v4

    .line 207
    goto :goto_13

    :cond_38
    move v2, v4

    .line 208
    goto :goto_1a

    :cond_3a
    move v2, v4

    .line 209
    goto :goto_21

    :cond_3c
    move v2, v4

    .line 210
    goto :goto_28

    :cond_3e
    move v2, v4

    .line 211
    goto :goto_2f
.end method

.method protected final uploadPendingActions()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 323
    sget-object v0, Lcom/google/android/apps/reader/content/ReaderSync;->ACTION_SYNC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->queryPendingActions()Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b6

    move-result-object v1

    .line 326
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 327
    if-eqz v2, :cond_1d

    .line 328
    const-string v3, "Uploading %d pending actions"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1d
    move v2, v6

    .line 330
    :goto_1e
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 331
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 332
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 333
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 334
    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 335
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 338
    iget-boolean v9, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadSubscriptions:Z

    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->editSubscription()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadSubscriptions:Z

    .line 341
    iget-boolean v9, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadUnreadCounts:Z

    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->markAllAsRead()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/google/android/apps/reader/content/ReaderSync;->mDownloadUnreadCounts:Z

    .line 343
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "&T="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderSync;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 344
    new-instance v9, Lorg/apache/http/entity/StringEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v9, v6}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, v5, v9}, Lcom/google/android/apps/reader/content/ReaderSync;->post(Landroid/net/Uri;Lorg/apache/http/HttpEntity;)I

    move-result v5

    .line 347
    sparse-switch v5, :sswitch_data_c2

    .line 357
    const-string v6, "ReaderSync"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected response code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {v7, v8}, Lcom/google/android/apps/reader/content/ReaderSync;->isExpired(J)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 359
    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/reader/content/ReaderSync;->deletePendingAction(J)V

    .line 330
    :cond_a9
    :goto_a9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1e

    .line 349
    :sswitch_ad
    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/reader/content/ReaderSync;->commitPendingAction(J)V
    :try_end_b0
    .catchall {:try_start_8 .. :try_end_b0} :catchall_b1

    goto :goto_a9

    .line 368
    :catchall_b1
    move-exception v2

    :try_start_b2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 370
    :catchall_b6
    move-exception v1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_b6

    throw v1

    .line 354
    :sswitch_b9
    :try_start_b9
    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/reader/content/ReaderSync;->deletePendingAction(J)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_b1

    goto :goto_a9

    .line 368
    :cond_bd
    :try_start_bd
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 370
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_b6

    .line 371
    return-void

    .line 347
    :sswitch_data_c2
    .sparse-switch
        0xc8 -> :sswitch_ad
        0x190 -> :sswitch_b9
        0x193 -> :sswitch_b9
        0x194 -> :sswitch_b9
    .end sparse-switch
.end method
