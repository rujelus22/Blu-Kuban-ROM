.class public Lcom/sec/android/app/myfiles/provider/FileInfoProvider;
.super Landroid/content/ContentProvider;
.source "FileInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static sBtVisibilityProjectionMap:Ljava/util/HashMap;
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

.field private static sProtectionProjectionMap:Ljava/util/HashMap;
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

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 370
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 373
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.myfiles.provider"

    const-string v2, "protection"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.myfiles.provider"

    const-string v2, "protection/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.myfiles.provider"

    const-string v2, "bt_visibility"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 378
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.myfiles.provider"

    const-string v2, "bt_visibility/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sProtectionProjectionMap:Ljava/util/HashMap;

    .line 381
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sProtectionProjectionMap:Ljava/util/HashMap;

    const-string v1, "path"

    const-string v2, "path"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sProtectionProjectionMap:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sBtVisibilityProjectionMap:Ljava/util/HashMap;

    .line 385
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sBtVisibilityProjectionMap:Ljava/util/HashMap;

    const-string v1, "path"

    const-string v2, "path"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sBtVisibilityProjectionMap:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/16 v8, 0x29

    const/4 v5, 0x1

    .line 281
    iget-object v4, p0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->mOpenHelper:Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 284
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_dc

    .line 302
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 303
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    :pswitch_2e
    const-string v4, "file_protection_table"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 306
    .local v1, count:I
    :goto_34
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 308
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 310
    return v1

    .line 289
    .end local v1           #count:I
    :pswitch_44
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 290
    .local v3, protectionId:Ljava/lang/String;
    const-string v5, "file_protection_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_89

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 292
    .restart local v1       #count:I
    goto :goto_34

    .line 290
    .end local v1           #count:I
    :cond_89
    const-string v4, ""

    goto :goto_7c

    .line 294
    .end local v3           #protectionId:Ljava/lang/String;
    :pswitch_8c
    const-string v4, "file_bt_visibility_table"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 295
    .restart local v1       #count:I
    goto :goto_34

    .line 297
    .end local v1           #count:I
    :pswitch_93
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, btVisibilityId:Ljava/lang/String;
    const-string v5, "file_bt_visibility_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_cb
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 300
    .restart local v1       #count:I
    goto/16 :goto_34

    .line 298
    .end local v1           #count:I
    :cond_d9
    const-string v4, ""

    goto :goto_cb

    .line 284
    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_44
        :pswitch_8c
        :pswitch_93
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 171
    sget-object v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 181
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

    .line 173
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.sec.android.app.protection"

    .line 179
    :goto_24
    return-object v0

    .line 175
    :pswitch_25
    const-string v0, "vnd.android.cursor.item/vnd.sec.android.app.protection"

    goto :goto_24

    .line 177
    :pswitch_28
    const-string v0, "vnd.android.cursor.dir/vnd.sec.android.app.btvisibility"

    goto :goto_24

    .line 179
    :pswitch_2b
    const-string v0, "vnd.android.cursor.item/vnd.sec.android.app.btvisibility"

    goto :goto_24

    .line 171
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 195
    if-eqz p2, :cond_2e

    .line 196
    move-object v7, p2

    .line 201
    .local v7, values:Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->mOpenHelper:Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 203
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v8, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_c6

    .line 272
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 273
    new-instance v8, Landroid/database/SQLException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to insert row into "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 198
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_2e
    const/4 v3, 0x0

    .line 276
    :goto_2f
    return-object v3

    .line 208
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7       #values:Landroid/content/ContentValues;
    :pswitch_30
    :try_start_30
    const-string v8, "file_protection_table"

    const-string v9, "_id"

    invoke-virtual {v1, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_30 .. :try_end_37} :catch_5b

    move-result-wide v4

    .line 226
    .local v4, rowId:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_c0

    .line 227
    sget-object v8, Lcom/sec/android/app/myfiles/FileProtection$Protection;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 230
    .local v3, protectionUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 233
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2f

    .line 211
    .end local v3           #protectionUri:Landroid/net/Uri;
    .end local v4           #rowId:J
    :catch_5b
    move-exception v2

    .line 213
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09004f

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 218
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 220
    const-string v8, "[MyFiles]"

    const-string v9, "FileInfoProvider.insert - SQLiteFullException is occured."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v3, 0x0

    goto :goto_2f

    .line 241
    .end local v2           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v6           #toast:Landroid/widget/Toast;
    :pswitch_77
    :try_start_77
    const-string v8, "file_bt_visibility_table"

    const-string v9, "_id"

    invoke-virtual {v1, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_77 .. :try_end_7e} :catch_a3

    move-result-wide v4

    .line 260
    .restart local v4       #rowId:J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_c0

    .line 261
    sget-object v8, Lcom/sec/android/app/myfiles/FileBtVisibility$BtVisibility;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 264
    .local v0, btVisibilityUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 267
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v3, v0

    .line 268
    goto :goto_2f

    .line 245
    .end local v0           #btVisibilityUri:Landroid/net/Uri;
    .end local v4           #rowId:J
    :catch_a3
    move-exception v2

    .line 247
    .restart local v2       #e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09004f

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 252
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 254
    const-string v8, "[MyFiles]"

    const-string v9, "FileInfoProvider.insert - SQLiteFullException is occured."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v3, 0x0

    goto/16 :goto_2f

    .line 275
    .end local v2           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v6           #toast:Landroid/widget/Toast;
    .restart local v4       #rowId:J
    :cond_c0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 276
    const/4 v3, 0x0

    goto/16 :goto_2f

    .line 203
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_30
        :pswitch_30
        :pswitch_77
        :pswitch_77
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 104
    new-instance v0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->mOpenHelper:Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x1

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->mOpenHelper:Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    if-nez v2, :cond_10

    .line 112
    new-instance v2, Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->mOpenHelper:Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    .line 115
    :cond_10
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 117
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_e0

    .line 137
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

    .line 119
    :pswitch_37
    const-string v2, "file_protection_table"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 120
    sget-object v2, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sProtectionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 147
    :goto_41
    move-object v7, p5

    .line 150
    .local v7, orderBy:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->mOpenHelper:Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 152
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 155
    .local v8, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_4e
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_51
    .catch Landroid/database/SQLException; {:try_start_4e .. :try_end_51} :catch_c1

    move-result-object v8

    .line 163
    :goto_52
    if-eqz v8, :cond_5f

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 166
    :cond_5f
    return-object v8

    .line 123
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_60
    const-string v2, "file_protection_table"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 124
    sget-object v2, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sProtectionProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 125
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

    goto :goto_41

    .line 128
    :pswitch_8b
    const-string v2, "file_bt_visibility_table"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 129
    sget-object v2, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sBtVisibilityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_41

    .line 132
    :pswitch_96
    const-string v2, "file_bt_visibility_table"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 133
    sget-object v2, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sBtVisibilityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 134
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

    goto :goto_41

    .line 156
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7       #orderBy:Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    :catch_c1
    move-exception v9

    .line 158
    .local v9, sqle:Landroid/database/SQLException;
    const-string v2, "[MyFiles]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file info provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52

    .line 117
    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_60
        :pswitch_8b
        :pswitch_96
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 315
    iget-object v6, p0, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->mOpenHelper:Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 320
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    sget-object v6, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_fc

    .line 340
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 341
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
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_2b} :catch_2b

    .line 346
    :catch_2b
    move-exception v3

    .line 348
    .local v3, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09004f

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 351
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 353
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 355
    const-string v6, "[MyFiles]"

    const-string v7, "FileInfoProvider.update : SQLiteFullException is occured."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, -0x1

    .line 365
    .end local v3           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v5           #toast:Landroid/widget/Toast;
    :goto_46
    return v1

    .line 322
    :pswitch_47
    :try_start_47
    const-string v6, "file_protection_table"

    invoke-virtual {v2, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_47 .. :try_end_4c} :catch_2b

    move-result v1

    .line 361
    .local v1, count:I
    :goto_4d
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/provider/FileInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 363
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_46

    .line 325
    .end local v1           #count:I
    :pswitch_5d
    :try_start_5d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 326
    .local v4, protectionId:Ljava/lang/String;
    const-string v7, "file_protection_table"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x29

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_98
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 329
    .restart local v1       #count:I
    goto :goto_4d

    .line 326
    .end local v1           #count:I
    :cond_a5
    const-string v6, ""

    goto :goto_98

    .line 331
    .end local v4           #protectionId:Ljava/lang/String;
    :pswitch_a8
    const-string v6, "file_bt_visibility_table"

    invoke-virtual {v2, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 332
    .restart local v1       #count:I
    goto :goto_4d

    .line 334
    .end local v1           #count:I
    :pswitch_af
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    .local v0, btVisibilityId:Ljava/lang/String;
    const-string v7, "file_bt_visibility_table"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x29

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_ea
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 338
    .restart local v1       #count:I
    goto/16 :goto_4d

    .line 335
    .end local v1           #count:I
    :cond_f8
    const-string v6, ""
    :try_end_fa
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5d .. :try_end_fa} :catch_2b

    goto :goto_ea

    .line 320
    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_47
        :pswitch_5d
        :pswitch_a8
        :pswitch_af
    .end packed-switch
.end method
