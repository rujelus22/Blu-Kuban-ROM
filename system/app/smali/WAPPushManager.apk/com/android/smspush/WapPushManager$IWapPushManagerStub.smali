.class Lcom/android/smspush/WapPushManager$IWapPushManagerStub;
.super Lcom/android/internal/telephony/IWapPushManager$Stub;
.source "WapPushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smspush/WapPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWapPushManagerStub"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/smspush/WapPushManager;


# direct methods
.method public constructor <init>(Lcom/android/smspush/WapPushManager;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->this$0:Lcom/android/smspush/WapPushManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/IWapPushManager$Stub;-><init>()V

    .line 212
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .registers 18
    .parameter "x_app_id"
    .parameter "content_type"
    .parameter "package_name"
    .parameter "class_name"
    .parameter "app_type"
    .parameter "need_signature"
    .parameter "further_processing"

    .prologue
    .line 301
    iget-object v7, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->this$0:Lcom/android/smspush/WapPushManager;

    iget-object v8, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/smspush/WapPushManager;->getDatabase(Landroid/content/Context;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    move-result-object v1

    .line 302
    .local v1, dbh:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
    invoke-virtual {v1}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 303
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->queryLastApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;

    move-result-object v3

    .line 304
    .local v3, lastapp:Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    const/4 v4, 0x0

    .line 305
    .local v4, ret:Z
    const/4 v2, 0x0

    .line 306
    .local v2, insert:Z
    const/4 v5, 0x0

    .line 308
    .local v5, sq:I
    invoke-virtual {p0, p5}, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->appTypeCheck(I)Z

    move-result v7

    if-nez v7, :cond_49

    .line 309
    const-string v7, "WAP PUSH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid app_type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". app_type must be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v7, 0x0

    .line 344
    :goto_48
    return v7

    .line 315
    :cond_49
    if-nez v3, :cond_9e

    .line 316
    const/4 v2, 0x1

    .line 317
    const/4 v5, 0x0

    .line 324
    :cond_4d
    :goto_4d
    if-eqz v2, :cond_99

    .line 325
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "x_wap_application"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v7, "content_type"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v7, "package_name"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v7, "class_name"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v7, "app_type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v8, "need_signature"

    if-eqz p6, :cond_b4

    const/4 v7, 0x1

    :goto_76
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v8, "further_processing"

    if-eqz p7, :cond_b6

    const/4 v7, 0x1

    :goto_82
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v7, "install_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v7, "appid_tbl"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 339
    const/4 v4, 0x1

    .line 342
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v7, v4

    .line 344
    goto :goto_48

    .line 318
    :cond_9e
    iget-object v7, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ae

    iget-object v7, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->className:Ljava/lang/String;

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4d

    .line 320
    :cond_ae
    const/4 v2, 0x1

    .line 321
    iget v7, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->installOrder:I

    add-int/lit8 v5, v7, 0x1

    goto :goto_4d

    .line 332
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_b4
    const/4 v7, 0x0

    goto :goto_76

    .line 333
    :cond_b6
    const/4 v7, 0x0

    goto :goto_82
.end method

.method protected appTypeCheck(I)Z
    .registers 3
    .parameter "app_type"

    .prologue
    const/4 v0, 0x1

    .line 287
    if-eqz p1, :cond_5

    if-ne p1, v0, :cond_6

    .line 291
    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public deletePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "x_app_id"
    .parameter "content_type"
    .parameter "package_name"
    .parameter "class_name"

    .prologue
    .line 396
    iget-object v4, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->this$0:Lcom/android/smspush/WapPushManager;

    iget-object v5, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/smspush/WapPushManager;->getDatabase(Landroid/content/Context;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    move-result-object v1

    .line 397
    .local v1, dbh:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
    invoke-virtual {v1}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 398
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x_wap_application=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and content_type=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and package_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and class_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, where:Ljava/lang/String;
    const-string v4, "appid_tbl"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 404
    .local v2, num_removed:I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 408
    if-lez v2, :cond_63

    const/4 v4, 0x1

    :goto_62
    return v4

    :cond_63
    const/4 v4, 0x0

    goto :goto_62
.end method

.method public processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 12
    .parameter "app_id"
    .parameter "content_type"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 238
    const-string v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wpman processMsg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v5, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->this$0:Lcom/android/smspush/WapPushManager;

    iget-object v6, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/smspush/WapPushManager;->getDatabase(Landroid/content/Context;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    move-result-object v1

    .line 241
    .local v1, dbh:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
    invoke-virtual {v1}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 242
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->queryLastApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;

    move-result-object v3

    .line 243
    .local v3, lastapp:Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 245
    if-nez v3, :cond_5d

    .line 246
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no receiver app found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v4, 0x2

    .line 281
    :goto_5c
    return v4

    .line 252
    :cond_5d
    iget v5, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->needSignature:I

    if-eqz v5, :cond_6b

    .line 253
    iget-object v5, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->signatureCheck(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 254
    const/4 v4, 0x4

    goto :goto_5c

    .line 258
    :cond_6b
    iget v5, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->appType:I

    if-nez v5, :cond_b3

    .line 260
    iget-object v5, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->className:Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v5, 0x1000

    invoke-virtual {p3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    :try_start_7b
    iget-object v5, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_80
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7b .. :try_end_80} :catch_8b

    .line 281
    :cond_80
    iget v4, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->furtherProcessing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f6

    const v4, 0x8000

    :goto_88
    or-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 265
    :catch_8b
    move-exception v2

    .line 266
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 271
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_b3
    iget-object v5, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->className:Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->packageName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->className:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 274
    iget-object v5, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_80

    .line 275
    const-string v5, "WAP PUSH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 281
    :cond_f6
    const/4 v4, 0x0

    goto :goto_88
.end method

.method protected signatureCheck(Ljava/lang/String;)Z
    .registers 5
    .parameter "package_name"

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 219
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, match:I
    if-nez v0, :cond_14

    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public updatePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .registers 17
    .parameter "x_app_id"
    .parameter "content_type"
    .parameter "package_name"
    .parameter "class_name"
    .parameter "app_type"
    .parameter "need_signature"
    .parameter "further_processing"

    .prologue
    .line 354
    invoke-virtual {p0, p5}, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->appTypeCheck(I)Z

    move-result v6

    if-nez v6, :cond_36

    .line 355
    const-string v6, "WAP PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid app_type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". app_type must be "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v6, 0x0

    .line 388
    :goto_35
    return v6

    .line 361
    :cond_36
    iget-object v6, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->this$0:Lcom/android/smspush/WapPushManager;

    iget-object v7, p0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/smspush/WapPushManager;->getDatabase(Landroid/content/Context;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    move-result-object v1

    .line 362
    .local v1, dbh:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
    invoke-virtual {v1}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 363
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->queryLastApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;

    move-result-object v2

    .line 365
    .local v2, lastapp:Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    if-nez v2, :cond_4d

    .line 366
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 367
    const/4 v6, 0x0

    goto :goto_35

    .line 370
    :cond_4d
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 371
    .local v4, values:Landroid/content/ContentValues;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x_wap_application=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and content_type=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and install_order="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->installOrder:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, where:Ljava/lang/String;
    const-string v6, "package_name"

    invoke-virtual {v4, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v6, "class_name"

    invoke-virtual {v4, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v6, "app_type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v7, "need_signature"

    if-eqz p6, :cond_c1

    const/4 v6, 0x1

    :goto_9f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v7, "further_processing"

    if-eqz p7, :cond_c3

    const/4 v6, 0x1

    :goto_ab
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v6, "appid_tbl"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 386
    .local v3, num:I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 388
    if-lez v3, :cond_c5

    const/4 v6, 0x1

    goto/16 :goto_35

    .line 378
    .end local v3           #num:I
    :cond_c1
    const/4 v6, 0x0

    goto :goto_9f

    .line 379
    :cond_c3
    const/4 v6, 0x0

    goto :goto_ab

    .line 388
    .restart local v3       #num:I
    :cond_c5
    const/4 v6, 0x0

    goto/16 :goto_35
.end method
