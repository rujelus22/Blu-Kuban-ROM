.class public final Lcom/google/android/apps/plus/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final PHOTOID_PROJECTION:[Ljava/lang/String;

.field private static final USERID_PROJECTION:[Ljava/lang/String;

.field private static final USER_ACCOUNT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "picasa_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/util/GalleryUtils;->PHOTOID_PROJECTION:[Ljava/lang/String;

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "user_account"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/util/GalleryUtils;->USER_ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 31
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "user_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/util/GalleryUtils;->USERID_PROJECTION:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "account"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/util/GalleryUtils;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 71
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/GalleryUtils;->getAccountNameNew(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 74
    :goto_4
    return-object v0

    .line 72
    :catch_5
    move-exception v0

    .line 74
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/GalleryUtils;->getAccountNameOld(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static getAccountNameNew(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/plus/util/GalleryUtils;->USER_ACCOUNT_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 121
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2c

    :try_start_10
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 122
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_36

    move-result v1

    if-eqz v1, :cond_26

    move-object v6, v3

    .line 127
    .local v6, accountName:Ljava/lang/String;
    :goto_1e
    if-eqz v6, :cond_2e

    .line 133
    if-eqz v7, :cond_25

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_25
    return-object v6

    .line 122
    .end local v6           #accountName:Ljava/lang/String;
    :cond_26
    const/4 v1, 0x0

    :try_start_27
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1e

    .line 124
    :cond_2c
    const/4 v6, 0x0

    .restart local v6       #accountName:Ljava/lang/String;
    goto :goto_1e

    .line 130
    :cond_2e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "old version of Gallery"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_36

    .line 133
    .end local v6           #accountName:Ljava/lang/String;
    :catchall_36
    move-exception v1

    if-eqz v7, :cond_3c

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_3c
    throw v1
.end method

.method private static getAccountNameOld(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 16
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 177
    invoke-static {p1}, Lcom/google/android/apps/plus/util/GalleryUtils;->getPhotoIdOld(Landroid/net/Uri;)J

    move-result-wide v11

    .line 178
    .local v11, photoId:J
    const-wide/16 v4, 0x0

    cmp-long v2, v11, v4

    if-nez v2, :cond_c

    .line 179
    const/4 v8, 0x0

    .line 216
    :cond_b
    :goto_b
    return-object v8

    .line 182
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, photoQueryUri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/apps/plus/util/GalleryUtils;->USERID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 189
    .local v10, photoCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_6c

    :try_start_2d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 190
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_73

    move-result v9

    .line 195
    .local v9, photoAccount:I
    if-eqz v10, :cond_3d

    .line 196
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_3d
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getUsersUri()Landroid/net/Uri;

    move-result-object v3

    .line 202
    .local v3, userQueryUri:Landroid/net/Uri;
    sget-object v4, Lcom/google/android/apps/plus/util/GalleryUtils;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 206
    .local v13, userCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_7a

    :try_start_5b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 207
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_7c

    move-result-object v8

    .line 212
    .local v8, galleryAccountName:Ljava/lang/String;
    :goto_66
    if-eqz v13, :cond_b

    .line 213
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 192
    .end local v3           #userQueryUri:Landroid/net/Uri;
    .end local v8           #galleryAccountName:Ljava/lang/String;
    .end local v9           #photoAccount:I
    .end local v13           #userCursor:Landroid/database/Cursor;
    :cond_6c
    const/4 v8, 0x0

    .line 195
    if-eqz v10, :cond_b

    .line 196
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 195
    :catchall_73
    move-exception v2

    if-eqz v10, :cond_79

    .line 196
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_79
    throw v2

    .line 209
    .restart local v3       #userQueryUri:Landroid/net/Uri;
    .restart local v9       #photoAccount:I
    .restart local v13       #userCursor:Landroid/database/Cursor;
    :cond_7a
    const/4 v8, 0x0

    .restart local v8       #galleryAccountName:Ljava/lang/String;
    goto :goto_66

    .line 212
    .end local v8           #galleryAccountName:Ljava/lang/String;
    :catchall_7c
    move-exception v2

    if-eqz v13, :cond_82

    .line 213
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_82
    throw v2
.end method

.method public static getPhotoId(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/GalleryUtils;->getPhotoIdNew(Landroid/content/Context;Landroid/net/Uri;)J
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 57
    :goto_4
    return-wide v0

    .line 55
    :catch_5
    move-exception v0

    .line 57
    invoke-static {p1}, Lcom/google/android/apps/plus/util/GalleryUtils;->getPhotoIdOld(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_4
.end method

.method private static getPhotoIdNew(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 10
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/plus/util/GalleryUtils;->PHOTOID_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_34

    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 91
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object v7, v3

    .line 96
    .local v7, photoId:Ljava/lang/Long;
    :goto_1e
    if-eqz v7, :cond_36

    .line 97
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_3e

    move-result-wide v1

    .line 102
    if-eqz v6, :cond_29

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_29
    return-wide v1

    .line 91
    .end local v7           #photoId:Ljava/lang/Long;
    :cond_2a
    const/4 v1, 0x0

    :try_start_2b
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1e

    .line 93
    :cond_34
    const/4 v7, 0x0

    .restart local v7       #photoId:Ljava/lang/Long;
    goto :goto_1e

    .line 99
    :cond_36
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "old version of Gallery"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_3e

    .line 102
    .end local v7           #photoId:Ljava/lang/Long;
    :catchall_3e
    move-exception v1

    if-eqz v6, :cond_44

    .line 103
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_44
    throw v1
.end method

.method private static getPhotoIdOld(Landroid/net/Uri;)J
    .registers 8
    .parameter "uri"

    .prologue
    const-wide/16 v3, 0x0

    .line 146
    invoke-static {p0}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_a

    move-wide v2, v3

    .line 167
    :goto_9
    return-wide v2

    .line 151
    :cond_a
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_19

    :cond_17
    move-wide v2, v3

    .line 153
    goto :goto_9

    .line 155
    :cond_19
    const-string v2, "picasa"

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "item"

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_33
    move-wide v2, v3

    .line 156
    goto :goto_9

    .line 161
    :cond_35
    const/4 v2, 0x2

    :try_start_36
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3f} :catch_41

    move-result-wide v2

    goto :goto_9

    .line 162
    :catch_41
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "GalleryUtils"

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 164
    const-string v2, "GalleryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid photo ID; uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    move-wide v2, v3

    .line 167
    goto :goto_9
.end method

.method public static isGalleryContentUri(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 41
    if-eqz p0, :cond_1c

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "com.google.android.gallery3d.provider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
