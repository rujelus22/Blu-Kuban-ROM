.class Lcom/google/android/apps/reader/content/ItemsContentHandler;
.super Lcom/google/android/feeds/JsonContentHandler;
.source "ItemsContentHandler.java"


# static fields
.field protected static final ITEM_ALTERNATE:Ljava/lang/String; = "alternate"

.field protected static final ITEM_ANNOTATIONS:Ljava/lang/String; = "annotations"

.field protected static final ITEM_ANNOTATIONS_AUTHOR:Ljava/lang/String; = "author"

.field protected static final ITEM_ANNOTATIONS_CONTENT:Ljava/lang/String; = "content"

.field protected static final ITEM_ANNOTATIONS_PROFILE_ID:Ljava/lang/String; = "profileId"

.field protected static final ITEM_ANNOTATIONS_USER_ID:Ljava/lang/String; = "userId"

.field protected static final ITEM_AUTHOR:Ljava/lang/String; = "author"

.field protected static final ITEM_CATEGORIES:Ljava/lang/String; = "categories"

.field protected static final ITEM_CONTENT:Ljava/lang/String; = "content"

.field protected static final ITEM_CRAWL_TIME:Ljava/lang/String; = "crawlTimeMsec"

.field protected static final ITEM_CSS_URL:Ljava/lang/String; = "/android_res/raw/item_css"

.field protected static final ITEM_ENCLOSURE:Ljava/lang/String; = "enclosure"

.field protected static final ITEM_ID:Ljava/lang/String; = "id"

.field protected static final ITEM_LIKES:Ljava/lang/String; = "likingUsers"

.field protected static final ITEM_LOCKED:Ljava/lang/String; = "isReadStateLocked"

.field protected static final ITEM_ORIGIN:Ljava/lang/String; = "origin"

.field protected static final ITEM_PUBLISHED:Ljava/lang/String; = "published"

.field protected static final ITEM_RELATED:Ljava/lang/String; = "related"

.field protected static final ITEM_SUMMARY:Ljava/lang/String; = "summary"

.field protected static final ITEM_TITLE:Ljava/lang/String; = "title"

.field protected static final ITEM_UPDATED:Ljava/lang/String; = "updated"

.field protected static final JAVASCRIPT_URL:Ljava/lang/String; = "/android_res/raw/item_js"

.field protected static final LINK_HREF:Ljava/lang/String; = "href"

.field protected static final LINK_LENGTH:Ljava/lang/String; = "length"

.field protected static final LINK_TYPE:Ljava/lang/String; = "type"

.field protected static final ORIGIN_HTML_URL:Ljava/lang/String; = "htmlUrl"

.field protected static final ORIGIN_STREAM_ID:Ljava/lang/String; = "streamId"

.field protected static final ORIGIN_TITLE:Ljava/lang/String; = "title"

.field protected static final RELATIONS:[Ljava/lang/String; = null

.field protected static final STREAM_CONTINUATION:Ljava/lang/String; = "continuation"

.field protected static final STREAM_ID:Ljava/lang/String; = "id"

.field protected static final STREAM_ITEMS:Ljava/lang/String; = "items"

.field protected static final STREAM_TITLE:Ljava/lang/String; = "title"

.field protected static final STREAM_UPDATED:Ljava/lang/String; = "updated"

.field protected static final TAG:Ljava/lang/String; = "ItemsContentHandler"

.field protected static final TEXT_CONTENT:Ljava/lang/String; = "content"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mExtras:Landroid/os/Bundle;

.field private final mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

.field private mLiked:Ljava/lang/String;

.field private mLink:Ljava/lang/String;

.field private mPost:Ljava/lang/String;

.field private mRead:Ljava/lang/String;

.field private mShared:Ljava/lang/String;

.field private mStarred:Ljava/lang/String;

.field private mTableItemCategories:Landroid/database/DatabaseUtils$InsertHelper;

.field private mTableItemLinks:Landroid/database/DatabaseUtils$InsertHelper;

.field private mTableItems:Landroid/database/DatabaseUtils$InsertHelper;

.field private mTimestamp:Ljava/lang/Long;

.field private mUserId:Ljava/lang/String;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "related"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "enclosure"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->RELATIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ReaderFileCache;Landroid/os/Bundle;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "database"
    .parameter "fileCache"
    .parameter "extras"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/android/feeds/JsonContentHandler;-><init>()V

    .line 213
    if-nez p1, :cond_d

    .line 214
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_d
    if-nez p2, :cond_17

    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_17
    if-nez p3, :cond_21

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Database is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_21
    if-nez p4, :cond_2b

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File cache is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_2b
    if-nez p5, :cond_35

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Extras bundle is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_35
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mContext:Landroid/content/Context;

    .line 229
    iput-object p2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 230
    iput-object p3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 231
    iput-object p4, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

    .line 232
    iput-object p5, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mExtras:Landroid/os/Bundle;

    .line 233
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mValues:Landroid/content/ContentValues;

    .line 234
    return-void
.end method

.method private createInsertHelper(Ljava/lang/String;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 4
    .parameter "table"

    .prologue
    .line 646
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-object v0
.end method

.method private deleteCategories(J)V
    .registers 7
    .parameter

    .prologue
    .line 541
    const-string v0, "account_name = ? AND item_id = ?"

    .line 542
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 545
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "item_categories"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method private deleteLinks(J)V
    .registers 7
    .parameter

    .prologue
    .line 595
    const-string v0, "account_name = ? AND item_id = ?"

    .line 596
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 599
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "item_links"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    return-void
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 529
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 530
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 531
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 532
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 533
    return-object p0
.end method

.method private static getAlternateHref(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 349
    const-string v2, "alternate"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 350
    .local v0, alternate:Lorg/json/JSONArray;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 351
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 352
    .local v1, link:Lorg/json/JSONObject;
    const-string v2, "href"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    .end local v1           #link:Lorg/json/JSONObject;
    :goto_19
    return-object v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private static getEnclosureClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 366
    if-eqz p0, :cond_d

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 367
    const-string v0, "audio"

    .line 376
    :goto_c
    return-object v0

    .line 368
    :cond_d
    if-eqz p0, :cond_1a

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 369
    const-string v0, "image"

    goto :goto_c

    .line 370
    :cond_1a
    if-eqz p0, :cond_24

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_24
    const-string v0, "application/x-shockwave-flash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 374
    :cond_2c
    const-string v0, "video"

    goto :goto_c

    .line 376
    :cond_2f
    const-string v0, "other"

    goto :goto_c
.end method

.method private insertCategories(JLorg/json/JSONObject;)V
    .registers 12
    .parameter "itemId"
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 569
    const-string v6, "categories"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 570
    .local v0, categories:Lorg/json/JSONArray;
    if-eqz v0, :cond_19

    .line 571
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, n:I
    :goto_d
    if-ge v2, v3, :cond_19

    .line 572
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, category:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->insertCategory(JLjava/lang/String;)V

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 577
    .end local v1           #category:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_19
    const-string v6, "origin"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 578
    .local v4, origin:Lorg/json/JSONObject;
    if-eqz v4, :cond_2d

    .line 583
    const-string v6, "streamId"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, streamId:Ljava/lang/String;
    if-eqz v5, :cond_2d

    .line 585
    invoke-direct {p0, p1, p2, v5}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->insertCategory(JLjava/lang/String;)V

    .line 588
    .end local v5           #streamId:Ljava/lang/String;
    :cond_2d
    return-void
.end method

.method private insertCategory(JLjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mValues:Landroid/content/ContentValues;

    .line 560
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 561
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v1, "item_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 563
    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemCategories:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 565
    return-void
.end method

.method private insertLink(JLjava/lang/String;Lorg/json/JSONObject;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mValues:Landroid/content/ContentValues;

    .line 611
    const-string v1, "href"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    const-string v2, "type"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    const-string v3, "length"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_31
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v4, v4

    .line 619
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 620
    const-string v6, "account_name"

    iget-object v7, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v7, v7, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v6, "item_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 622
    const-string v6, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    const-string v4, "rel"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v4, "href"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v1, "length"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemLinks:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 628
    return-void

    .line 617
    :cond_6e
    const/4 v4, 0x0

    goto :goto_31
.end method

.method private insertLinks(JLorg/json/JSONObject;)V
    .registers 12
    .parameter "itemId"
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 634
    sget-object v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->RELATIONS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_22

    aget-object v7, v0, v2

    .line 635
    .local v7, rel:Ljava/lang/String;
    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 636
    .local v5, links:Lorg/json/JSONArray;
    if-eqz v5, :cond_1f

    .line 637
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .local v6, n:I
    :goto_13
    if-ge v1, v6, :cond_1f

    .line 638
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 639
    .local v4, link:Lorg/json/JSONObject;
    invoke-direct {p0, p1, p2, v7, v4}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->insertLink(JLjava/lang/String;Lorg/json/JSONObject;)V

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 634
    .end local v1           #i:I
    .end local v4           #link:Lorg/json/JSONObject;
    .end local v6           #n:I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 643
    .end local v5           #links:Lorg/json/JSONArray;
    .end local v7           #rel:Ljava/lang/String;
    :cond_22
    return-void
.end method

.method private invalidateUnreadCounts()V
    .registers 10

    .prologue
    .line 770
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 771
    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 774
    const-wide/32 v3, 0xea60

    sub-long v3, v1, v3

    .line 775
    const-string v5, "url = ? AND account_name = ? AND (timestamp < ? OR timestamp > ?)"

    .line 776
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->unreadCount()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v8, v8, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 780
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "timestamps"

    invoke-virtual {v1, v2, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 781
    return-void
.end method

.method private notifyChange()V
    .registers 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 651
    return-void
.end method

.method private replaceItem(JLorg/json/JSONObject;)V
    .registers 40
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTimestamp:Ljava/lang/Long;

    move-object v3, v0

    if-nez v3, :cond_f

    .line 238
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Timestamp was not set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mUserId:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_1e

    .line 241
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "User ID was not set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    .line 246
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 247
    const-string v6, "id"

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    const-string v7, "title"

    const-string v8, ""

    move-object/from16 v0, p3

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    const-string v8, "crawlTimeMsec"

    move-object/from16 v0, p3

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    const-string v9, "published"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    .line 251
    const-string v11, "updated"

    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    .line 252
    const-string v13, "isReadStateLocked"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 254
    const-string v14, "origin"

    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 255
    const-string v15, "title"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    const-string v16, "htmlUrl"

    const/16 v17, 0x0

    move-object v0, v14

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 257
    const-string v17, "streamId"

    const/16 v18, 0x0

    move-object v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 259
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->getAlternateHref(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v17

    .line 261
    const-string v18, "author"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 263
    const-string v19, "likingUsers"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 264
    if-eqz v19, :cond_10a

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v19

    .line 266
    :goto_b1
    const/16 v20, 0x0

    .line 267
    const/16 v21, 0x0

    .line 268
    const/16 v22, 0x0

    .line 269
    const/16 v23, 0x0

    .line 270
    const/16 v24, 0x0

    .line 271
    const/16 v25, 0x0

    .line 272
    const/16 v26, 0x0

    .line 273
    const-string v27, "categories"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 274
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v28

    .line 275
    const/16 v29, 0x0

    move/from16 v32, v29

    move/from16 v29, v20

    move/from16 v20, v32

    move/from16 v33, v25

    move/from16 v25, v22

    move/from16 v22, v33

    move/from16 v34, v23

    move/from16 v23, v24

    move/from16 v24, v34

    move/from16 v35, v21

    move-object/from16 v21, v26

    move/from16 v26, v35

    :goto_e7
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_176

    .line 276
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mStarred:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10d

    .line 278
    const/16 v26, 0x1

    .line 275
    :cond_107
    :goto_107
    add-int/lit8 v20, v20, 0x1

    goto :goto_e7

    .line 264
    :cond_10a
    const/16 v19, 0x0

    goto :goto_b1

    .line 279
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mLiked:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_120

    .line 280
    const/16 v25, 0x1

    goto :goto_107

    .line 281
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mLink:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_133

    .line 282
    const/16 v23, 0x1

    goto :goto_107

    .line 283
    :cond_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mPost:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_146

    .line 284
    const/16 v22, 0x1

    goto :goto_107

    .line 285
    :cond_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mRead:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_159

    .line 286
    const/16 v29, 0x1

    goto :goto_107

    .line 287
    :cond_159
    invoke-static/range {v30 .. v30}, Lcom/google/android/apps/reader/provider/ReaderStream;->isBroadcast(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_107

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mShared:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2b6

    .line 291
    const/16 v21, 0x1

    move/from16 v24, v21

    move-object/from16 v21, v30

    goto :goto_107

    .line 296
    :cond_176
    const/16 v20, 0x0

    .line 297
    if-eqz v21, :cond_1b8

    .line 298
    const-string v27, "annotations"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 299
    const/16 v28, 0x0

    :goto_186
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1b8

    .line 300
    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    .line 304
    const-string v31, "userId"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 305
    if-eqz v31, :cond_2b2

    invoke-static/range {v31 .. v31}, Lcom/google/android/apps/reader/provider/ReaderStream;->createBroadcastId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2b2

    .line 306
    const-string v31, "content"

    invoke-virtual/range {v30 .. v31}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 308
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_2b2

    move-object/from16 v20, v30

    .line 316
    :cond_1b8
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 317
    const-string v27, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object v0, v3

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v27, "timestamp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTimestamp:Ljava/lang/Long;

    move-object/from16 v28, v0

    move-object v0, v3

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    const-string v27, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, v3

    move-object/from16 v1, v27

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    const-string v4, "id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    const-string v4, "external_id"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v4, "crawl_time"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v4, "title"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v4, "title_plaintext"

    invoke-static {v7}, Lcom/google/android/apps/reader/content/PlainText;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v4, "author"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v4, "alternate_href"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v4, "source_title"

    invoke-virtual {v3, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v4, "source_title_plaintext"

    invoke-static {v15}, Lcom/google/android/apps/reader/content/PlainText;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v4, "source_alternate_href"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v4, "source_stream_id"

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v4, "published"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    const-string v4, "updated"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    const-string v4, "starred"

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 334
    const-string v4, "read"

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 335
    const-string v4, "liked"

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 336
    const-string v4, "shared"

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 337
    const-string v4, "source_link"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 338
    const-string v4, "source_post"

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 339
    const-string v4, "locked"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 340
    const-string v4, "like_count"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v4, "broadcaster"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v4, "annotation"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItems:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    .line 346
    return-void

    .line 299
    :cond_2b2
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_186

    :cond_2b6
    move-object/from16 v21, v30

    goto/16 :goto_107
.end method

.method private replaceItemContent(JLorg/json/JSONObject;)V
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mValues:Landroid/content/ContentValues;

    .line 382
    const-string v1, "summary"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 383
    const-string v2, "content"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 384
    const-string v3, "title"

    const-string v4, ""

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    const-string v4, "origin"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 386
    const-string v5, "title"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    const-string v6, "htmlUrl"

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 389
    const-string v6, "account_name"

    iget-object v7, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v7, v7, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v6, "item_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    if-nez v8, :cond_23c

    if-eqz v2, :cond_23c

    .line 393
    const-string v0, "content"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_4a
    if-nez v0, :cond_54

    if-eqz v1, :cond_54

    .line 396
    const-string v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_54
    if-nez v0, :cond_58

    .line 399
    const-string v0, ""

    .line 401
    :cond_58
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getItemHtmlFile(Lcom/google/android/accounts/Account;J)Ljava/io/File;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8a

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_8a

    .line 404
    const-string v6, "ItemsContentHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to make parent directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_8a
    :try_start_8a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8f} :catch_1f5

    .line 409
    :try_start_8f
    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v7, "UTF-8"

    invoke-direct {v6, v2, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 410
    new-instance v7, Ljava/io/BufferedWriter;

    const/16 v8, 0x2000

    invoke-direct {v7, v6, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 411
    const-string v6, "<html>"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    const-string v6, "<head>"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    const-string v6, "<meta http-equiv=\'content-type\' content=\'text/html;charset="

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 416
    const-string v6, "UTF-8"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 417
    const-string v6, "\' />"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    const-string v6, "<meta name=\"viewport\" content=\"user-scalable=no\" />"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 421
    const-string v6, "<meta name=\"viewport\" content=\"width=device-width\" />"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 422
    const-string v6, "<meta name=\"viewport\" content=\"initial-scale=1.0\" />"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    const-string v6, "<meta name=\"viewport\" content=\"maximum-scale=1.0\" />"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 427
    const-string v6, "<meta name=\"viewport\" content=\"target-densitydpi=medium-dpi\" />"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 430
    const-string v6, "<link rel=\'stylesheet\' type=\'text/css\' href=\'"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 431
    const-string v6, "/android_res/raw/item_css"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 432
    const-string v6, "\' />"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    const-string v6, "</head>"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string v6, "<body>"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    const-string v6, "<div id=\'item\'>"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    const-string v6, "<div id=\'title\'>"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    invoke-static {p3}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->getAlternateHref(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    .line 439
    if-eqz v6, :cond_1eb

    .line 440
    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 441
    invoke-static {v6}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    const-string v6, "\">"

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    const-string v3, "</a>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 448
    :goto_111
    const-string v3, "</div>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 449
    const-string v3, "<div id=\'subtitle\'>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    if-eqz v4, :cond_201

    .line 451
    const-string v3, "<a href=\""

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 452
    invoke-static {v4}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 453
    const-string v3, "\">"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v7, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 455
    const-string v3, "</a>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    :goto_136
    const-string v3, "</div>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    const-string v3, "<div id=\'liked\'></div>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 461
    const-string v3, "<div id=\'shared\'></div>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 462
    const-string v3, "<div id=\'annotation\'></div>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    const-string v3, "<div id=\'content\'>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    const-string v3, "<!--[HTML]-->"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 469
    const-string v0, "<!--[/HTML]-->"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 471
    const-string v0, "</div>"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 472
    const-string v0, "enclosure"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_214

    .line 474
    const-string v3, "<div id=\'enclosures\'>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 475
    const-string v3, "<ul>"

    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 476
    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_178
    if-ge v3, v4, :cond_20a

    .line 477
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 478
    const-string v6, "href"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 479
    const-string v8, "type"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    if-eqz v6, :cond_1e8

    .line 481
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 482
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    if-eqz v5, :cond_206

    .line 484
    invoke-virtual {v9, v8, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    :goto_19c
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 489
    if-nez v8, :cond_239

    .line 493
    :goto_1a2
    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    .line 494
    const-string v9, "<li class=\""

    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 495
    invoke-static {v5}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->getEnclosureClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 496
    const-string v9, "\"><a href=\""

    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 497
    invoke-static {v8}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 498
    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 499
    if-eqz v5, :cond_1d7

    .line 500
    const-string v8, " type=\""

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 501
    invoke-static {v5}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 502
    const-string v5, "\""

    invoke-virtual {v7, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 504
    :cond_1d7
    const-string v5, ">"

    invoke-virtual {v7, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 505
    invoke-static {v6}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 506
    const-string v5, "</a></li>"

    invoke-virtual {v7, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 476
    :cond_1e8
    add-int/lit8 v3, v3, 0x1

    goto :goto_178

    .line 446
    :cond_1eb
    invoke-virtual {v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1ee
    .catchall {:try_start_8f .. :try_end_1ee} :catchall_1f0

    goto/16 :goto_111

    .line 520
    :catchall_1f0
    move-exception v0

    :try_start_1f1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_1f5} :catch_1f5

    .line 522
    :catch_1f5
    move-exception v0

    .line 523
    const-string v2, "ItemsContentHandler"

    const-string v3, "Failed to write HTML to file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 526
    :goto_200
    return-void

    .line 457
    :cond_201
    :try_start_201
    invoke-virtual {v7, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_136

    .line 486
    :cond_206
    invoke-virtual {v9, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_19c

    .line 509
    :cond_20a
    const-string v0, "</ul>"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 510
    const-string v0, "</div>"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 512
    :cond_214
    const-string v0, "</div>"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 513
    const-string v0, "<script type=\"text/javascript\" src=\""

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 514
    const-string v0, "/android_res/raw/item_js"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 515
    const-string v0, "\"></script>"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 516
    const-string v0, "</body>"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 517
    const-string v0, "</html>"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V
    :try_end_235
    .catchall {:try_start_201 .. :try_end_235} :catchall_1f0

    .line 520
    :try_start_235
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_238
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_238} :catch_1f5

    goto :goto_200

    :cond_239
    move-object v6, v8

    goto/16 :goto_1a2

    :cond_23c
    move-object v0, v8

    goto/16 :goto_4a
.end method

.method private setUserId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "category"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mUserId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getContent(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 703
    .local v1, feed:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 705
    :try_start_a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->handleFeed(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    .line 713
    .local v0, content:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->invalidateUnreadCounts()V

    .line 715
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    .line 719
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    .end local v0           #content:Ljava/lang/Object;
    :catchall_1c
    move-exception v2

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTimestamp:Ljava/lang/Long;

    .line 660
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v2, "com.google.reader.cursor.extra.USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mUserId:Ljava/lang/String;

    .line 661
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mUserId:Ljava/lang/String;

    if-nez v1, :cond_21

    .line 662
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "User ID is not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    :cond_21
    const-string v1, "user/-/state/com.google/read"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->setUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mRead:Ljava/lang/String;

    .line 666
    const-string v1, "user/-/state/com.google/starred"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->setUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mStarred:Ljava/lang/String;

    .line 667
    const-string v1, "user/-/state/com.google/like"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->setUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mLiked:Ljava/lang/String;

    .line 668
    const-string v1, "user/-/state/com.google/broadcast"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->setUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mShared:Ljava/lang/String;

    .line 669
    const-string v1, "user/-/source/com.google/link"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->setUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mLink:Ljava/lang/String;

    .line 670
    const-string v1, "user/-/source/com.google/post"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->setUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mPost:Ljava/lang/String;

    .line 673
    :try_start_51
    const-string v1, "items"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->createInsertHelper(Ljava/lang/String;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItems:Landroid/database/DatabaseUtils$InsertHelper;

    .line 674
    const-string v1, "item_categories"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->createInsertHelper(Ljava/lang/String;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemCategories:Landroid/database/DatabaseUtils$InsertHelper;

    .line 675
    const-string v1, "item_links"

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->createInsertHelper(Ljava/lang/String;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemLinks:Landroid/database/DatabaseUtils$InsertHelper;

    .line 677
    invoke-super {p0, p1}, Lcom/google/android/feeds/JsonContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 678
    .local v0, content:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->notifyChange()V
    :try_end_70
    .catchall {:try_start_51 .. :try_end_70} :catchall_86

    .line 681
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItems:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 682
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemCategories:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 683
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemLinks:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 685
    iput-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItems:Landroid/database/DatabaseUtils$InsertHelper;

    .line 686
    iput-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemCategories:Landroid/database/DatabaseUtils$InsertHelper;

    .line 687
    iput-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemLinks:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0

    .line 681
    .end local v0           #content:Ljava/lang/Object;
    :catchall_86
    move-exception v1

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItems:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 682
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemCategories:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 683
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemLinks:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 685
    iput-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItems:Landroid/database/DatabaseUtils$InsertHelper;

    .line 686
    iput-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemCategories:Landroid/database/DatabaseUtils$InsertHelper;

    .line 687
    iput-object v3, p0, Lcom/google/android/apps/reader/content/ItemsContentHandler;->mTableItemLinks:Landroid/database/DatabaseUtils$InsertHelper;

    throw v1
.end method

.method protected handleFeed(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 7
    .parameter "feed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 737
    const-string v4, "items"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 738
    .local v3, items:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 739
    .local v2, itemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_17

    .line 740
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 741
    .local v1, item:Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->handleItem(Lorg/json/JSONObject;)V

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 743
    .end local v1           #item:Lorg/json/JSONObject;
    :cond_17
    invoke-static {v2}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method protected handleItem(Lorg/json/JSONObject;)V
    .registers 6
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 747
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, externalId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderItem;->getItemId(Ljava/lang/String;)J

    move-result-wide v1

    .line 749
    .local v1, itemId:J
    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->replaceItem(JLorg/json/JSONObject;)V

    .line 750
    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->replaceItemContent(JLorg/json/JSONObject;)V

    .line 752
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->deleteCategories(J)V

    .line 753
    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->insertCategories(JLorg/json/JSONObject;)V

    .line 755
    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->deleteLinks(J)V

    .line 756
    invoke-direct {p0, v1, v2, p1}, Lcom/google/android/apps/reader/content/ItemsContentHandler;->insertLinks(JLorg/json/JSONObject;)V

    .line 757
    return-void
.end method
