.class public Lcom/sec/android/app/myfiles/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static mediaList:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 685
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/FileUtils;->mediaList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitMediaList()V
    .registers 1

    .prologue
    .line 688
    sget-object v0, Lcom/sec/android/app/myfiles/FileUtils;->mediaList:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 689
    sget-object v0, Lcom/sec/android/app/myfiles/FileUtils;->mediaList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 690
    :cond_9
    return-void
.end method

.method public static getIDfromUri(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I
    .registers 15
    .parameter "path"
    .parameter "mimetype"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 183
    .local v11, rowId:I
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v10

    .line 186
    .local v10, mediaType:I
    invoke-static {v10}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v8

    .line 187
    .local v8, isImage:Z
    invoke-static {v10}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v9

    .line 188
    .local v9, isVideo:Z
    invoke-static {v10}, Lcom/sec/android/app/myfiles/MediaFile;->isAudioFileType(I)Z

    move-result v7

    .line 190
    .local v7, isAudio:Z
    if-eqz v8, :cond_5a

    .line 191
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_43

    .line 196
    const-string v1, "[MyFiles]"

    const-string v2, "FileUtils : getIDfromUri : c is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v6           #c:Landroid/database/Cursor;
    :cond_42
    :goto_42
    return v11

    .line 198
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_43
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_56

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 202
    :cond_56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 204
    .end local v6           #c:Landroid/database/Cursor;
    :cond_5a
    if-eqz v9, :cond_9e

    .line 205
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .restart local v6       #c:Landroid/database/Cursor;
    if-nez v6, :cond_87

    .line 210
    const-string v1, "[MyFiles]"

    const-string v2, "FileUtils : getIDfromUri : c is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 212
    :cond_87
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9a

    .line 213
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 216
    :cond_9a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 218
    .end local v6           #c:Landroid/database/Cursor;
    :cond_9e
    if-eqz v7, :cond_42

    .line 219
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 222
    .restart local v6       #c:Landroid/database/Cursor;
    if-nez v6, :cond_cc

    .line 224
    const-string v1, "[MyFiles]"

    const-string v2, "FileUtils : getIDfromUri : c is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 226
    :cond_cc
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_df

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 230
    :cond_df
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_42
.end method

.method public static getItemToMediaList(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "realPath"

    .prologue
    .line 736
    sget-object v0, Lcom/sec/android/app/myfiles/FileUtils;->mediaList:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    .line 737
    sget-object v0, Lcom/sec/android/app/myfiles/FileUtils;->mediaList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 738
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static getTitleName(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .parameter "destFile"

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, lastDot:I
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, name:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 762
    if-lez v0, :cond_12

    .line 763
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 765
    :cond_12
    return-object v1
.end method

.method public static openFile(Ljava/io/File;Landroid/app/Activity;ZI)V
    .registers 14
    .parameter "f"
    .parameter "context"
    .parameter "isInSelectList"
    .parameter "sortOrder"

    .prologue
    const v9, 0x7f09002a

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v2

    .line 70
    .local v2, mediaType:I
    const-string v6, "[MyFiles]"

    const-string v7, "openFile Clicked"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getRealMimeTypeOfDRM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, mimetype:Ljava/lang/String;
    :goto_24
    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, intent:Landroid/content/Intent;
    const/16 v6, 0x64

    if-ne v6, v2, :cond_5e

    .line 88
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e .. :try_end_41} :catch_6c

    .line 164
    :goto_41
    return-void

    .line 76
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #mimetype:Ljava/lang/String;
    :cond_42
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/myfiles/MediaFile;->needToCheckMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeTypeFromMediaStore(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #mimetype:Ljava/lang/String;
    goto :goto_24

    .line 79
    .end local v3           #mimetype:Ljava/lang/String;
    :cond_55
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #mimetype:Ljava/lang/String;
    goto :goto_24

    .line 90
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_5e
    const/16 v6, 0x65

    if-ne v6, v2, :cond_3e

    .line 92
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.samsung.widget"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3e

    .line 98
    :catch_6c
    move-exception v0

    .line 99
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_41

    .line 104
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_80
    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v4

    .line 111
    .local v4, myUri:Landroid/net/Uri;
    if-nez v4, :cond_9e

    .line 112
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 114
    :cond_9e
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    const-string v6, "[MyFiles]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clicked Uri MIME type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_be
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_c1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_be .. :try_end_c1} :catch_c2

    goto :goto_41

    .line 122
    :catch_c2
    move-exception v0

    .line 123
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_41

    .line 128
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #myUri:Landroid/net/Uri;
    :cond_d7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "key_filename"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    if-nez p2, :cond_135

    .line 133
    const-string v6, "preview"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const-string v6, "sort_order"

    invoke-virtual {v1, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    :goto_f2
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 145
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    const-string v6, "[MyFiles]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Clicked uri mime type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_11b
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_11e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11b .. :try_end_11e} :catch_120

    goto/16 :goto_41

    .line 152
    :catch_120
    move-exception v0

    .line 153
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_41

    .line 136
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_135
    const-string v6, "preview"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    const-string v6, "sort_order"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_f2
.end method

.method public static pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;
    .registers 21
    .parameter "path"
    .parameter "context"

    .prologue
    .line 313
    const/16 v18, 0x0

    .line 315
    .local v18, uri:Landroid/net/Uri;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_18

    .line 318
    const-string v3, "TAG"

    const-string v4, "pathToUri file is not existed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v3, 0x0

    .line 413
    :goto_17
    return-object v3

    .line 322
    :cond_18
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->isMediaScannerScannig()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 323
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    .line 325
    const-string v3, "TAG"

    const-string v4, "Media scanner is running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v18

    .line 326
    goto :goto_17

    .line 330
    :cond_2c
    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 332
    .local v2, cr:Landroid/content/ContentResolver;
    const-wide/16 v16, 0x0

    .line 335
    .local v16, rowId:J
    invoke-static/range {p0 .. p1}, Lcom/sec/android/app/myfiles/MediaFile;->getShareMimeType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 338
    .local v15, mimetype:Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v14

    .line 341
    .local v14, mediaType:I
    invoke-static {v14}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v12

    .line 342
    .local v12, isImage:Z
    invoke-static {v14}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v13

    .line 343
    .local v13, isVideo:Z
    invoke-static {v14}, Lcom/sec/android/app/myfiles/MediaFile;->isAudioFileType(I)Z

    move-result v11

    .line 356
    .local v11, isAudio:Z
    if-eqz v12, :cond_bb

    .line 357
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 360
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_ae

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9a

    .line 362
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 363
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/images/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 366
    :cond_9a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_9d} :catch_b6

    .line 407
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v11           #isAudio:Z
    .end local v12           #isImage:Z
    .end local v13           #isVideo:Z
    .end local v14           #mediaType:I
    .end local v15           #mimetype:Ljava/lang/String;
    .end local v16           #rowId:J
    :goto_9d
    if-nez v18, :cond_aa

    .line 409
    const-string v3, "TAG"

    const-string v4, "URI is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    :cond_aa
    move-object/from16 v3, v18

    .line 413
    goto/16 :goto_17

    .line 369
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v11       #isAudio:Z
    .restart local v12       #isImage:Z
    .restart local v13       #isVideo:Z
    .restart local v14       #mediaType:I
    .restart local v15       #mimetype:Ljava/lang/String;
    .restart local v16       #rowId:J
    :cond_ae
    :try_start_ae
    const-string v3, "[MyFiles]"

    const-string v4, "FileUtils : c is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b5} :catch_b6

    goto :goto_9d

    .line 404
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v11           #isAudio:Z
    .end local v12           #isImage:Z
    .end local v13           #isVideo:Z
    .end local v14           #mediaType:I
    .end local v15           #mimetype:Ljava/lang/String;
    .end local v16           #rowId:J
    :catch_b6
    move-exception v9

    .line 405
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d

    .line 371
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v11       #isAudio:Z
    .restart local v12       #isImage:Z
    .restart local v13       #isVideo:Z
    .restart local v14       #mediaType:I
    .restart local v15       #mimetype:Ljava/lang/String;
    .restart local v16       #rowId:J
    :cond_bb
    if-eqz v13, :cond_11b

    .line 372
    :try_start_bd
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 375
    .restart local v8       #c:Landroid/database/Cursor;
    if-eqz v8, :cond_113

    .line 376
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_10f

    .line 377
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 378
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/video/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 381
    :cond_10f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_9d

    .line 384
    :cond_113
    const-string v3, "[MyFiles]"

    const-string v4, "FileUtils : c is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 386
    .end local v8           #c:Landroid/database/Cursor;
    :cond_11b
    if-eqz v11, :cond_17d

    .line 387
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 390
    .restart local v8       #c:Landroid/database/Cursor;
    if-eqz v8, :cond_174

    .line 391
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_16f

    .line 392
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 393
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/audio/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 396
    :cond_16f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9d

    .line 399
    :cond_174
    const-string v3, "[MyFiles]"

    const-string v4, "FileUtils : c is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 402
    .end local v8           #c:Landroid/database/Cursor;
    :cond_17d
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_180} :catch_b6

    move-result-object v18

    goto/16 :goto_9d
.end method

.method public static removeItemFromMediaList(Ljava/lang/String;)V
    .registers 3
    .parameter "realPath"

    .prologue
    .line 747
    sget-object v1, Lcom/sec/android/app/myfiles/FileUtils;->mediaList:Ljava/util/HashMap;

    if-eqz v1, :cond_1b

    .line 748
    invoke-static {p0}, Lcom/sec/android/app/myfiles/FileUtils;->getItemToMediaList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 749
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/sec/android/app/myfiles/FileUtils;->getItemToMediaList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 752
    .end local v0           #f:Ljava/io/File;
    :cond_16
    sget-object v1, Lcom/sec/android/app/myfiles/FileUtils;->mediaList:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :cond_1b
    return-void
.end method

.method public static updateMediaDB(Ljava/lang/String;Ljava/io/File;Landroid/app/Activity;)V
    .registers 18
    .parameter "selectedFile"
    .parameter "destFile"
    .parameter "context"

    .prologue
    .line 608
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->needToCheckMimeType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_155

    .line 609
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeTypeFromMediaStore(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 624
    .local v6, mimetype:Ljava/lang/String;
    :goto_c
    invoke-static {v6}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v5

    .line 626
    .local v5, mediaType:I
    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v3

    .line 627
    .local v3, isImage:Z
    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v4

    .line 628
    .local v4, isVideo:Z
    invoke-static {v5}, Lcom/sec/android/app/myfiles/MediaFile;->isAudioFileType(I)Z

    move-result v2

    .line 632
    .local v2, isAudio:Z
    if-eqz v2, :cond_84

    .line 633
    :try_start_1e
    const-string v11, "content://media/external/audio/media/"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {p0, v6, v0}, Lcom/sec/android/app/myfiles/FileUtils;->getIDfromUri(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 635
    .local v9, uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v10, values:Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/myfiles/FileUtils;->getTitleName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 638
    .local v7, titleName:Ljava/lang/String;
    const-string v11, "title"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v11, "_display_name"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v11, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v11, "date_modified"

    const-string v12, "0"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 643
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    .end local v7           #titleName:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_84
    if-eqz v4, :cond_ec

    .line 647
    const-string v11, "content://media/external/video/media/"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {p0, v6, v0}, Lcom/sec/android/app/myfiles/FileUtils;->getIDfromUri(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 649
    .restart local v9       #uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 650
    .restart local v10       #values:Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/myfiles/FileUtils;->getTitleName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 652
    .restart local v7       #titleName:Ljava/lang/String;
    const-string v11, "title"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v11, "_display_name"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v11, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v11, "date_modified"

    const-string v12, "0"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 657
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 660
    .end local v7           #titleName:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_ec
    if-eqz v3, :cond_154

    .line 661
    const-string v11, "content://media/external/images/media/"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {p0, v6, v0}, Lcom/sec/android/app/myfiles/FileUtils;->getIDfromUri(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 663
    .restart local v9       #uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 664
    .restart local v10       #values:Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/myfiles/FileUtils;->getTitleName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 666
    .restart local v7       #titleName:Ljava/lang/String;
    const-string v11, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v11, "date_modified"

    const-string v12, "0"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v11, "_display_name"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v11, "title"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_154
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1e .. :try_end_154} :catch_173

    .line 683
    .end local v7           #titleName:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_154
    :goto_154
    return-void

    .line 610
    .end local v2           #isAudio:Z
    .end local v3           #isImage:Z
    .end local v4           #isVideo:Z
    .end local v5           #mediaType:I
    .end local v6           #mimetype:Ljava/lang/String;
    :cond_155
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16d

    .line 611
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getRealMimeTypeOfDRM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mimetype:Ljava/lang/String;
    goto/16 :goto_c

    .line 614
    .end local v6           #mimetype:Ljava/lang/String;
    :cond_16d
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mimetype:Ljava/lang/String;
    goto/16 :goto_c

    .line 676
    .restart local v2       #isAudio:Z
    .restart local v3       #isImage:Z
    .restart local v4       #isVideo:Z
    .restart local v5       #mediaType:I
    :catch_173
    move-exception v1

    .line 677
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    const v11, 0x7f09004f

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 679
    .local v8, toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 681
    const-string v11, "[MyFiles]"

    const-string v12, "FileUtils.updateMediaDB - SQLiteFullException is occured."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_154
.end method
