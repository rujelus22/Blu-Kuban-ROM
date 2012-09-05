.class public Lcom/sec/android/app/myfiles/ExternelAccessActivityList;
.super Landroid/app/Activity;
.source "ExternelAccessActivityList.java"


# instance fields
.field private PICK_DATA_MULTIPLE:I

.field private PICK_DATA_SINGLE:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->PICK_DATA_SINGLE:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->PICK_DATA_MULTIPLE:I

    .line 101
    return-void
.end method

.method private pathToUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 18
    .parameter "path"

    .prologue
    .line 109
    const/4 v15, 0x0

    .line 110
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, cr:Landroid/content/ContentResolver;
    const-wide/16 v13, 0x0

    .line 113
    .local v13, rowId:J
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v12

    .line 116
    .local v12, mediaType:I
    invoke-static {v12}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v10

    .line 117
    .local v10, isImage:Z
    invoke-static {v12}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v11

    .line 118
    .local v11, isVideo:Z
    invoke-static {v12}, Lcom/sec/android/app/myfiles/MediaFile;->isAudioFileType(I)Z

    move-result v9

    .line 120
    .local v9, isAudio:Z
    if-eqz v10, :cond_7b

    .line 121
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 124
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_74

    .line 125
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_74

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/images/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 157
    .end local v7           #c:Landroid/database/Cursor;
    :cond_74
    :goto_74
    if-nez v15, :cond_7a

    .line 158
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 162
    :cond_7a
    return-object v15

    .line 132
    :cond_7b
    if-eqz v11, :cond_ce

    .line 133
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 136
    .restart local v7       #c:Landroid/database/Cursor;
    if-eqz v7, :cond_74

    .line 137
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_74

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 139
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/video/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    goto :goto_74

    .line 143
    .end local v7           #c:Landroid/database/Cursor;
    :cond_ce
    if-eqz v9, :cond_74

    .line 144
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 147
    .restart local v7       #c:Landroid/database/Cursor;
    if-eqz v7, :cond_74

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_74

    .line 149
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    goto/16 :goto_74
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    if-nez p2, :cond_9

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->finish()V

    .line 99
    :goto_8
    return-void

    .line 78
    :cond_9
    iget v2, p0, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->PICK_DATA_SINGLE:I

    if-ne p1, v2, :cond_2b

    .line 79
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->pathToUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 81
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_23

    .line 82
    const-string v2, "FILE_URI"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    .end local v1           #uri:Landroid/net/Uri;
    :cond_23
    :goto_23
    const/4 v2, -0x1

    invoke-virtual {p0, v2, p3}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->finish()V

    goto :goto_8

    .line 85
    :cond_2b
    iget v2, p0, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->PICK_DATA_MULTIPLE:I

    if-ne p1, v2, :cond_3e

    .line 86
    const-string v2, "FILE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, files:[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_23

    .line 89
    const-string v2, "FILE"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    .line 92
    .end local v0           #files:[Ljava/lang/String;
    :cond_3e
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p3}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->finish()V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 58
    const-string v0, "[MyFiles]"

    const-string v2, "ExternelAccessActivity : PICK_DATA_MULTIPLE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-class v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    iget v0, p0, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->PICK_DATA_MULTIPLE:I

    .line 68
    :goto_21
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    return-void

    .line 63
    :cond_25
    const-string v0, "[MyFiles]"

    const-string v2, "ExternelAccessActivity : PICK_DATA"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-class v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    iget v0, p0, Lcom/sec/android/app/myfiles/ExternelAccessActivityList;->PICK_DATA_SINGLE:I

    goto :goto_21
.end method
