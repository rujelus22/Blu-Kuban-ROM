.class public Lcom/google/android/apps/books/provider/VolumeStatesUtils;
.super Ljava/lang/Object;
.source "VolumeStatesUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMedianTextZoom(Landroid/accounts/Account;Landroid/content/ContentResolver;)F
    .registers 14
    .parameter "account"
    .parameter "resolver"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 28
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    .local v1, volumeStateUri:Landroid/net/Uri;
    const-string v7, "text_zoom IS NOT NULL AND account_name = ? "

    .line 31
    .local v7, selection:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v3

    .line 32
    .local v4, selectionArgs:[Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "text_zoom"

    aput-object v0, v2, v3

    .line 34
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "text_zoom IS NOT NULL AND account_name = ? "

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 37
    .local v9, zoomCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 39
    .local v8, textZoom:F
    :try_start_1b
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 40
    .local v11, zoomsCount:I
    if-lez v11, :cond_3a

    .line 41
    new-array v10, v11, [F

    .line 42
    .local v10, zoomValues:[F
    const/4 v6, 0x0

    .local v6, ii:I
    :goto_24
    if-ge v6, v11, :cond_33

    .line 43
    invoke-interface {v9, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 44
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    aput v0, v10, v6

    .line 42
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 47
    :cond_33
    invoke-static {v10}, Ljava/util/Arrays;->sort([F)V

    .line 51
    div-int/lit8 v0, v11, 0x2

    aget v8, v10, v0
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_3e

    .line 54
    .end local v6           #ii:I
    .end local v10           #zoomValues:[F
    :cond_3a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 57
    return v8

    .line 54
    .end local v11           #zoomsCount:I
    :catchall_3e
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static saveTextZoomForVolume(FLandroid/accounts/Account;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 9
    .parameter "textZoom"
    .parameter "account"
    .parameter "volumeId"
    .parameter "resolver"

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, stateUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "volume_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "text_zoom"

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 67
    invoke-virtual {p3, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    return-void
.end method
