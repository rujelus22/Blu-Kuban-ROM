.class public Lcom/google/android/apps/unveil/env/UnveilContentProvider;
.super Landroid/content/ContentProvider;
.source "UnveilContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;,
        Lcom/google/android/apps/unveil/env/UnveilContentProvider$SfCResults;,
        Lcom/google/android/apps/unveil/env/UnveilContentProvider$LastTextRestricts;,
        Lcom/google/android/apps/unveil/env/UnveilContentProvider$Thumbnails;,
        Lcom/google/android/apps/unveil/env/UnveilContentProvider$LastImages;,
        Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "unveil.db"

.field private static final DATABASE_VERSION:I = 0xb

.field private static final LAST_IMAGES:I = 0x3

.field private static final LAST_IMAGE_ID:I = 0x4

.field private static final LAST_TEXT_RESTRICTS:I = 0x7

.field private static final LAST_TEXT_RESTRICT_ID:I = 0x8

.field private static final QUERIES:I = 0x1

.field private static final QUERY_ID:I = 0x2

.field private static final SFC_RESULTS:I = 0x9

.field private static final SFC_RESULT_ID:I = 0xa

.field private static final THUMBNAILS:I = 0x5

.field private static final THUMBNAIL_ID:I = 0x6

.field private static lastImageProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastTextRestrictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private static queriesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sfcResultsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static thumbnailProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 51
    new-instance v4, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 870
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->queriesProjectionMap:Ljava/util/HashMap;

    .line 872
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;->FULL_PROJECTION:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_12
    if-ge v2, v3, :cond_1e

    aget-object v1, v0, v2

    .line 873
    .local v1, column:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->queriesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 876
    .end local v1           #column:Ljava/lang/String;
    :cond_1e
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastImageProjectionMap:Ljava/util/HashMap;

    .line 877
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastImageProjectionMap:Ljava/util/HashMap;

    const-string v5, "_id"

    const-string v6, "_id"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastImageProjectionMap:Ljava/util/HashMap;

    const-string v5, "data"

    const-string v6, "data"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastImageProjectionMap:Ljava/util/HashMap;

    const-string v5, "created"

    const-string v6, "created"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->thumbnailProjectionMap:Ljava/util/HashMap;

    .line 882
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->thumbnailProjectionMap:Ljava/util/HashMap;

    const-string v5, "_id"

    const-string v6, "_id"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->thumbnailProjectionMap:Ljava/util/HashMap;

    const-string v5, "key"

    const-string v6, "key"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->thumbnailProjectionMap:Ljava/util/HashMap;

    const-string v5, "data"

    const-string v6, "data"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->thumbnailProjectionMap:Ljava/util/HashMap;

    const-string v5, "created"

    const-string v6, "created"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastTextRestrictProjectionMap:Ljava/util/HashMap;

    .line 888
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastTextRestrictProjectionMap:Ljava/util/HashMap;

    const-string v5, "_id"

    const-string v6, "_id"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastTextRestrictProjectionMap:Ljava/util/HashMap;

    const-string v5, "text_restrict"

    const-string v6, "text_restrict"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastTextRestrictProjectionMap:Ljava/util/HashMap;

    const-string v5, "created"

    const-string v6, "created"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->sfcResultsProjectionMap:Ljava/util/HashMap;

    .line 894
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->sfcResultsProjectionMap:Ljava/util/HashMap;

    const-string v5, "_id"

    const-string v6, "_id"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->sfcResultsProjectionMap:Ljava/util/HashMap;

    const-string v5, "query_response"

    const-string v6, "query_response"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->sfcResultsProjectionMap:Ljava/util/HashMap;

    const-string v5, "query_image"

    const-string v6, "query_image"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->sfcResultsProjectionMap:Ljava/util/HashMap;

    const-string v5, "orientation"

    const-string v6, "orientation"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->sfcResultsProjectionMap:Ljava/util/HashMap;

    const-string v5, "moment_id"

    const-string v6, "moment_id"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v4, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->sfcResultsProjectionMap:Ljava/util/HashMap;

    const-string v5, "created"

    const-string v6, "created"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 675
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "context"

    .prologue
    .line 94
    sget v0, Lcom/google/android/apps/unveil/R$string;->unveil_content_provider_authority:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x1

    .line 307
    iget-object v7, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 308
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_b

    .line 309
    const/4 v0, 0x0

    .line 361
    :goto_a
    return v0

    .line 313
    :cond_b
    iget-object v7, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_1d6

    .line 357
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 315
    :pswitch_2d
    const-string v7, "queries"

    invoke-virtual {v1, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, count:I
    :goto_33
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_a

    .line 318
    .end local v0           #count:I
    :pswitch_40
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 319
    .local v5, queryId:Ljava/lang/String;
    const-string v8, "queries"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_87

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7a
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 321
    .restart local v0       #count:I
    goto :goto_33

    .line 319
    .end local v0           #count:I
    :cond_87
    const-string v7, ""

    goto :goto_7a

    .line 323
    .end local v5           #queryId:Ljava/lang/String;
    :pswitch_8a
    const-string v7, "last_image"

    invoke-virtual {v1, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 324
    .restart local v0       #count:I
    goto :goto_33

    .line 326
    .end local v0           #count:I
    :pswitch_91
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 327
    .local v3, imageId:Ljava/lang/String;
    const-string v8, "last_image"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_cb
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 329
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 327
    .end local v0           #count:I
    :cond_d9
    const-string v7, ""

    goto :goto_cb

    .line 331
    .end local v3           #imageId:Ljava/lang/String;
    :pswitch_dc
    const-string v7, "thumbnail"

    invoke-virtual {v1, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 332
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 334
    .end local v0           #count:I
    :pswitch_e4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 335
    .local v6, thumbnailId:Ljava/lang/String;
    const-string v8, "thumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_11e
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 337
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 335
    .end local v0           #count:I
    :cond_12c
    const-string v7, ""

    goto :goto_11e

    .line 339
    .end local v6           #thumbnailId:Ljava/lang/String;
    :pswitch_12f
    const-string v7, "last_text_restrict"

    invoke-virtual {v1, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 340
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 342
    .end local v0           #count:I
    :pswitch_137
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 343
    .local v4, lastTextRestrictId:Ljava/lang/String;
    const-string v8, "last_text_restrict"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_171
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 346
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 343
    .end local v0           #count:I
    :cond_17f
    const-string v7, ""

    goto :goto_171

    .line 348
    .end local v4           #lastTextRestrictId:Ljava/lang/String;
    :pswitch_182
    const-string v7, "sfc_results"

    invoke-virtual {v1, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 349
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 351
    .end local v0           #count:I
    :pswitch_18a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    .local v2, id:Ljava/lang/String;
    const-string v8, "sfc_results"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1c4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 355
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 352
    .end local v0           #count:I
    :cond_1d2
    const-string v7, ""

    goto :goto_1c4

    .line 313
    nop

    :pswitch_data_1d6
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_40
        :pswitch_8a
        :pswitch_91
        :pswitch_dc
        :pswitch_e4
        :pswitch_12f
        :pswitch_137
        :pswitch_182
        :pswitch_18a
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 230
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

    .line 210
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.google.unveil"

    .line 228
    :goto_24
    return-object v0

    .line 212
    :pswitch_25
    const-string v0, "vnd.android.cursor.item/vnd.google.unveil"

    goto :goto_24

    .line 214
    :pswitch_28
    const-string v0, "vnd.android.cursor.dir/vnd.google.unveil"

    goto :goto_24

    .line 216
    :pswitch_2b
    const-string v0, "vnd.android.cursor.item/vnd.google.unveil"

    goto :goto_24

    .line 218
    :pswitch_2e
    const-string v0, "vnd.android.cursor.dir/vnd.google.unveil"

    goto :goto_24

    .line 220
    :pswitch_31
    const-string v0, "vnd.android.cursor.item/vnd.google.unveil"

    goto :goto_24

    .line 222
    :pswitch_34
    const-string v0, "vnd.android.cursor.dir/vnd.google.unveil"

    goto :goto_24

    .line 224
    :pswitch_37
    const-string v0, "vnd.android.cursor.item/vnd.google.unveil"

    goto :goto_24

    .line 226
    :pswitch_3a
    const-string v0, "vnd.android.cursor.dir/vnd.google.unveil"

    goto :goto_24

    .line 228
    :pswitch_3d
    const-string v0, "vnd.android.cursor.item/vnd.google.unveil"

    goto :goto_24

    .line 208
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v6, 0x0

    .line 236
    iget-object v7, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_b

    move-object v2, v6

    .line 299
    :goto_a
    return-object v2

    .line 242
    :cond_b
    if-eqz p2, :cond_3d

    .line 243
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 248
    .local v5, values:Landroid/content/ContentValues;
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 250
    .local v1, now:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 252
    .local v2, queryUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_114

    .line 294
    :pswitch_24
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    .end local v1           #now:Ljava/lang/Long;
    .end local v2           #queryUri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_3d
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .restart local v5       #values:Landroid/content/ContentValues;
    goto :goto_12

    .line 254
    .restart local v1       #now:Ljava/lang/Long;
    .restart local v2       #queryUri:Landroid/net/Uri;
    :pswitch_43
    const-string v7, "created"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 255
    const-string v7, "created"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    :cond_50
    const-string v7, "queries"

    const-string v8, "thumbnail"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 258
    .local v3, rowId:J
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Queries;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 297
    :goto_64
    if-eqz v2, :cond_fb

    .line 298
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_a

    .line 261
    .end local v3           #rowId:J
    :pswitch_72
    const-string v7, "created"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7f

    .line 262
    const-string v7, "created"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    :cond_7f
    const-string v7, "last_image"

    const-string v8, "data"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 265
    .restart local v3       #rowId:J
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$LastImages;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 266
    goto :goto_64

    .line 268
    .end local v3           #rowId:J
    :pswitch_94
    const-string v7, "created"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a1

    .line 269
    const-string v7, "created"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    :cond_a1
    const-string v7, "thumbnail"

    const-string v8, "data"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 272
    .restart local v3       #rowId:J
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$Thumbnails;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 273
    goto :goto_64

    .line 275
    .end local v3           #rowId:J
    :pswitch_b6
    const-string v7, "created"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c3

    .line 276
    const-string v7, "created"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    :cond_c3
    const-string v7, "last_text_restrict"

    const-string v8, "text_restrict"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 279
    .restart local v3       #rowId:J
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$LastTextRestricts;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 280
    goto :goto_64

    .line 282
    .end local v3           #rowId:J
    :pswitch_d8
    const-string v7, "created"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e5

    .line 283
    const-string v7, "created"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    :cond_e5
    const-string v7, "sfc_results"

    const-string v8, "query_image"

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 286
    .restart local v3       #rowId:J
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$SfCResults;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 287
    goto/16 :goto_64

    .line 302
    :cond_fb
    new-instance v6, Landroid/database/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert row into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 252
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_43
        :pswitch_24
        :pswitch_72
        :pswitch_24
        :pswitch_94
        :pswitch_24
        :pswitch_b6
        :pswitch_24
        :pswitch_d8
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, authority:Ljava/lang/String;
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "queries"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "queries/#"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "last_image"

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "last_image/#"

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "thumbnail"

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "thumbnail/#"

    const/4 v3, 0x6

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "last_text_restrict"

    const/4 v3, 0x7

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "last_text_restrict/#"

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "sfc_results"

    const/16 v3, 0x9

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v2, "sfc_results/#"

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    new-instance v1, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/unveil/env/UnveilContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 113
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 119
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 120
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_b

    .line 203
    :goto_a
    return-object v5

    .line 124
    :cond_b
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 125
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v7, 0x0

    .line 127
    .local v7, orderBy:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_158

    .line 194
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :pswitch_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 132
    :pswitch_53
    const-string v2, "queries"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 133
    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->queriesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 135
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 136
    const-string v7, "created DESC"

    :goto_65
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 197
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 199
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_7a

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_7a
    move-object v5, v8

    .line 203
    goto :goto_a

    .line 138
    .end local v8           #c:Landroid/database/Cursor;
    :cond_7c
    move-object v7, p5

    .line 140
    goto :goto_65

    .line 142
    :pswitch_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 145
    :pswitch_9e
    const-string v2, "last_image"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 146
    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastImageProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 148
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 149
    const-string v7, "created DESC"

    goto :goto_65

    .line 151
    :cond_b1
    move-object v7, p5

    .line 153
    goto :goto_65

    .line 155
    :pswitch_b3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 158
    :pswitch_d3
    const-string v2, "thumbnail"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 159
    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->thumbnailProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 161
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 162
    const-string v7, "created DESC"

    goto :goto_65

    .line 164
    :cond_e6
    move-object v7, p5

    .line 166
    goto/16 :goto_65

    .line 168
    :pswitch_e9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 171
    :pswitch_109
    const-string v2, "last_text_restrict"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 172
    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->lastTextRestrictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 174
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 175
    const-string v7, "created DESC"

    goto/16 :goto_65

    .line 177
    :cond_11d
    move-object v7, p5

    .line 179
    goto/16 :goto_65

    .line 181
    :pswitch_120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 184
    :pswitch_140
    const-string v2, "sfc_results"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 185
    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->sfcResultsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 187
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 188
    const-string v7, "created DESC"

    goto/16 :goto_65

    .line 190
    :cond_154
    move-object v7, p5

    .line 192
    goto/16 :goto_65

    .line 127
    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_53
        :pswitch_33
        :pswitch_9e
        :pswitch_7e
        :pswitch_d3
        :pswitch_b3
        :pswitch_109
        :pswitch_e9
        :pswitch_140
        :pswitch_120
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x1

    .line 367
    iget-object v7, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 368
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_b

    .line 369
    const/4 v0, 0x0

    .line 421
    :goto_a
    return v0

    .line 373
    :cond_b
    iget-object v7, p0, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_1d6

    .line 417
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 375
    :pswitch_2d
    const-string v7, "queries"

    invoke-virtual {v1, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 420
    .local v0, count:I
    :goto_33
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_a

    .line 378
    .end local v0           #count:I
    :pswitch_40
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 379
    .local v4, queryId:Ljava/lang/String;
    const-string v8, "queries"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_87

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7a
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 381
    .restart local v0       #count:I
    goto :goto_33

    .line 379
    .end local v0           #count:I
    :cond_87
    const-string v7, ""

    goto :goto_7a

    .line 383
    .end local v4           #queryId:Ljava/lang/String;
    :pswitch_8a
    const-string v7, "last_image"

    invoke-virtual {v1, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 384
    .restart local v0       #count:I
    goto :goto_33

    .line 386
    .end local v0           #count:I
    :pswitch_91
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 387
    .local v3, imageId:Ljava/lang/String;
    const-string v8, "last_image"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_cb
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 389
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 387
    .end local v0           #count:I
    :cond_d9
    const-string v7, ""

    goto :goto_cb

    .line 391
    .end local v3           #imageId:Ljava/lang/String;
    :pswitch_dc
    const-string v7, "thumbnail"

    invoke-virtual {v1, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 392
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 394
    .end local v0           #count:I
    :pswitch_e4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 395
    .local v6, thumbnailId:Ljava/lang/String;
    const-string v8, "thumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_11e
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 397
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 395
    .end local v0           #count:I
    :cond_12c
    const-string v7, ""

    goto :goto_11e

    .line 399
    .end local v6           #thumbnailId:Ljava/lang/String;
    :pswitch_12f
    const-string v7, "last_text_restrict"

    invoke-virtual {v1, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 400
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 402
    .end local v0           #count:I
    :pswitch_137
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 403
    .local v5, textRestrictId:Ljava/lang/String;
    const-string v8, "last_text_restrict"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_171
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 406
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 403
    .end local v0           #count:I
    :cond_17f
    const-string v7, ""

    goto :goto_171

    .line 408
    .end local v5           #textRestrictId:Ljava/lang/String;
    :pswitch_182
    const-string v7, "sfc_results"

    invoke-virtual {v1, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 409
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 411
    .end local v0           #count:I
    :pswitch_18a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 412
    .local v2, id:Ljava/lang/String;
    const-string v8, "sfc_results"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1c4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 415
    .restart local v0       #count:I
    goto/16 :goto_33

    .line 412
    .end local v0           #count:I
    :cond_1d2
    const-string v7, ""

    goto :goto_1c4

    .line 373
    nop

    :pswitch_data_1d6
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_40
        :pswitch_8a
        :pswitch_91
        :pswitch_dc
        :pswitch_e4
        :pswitch_12f
        :pswitch_137
        :pswitch_182
        :pswitch_18a
    .end packed-switch
.end method
