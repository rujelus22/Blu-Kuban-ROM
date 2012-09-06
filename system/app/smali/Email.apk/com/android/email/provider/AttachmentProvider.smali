.class public Lcom/android/email/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# static fields
.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mimeType"

    aput-object v1, v0, v2

    const-string v1, "fileName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fileName"

    aput-object v1, v0, v2

    const-string v1, "size"

    aput-object v1, v0, v3

    const-string v1, "contentUri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 316
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_24

    move-result-object v0

    .line 323
    :goto_5
    return-object v0

    .line 318
    :catch_6
    move-exception v2

    .line 319
    .local v2, oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 321
    .end local v2           #oome:Ljava/lang/OutOfMemoryError;
    :catch_24
    move-exception v1

    .line 322
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "type"
    .parameter "data"

    .prologue
    .line 308
    const-string v0, "image/*"

    invoke-static {p1, v0}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 309
    invoke-direct {p0, p2}, Lcom/android/email/provider/AttachmentProvider;->createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 16
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 102
    .local v7, callingId:J
    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    .line 103
    .local v13, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 104
    .local v11, id:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 105
    .local v10, format:Ljava/lang/String;
    const-string v0, "THUMBNAIL"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 106
    const-string v12, "image/png"
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_68

    .line 124
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_24
    return-object v12

    .line 108
    :cond_25
    :try_start_25
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_68

    move-result-object v6

    .line 112
    .local v6, c:Landroid/database/Cursor;
    :try_start_41
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 113
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, mimeType:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, fileName:Ljava/lang/String;
    invoke-static {v9, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_63

    move-result-object v12

    .line 119
    :try_start_55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_68

    .line 124
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 119
    .end local v9           #fileName:Ljava/lang/String;
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_5c
    :try_start_5c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_68

    .line 124
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 119
    :catchall_63
    move-exception v0

    :try_start_64
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    .line 124
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #format:Ljava/lang/String;
    .end local v11           #id:Ljava/lang/String;
    .end local v13           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_68
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 8

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 83
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_2d

    aget-object v1, v0, v4

    .line 84
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, filename:Ljava/lang/String;
    const-string v6, ".tmp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27

    const-string v6, "thmb_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 86
    :cond_27
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 83
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 89
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :cond_2d
    const/4 v6, 0x1

    return v6
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 33
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v3, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 145
    .local v13, context:Landroid/content/Context;
    const-string v3, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v13, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1c

    .line 147
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 149
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    .line 150
    .local v26, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 151
    .local v9, accountId:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 152
    .local v19, id:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v13, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v25

    .line 154
    .local v25, saveIn:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_43

    .line 155
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z

    .line 157
    :cond_43
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v22, newFile:Ljava/io/File;
    const/high16 v3, 0x3c00

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 221
    .end local v13           #context:Landroid/content/Context;
    .end local v22           #newFile:Ljava/io/File;
    .end local v25           #saveIn:Ljava/io/File;
    :goto_56
    return-object v3

    .line 162
    .end local v9           #accountId:Ljava/lang/String;
    .end local v19           #id:Ljava/lang/String;
    .end local v26           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_57
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 164
    .local v11, callingId:J
    :try_start_5b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v26

    .line 165
    .restart local v26       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 166
    .restart local v9       #accountId:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 167
    .restart local v19       #id:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 168
    .local v17, format:Ljava/lang/String;
    const-string v3, "THUMBNAIL"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b4

    .line 169
    const/4 v3, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 170
    .local v29, width:I
    const/4 v3, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 171
    .local v18, height:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thmb_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 172
    .local v16, filename:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    .line 173
    .local v14, dir:Ljava/io/File;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_163

    .line 175
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v4

    .line 177
    .local v4, attachmentUri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_data"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/provider/AttachmentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ee
    .catchall {:try_start_5b .. :try_end_ee} :catchall_13b

    move-result-object v10

    .line 179
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_103

    .line 181
    :try_start_f1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 182
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_ff
    .catchall {:try_start_f1 .. :try_end_ff} :catchall_136

    move-result-object v4

    .line 187
    :try_start_100
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_103
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_10e
    .catchall {:try_start_100 .. :try_end_10e} :catchall_13b

    move-result-object v28

    .line 192
    .local v28, type:Ljava/lang/String;
    :try_start_10f
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    .line 194
    .local v20, in:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_124
    .catchall {:try_start_10f .. :try_end_124} :catchall_13b
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_124} :catch_16e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10f .. :try_end_124} :catch_191

    move-result-object v27

    .line 195
    .local v27, thumbnail:Landroid/graphics/Bitmap;
    if-nez v27, :cond_140

    .line 196
    const/4 v3, 0x0

    .line 221
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_56

    .line 184
    .end local v20           #in:Ljava/io/InputStream;
    .end local v27           #thumbnail:Landroid/graphics/Bitmap;
    .end local v28           #type:Ljava/lang/String;
    :cond_12d
    const/4 v3, 0x0

    .line 187
    :try_start_12e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_13b

    .line 221
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_56

    .line 187
    :catchall_136
    move-exception v3

    :try_start_137
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_13b
    .catchall {:try_start_137 .. :try_end_13b} :catchall_13b

    .line 221
    .end local v4           #attachmentUri:Landroid/net/Uri;
    .end local v9           #accountId:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v14           #dir:Ljava/io/File;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #filename:Ljava/lang/String;
    .end local v17           #format:Ljava/lang/String;
    .end local v18           #height:I
    .end local v19           #id:Ljava/lang/String;
    .end local v26           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v29           #width:I
    :catchall_13b
    move-exception v3

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 198
    .restart local v4       #attachmentUri:Landroid/net/Uri;
    .restart local v9       #accountId:Ljava/lang/String;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v14       #dir:Ljava/io/File;
    .restart local v15       #file:Ljava/io/File;
    .restart local v16       #filename:Ljava/lang/String;
    .restart local v17       #format:Ljava/lang/String;
    .restart local v18       #height:I
    .restart local v19       #id:Ljava/lang/String;
    .restart local v20       #in:Ljava/io/InputStream;
    .restart local v26       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v28       #type:Ljava/lang/String;
    .restart local v29       #width:I
    :cond_140
    const/4 v3, 0x1

    :try_start_141
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 199
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 200
    .local v24, out:Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 201
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileOutputStream;->close()V

    .line 202
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_163
    .catchall {:try_start_141 .. :try_end_163} :catchall_13b
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_163} :catch_16e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_141 .. :try_end_163} :catch_191

    .line 213
    .end local v4           #attachmentUri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v20           #in:Ljava/io/InputStream;
    .end local v24           #out:Ljava/io/FileOutputStream;
    .end local v27           #thumbnail:Landroid/graphics/Bitmap;
    .end local v28           #type:Ljava/lang/String;
    :cond_163
    const/high16 v3, 0x1000

    :try_start_165
    invoke-static {v15, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_168
    .catchall {:try_start_165 .. :try_end_168} :catchall_13b

    move-result-object v3

    .line 221
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_56

    .line 203
    .restart local v4       #attachmentUri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v28       #type:Ljava/lang/String;
    :catch_16e
    move-exception v21

    .line 204
    .local v21, ioe:Ljava/io/IOException;
    :try_start_16f
    const-string v3, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openFile/thumbnail failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catchall {:try_start_16f .. :try_end_18b} :catchall_13b

    .line 206
    const/4 v3, 0x0

    .line 221
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_56

    .line 207
    .end local v21           #ioe:Ljava/io/IOException;
    :catch_191
    move-exception v23

    .line 208
    .local v23, oome:Ljava/lang/OutOfMemoryError;
    :try_start_192
    const-string v3, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openFile/thumbnail failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catchall {:try_start_192 .. :try_end_1ae} :catchall_13b

    .line 210
    const/4 v3, 0x0

    .line 221
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_56

    .line 216
    .end local v4           #attachmentUri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v14           #dir:Ljava/io/File;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #filename:Ljava/lang/String;
    .end local v18           #height:I
    .end local v23           #oome:Ljava/lang/OutOfMemoryError;
    .end local v28           #type:Ljava/lang/String;
    .end local v29           #width:I
    :cond_1b4
    :try_start_1b4
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".db_att"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1db
    .catchall {:try_start_1b4 .. :try_end_1db} :catchall_13b

    move-result-object v3

    .line 221
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_56
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 30
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 247
    .local v10, callingId:J
    if-nez p2, :cond_17

    .line 248
    const/4 v2, 0x2

    :try_start_7
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v19, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v19, v2

    .end local p2
    .local v19, projection:[Ljava/lang/String;
    move-object/from16 p2, v19

    .line 255
    .end local v19           #projection:[Ljava/lang/String;
    .restart local p2
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    .line 256
    .local v21, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 257
    .local v8, accountId:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 258
    .local v17, id:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 259
    .local v15, format:Ljava/lang/String;
    const/16 v18, 0x0

    .line 260
    .local v18, name:Ljava/lang/String;
    const/16 v22, -0x1

    .line 261
    .local v22, size:I
    const/4 v13, 0x0

    .line 263
    .local v13, contentUri:Ljava/lang/String;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_a6

    move-result-object v9

    .line 267
    .local v9, c:Landroid/database/Cursor;
    :try_start_58
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 268
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 269
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 270
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_a1

    move-result-object v13

    .line 275
    :try_start_6d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 278
    new-instance v20, Landroid/database/MatrixCursor;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 279
    .local v20, ret:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    array-length v2, v0

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 280
    .local v23, values:[Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v0, p2

    array-length v14, v0

    .local v14, count:I
    :goto_85
    move/from16 v0, v16

    if-ge v0, v14, :cond_d0

    .line 281
    aget-object v12, p2, v16

    .line 282
    .local v12, column:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 283
    aput-object v17, v23, v16

    .line 280
    :cond_95
    :goto_95
    add-int/lit8 v16, v16, 0x1

    goto :goto_85

    .line 272
    .end local v12           #column:Ljava/lang/String;
    .end local v14           #count:I
    .end local v16           #i:I
    .end local v20           #ret:Landroid/database/MatrixCursor;
    .end local v23           #values:[Ljava/lang/Object;
    :cond_98
    const/16 v20, 0x0

    .line 275
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catchall {:try_start_6d .. :try_end_9d} :catchall_a6

    .line 298
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_a0
    return-object v20

    .line 275
    :catchall_a1
    move-exception v2

    :try_start_a2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_a6

    .line 298
    .end local v8           #accountId:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #contentUri:Ljava/lang/String;
    .end local v15           #format:Ljava/lang/String;
    .end local v17           #id:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v21           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v22           #size:I
    :catchall_a6
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 285
    .restart local v8       #accountId:Ljava/lang/String;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v12       #column:Ljava/lang/String;
    .restart local v13       #contentUri:Ljava/lang/String;
    .restart local v14       #count:I
    .restart local v15       #format:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v17       #id:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v20       #ret:Landroid/database/MatrixCursor;
    .restart local v21       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22       #size:I
    .restart local v23       #values:[Ljava/lang/Object;
    :cond_ab
    :try_start_ab
    const-string v2, "_data"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 286
    aput-object v13, v23, v16

    goto :goto_95

    .line 288
    :cond_b6
    const-string v2, "_display_name"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 289
    aput-object v18, v23, v16

    goto :goto_95

    .line 291
    :cond_c1
    const-string v2, "_size"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 292
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v23, v16

    goto :goto_95

    .line 295
    .end local v12           #column:Ljava/lang/String;
    :cond_d0
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_d7
    .catchall {:try_start_ab .. :try_end_d7} :catchall_a6

    .line 298
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a0
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 333
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method
