.class public Lcom/infraware/polarisoffice/OfficeLauncherActivity;
.super Landroid/app/Activity;
.source "OfficeLauncherActivity.java"


# static fields
.field static final DM_EMAIL_CONTENT_URI:Ljava/lang/String; = "content://com.android.email.provider/attachment"

.field static final DM_EMAIL_FILENAME:Ljava/lang/String; = "fileName"

.field static final DM_EMAIL_URI:Ljava/lang/String; = "com.android.email.attachmentprovider"

.field static final DM_EXT_CSV:Ljava/lang/String; = ".csv"

.field static final DM_EXT_HWP:Ljava/lang/String; = ".hwp"

.field static final DM_EXT_PDF:Ljava/lang/String; = ".pdf"

.field static final DM_EXT_PPS:Ljava/lang/String; = ".pps"

.field static final DM_EXT_PPSX:Ljava/lang/String; = ".ppsx"

.field static final DM_EXT_RTF:Ljava/lang/String; = ".rtf"

.field static final DM_EXT_SHEET:Ljava/lang/String; = ".xls"

.field static final DM_EXT_SHEET_X:Ljava/lang/String; = ".xlsx"

.field static final DM_EXT_SLIDE:Ljava/lang/String; = ".ppt"

.field static final DM_EXT_SLIDE_X:Ljava/lang/String; = ".pptx"

.field static final DM_EXT_TXT:Ljava/lang/String; = ".txt"

.field static final DM_EXT_WORD:Ljava/lang/String; = ".doc"

.field static final DM_EXT_WORD_X:Ljava/lang/String; = ".docx"

.field static final DM_EXT_XML:Ljava/lang/String; = ".xml"

.field static final DM_GMAIL_ATTINFO:Ljava/lang/String; = "joinedAttachmentInfos"

.field static final DM_GMAIL_CONTENT_URI:Ljava/lang/String; = "content://gmail-ls/messages/"

.field static final DM_GMAIL_URI:Ljava/lang/String; = "gmail-ls"

.field private static LOG_CAT:Ljava/lang/String;


# instance fields
.field protected mbCalledOurPkg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "EvOpenAnimationActivity"

    sput-object v0, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->LOG_CAT:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->mbCalledOurPkg:Z

    .line 31
    return-void
.end method

.method private getNativeMailFileName(Landroid/content/Intent;I)Ljava/lang/String;
    .registers 25
    .parameter "intent"
    .parameter "size"

    .prologue
    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, LABELS_URI:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 104
    .local v13, fileName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 105
    .local v21, uri:Landroid/net/Uri;
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, contentPath:Ljava/lang/String;
    const/16 v3, 0xa

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 109
    .local v20, subPath:Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, content:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 112
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 114
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    aget-object v3, v10, v3

    const-string v5, "gmail-ls"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 116
    const-string v3, "content://gmail-ls/messages/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 117
    .end local v4           #LABELS_URI:Landroid/net/Uri;
    .local v9, LABELS_URI:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v5, v10, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 120
    .local v2, ACCOUNT_URI:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_53
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 121
    if-eqz v12, :cond_81

    .line 123
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 124
    const-string v3, "joinedAttachmentInfos"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 125
    .local v16, infoColumn:I
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 126
    .local v15, info:Ljava/lang/String;
    const-string v3, "\n"

    const-string v5, "|"

    invoke-virtual {v15, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 127
    .local v17, infoReplace:Ljava/lang/String;
    const-string v3, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 129
    .local v18, infoSplit:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_7c
    move-object/from16 v0, v18

    array-length v3, v0
    :try_end_7f
    .catchall {:try_start_53 .. :try_end_7f} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7f} :catch_b1

    if-lt v14, v3, :cond_88

    .line 146
    .end local v14           #i:I
    .end local v15           #info:Ljava/lang/String;
    .end local v16           #infoColumn:I
    .end local v17           #infoReplace:Ljava/lang/String;
    .end local v18           #infoSplit:[Ljava/lang/String;
    :cond_81
    :goto_81
    if-eqz v12, :cond_117

    .line 147
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    .line 175
    .end local v2           #ACCOUNT_URI:Landroid/net/Uri;
    .end local v9           #LABELS_URI:Landroid/net/Uri;
    .restart local v4       #LABELS_URI:Landroid/net/Uri;
    :cond_87
    :goto_87
    return-object v13

    .line 131
    .end local v4           #LABELS_URI:Landroid/net/Uri;
    .restart local v2       #ACCOUNT_URI:Landroid/net/Uri;
    .restart local v9       #LABELS_URI:Landroid/net/Uri;
    .restart local v14       #i:I
    .restart local v15       #info:Ljava/lang/String;
    .restart local v16       #infoColumn:I
    .restart local v17       #infoReplace:Ljava/lang/String;
    .restart local v18       #infoSplit:[Ljava/lang/String;
    :cond_88
    :try_start_88
    const-string v3, "PoalrisOffice"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "attachmentSplit = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v18, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/infraware/common/util/CMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    aget-object v3, v18, v14

    const/4 v5, 0x5

    aget-object v5, v10, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 134
    add-int/lit8 v3, v14, 0x1

    aget-object v13, v18, v3
    :try_end_ad
    .catchall {:try_start_88 .. :try_end_ad} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ad} :catch_b1

    .line 135
    goto :goto_81

    .line 129
    :cond_ae
    add-int/lit8 v14, v14, 0x1

    goto :goto_7c

    .line 141
    .end local v14           #i:I
    .end local v15           #info:Ljava/lang/String;
    .end local v16           #infoColumn:I
    .end local v17           #infoReplace:Ljava/lang/String;
    .end local v18           #infoSplit:[Ljava/lang/String;
    :catch_b1
    move-exception v3

    .line 146
    if-eqz v12, :cond_117

    .line 147
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    .end local v9           #LABELS_URI:Landroid/net/Uri;
    .restart local v4       #LABELS_URI:Landroid/net/Uri;
    goto :goto_87

    .line 145
    .end local v4           #LABELS_URI:Landroid/net/Uri;
    .restart local v9       #LABELS_URI:Landroid/net/Uri;
    :catchall_b9
    move-exception v3

    .line 146
    if-eqz v12, :cond_bf

    .line 147
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_bf
    throw v3

    .line 150
    .end local v2           #ACCOUNT_URI:Landroid/net/Uri;
    .end local v9           #LABELS_URI:Landroid/net/Uri;
    .restart local v4       #LABELS_URI:Landroid/net/Uri;
    :cond_c0
    const/4 v3, 0x0

    aget-object v3, v10, v3

    const-string v5, "com.android.email.attachmentprovider"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 152
    const-string v3, "content://com.android.email.provider/attachment"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 155
    const/4 v5, 0x0

    :try_start_d2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "contentUri = \""

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 156
    if-eqz v12, :cond_102

    .line 158
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_102

    .line 160
    const-string v3, "fileName"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 161
    .local v19, nameColumn:I
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_101
    .catchall {:try_start_d2 .. :try_end_101} :catchall_110
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_101} :catch_108

    move-result-object v13

    .line 170
    .end local v19           #nameColumn:I
    :cond_102
    if-eqz v12, :cond_87

    .line 171
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_87

    .line 165
    :catch_108
    move-exception v3

    .line 170
    if-eqz v12, :cond_87

    .line 171
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_87

    .line 169
    :catchall_110
    move-exception v3

    .line 170
    if-eqz v12, :cond_116

    .line 171
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_116
    throw v3

    .end local v4           #LABELS_URI:Landroid/net/Uri;
    .restart local v2       #ACCOUNT_URI:Landroid/net/Uri;
    .restart local v9       #LABELS_URI:Landroid/net/Uri;
    :cond_117
    move-object v4, v9

    .end local v9           #LABELS_URI:Landroid/net/Uri;
    .restart local v4       #LABELS_URI:Landroid/net/Uri;
    goto/16 :goto_87
.end method

.method private getOpenFilePath(Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 18
    .parameter "intent"
    .parameter "extras"

    .prologue
    .line 181
    const/4 v7, 0x0

    .line 182
    .local v7, path:Ljava/lang/String;
    if-eqz p2, :cond_f

    .line 185
    const-string v12, "key_filename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    if-eqz v7, :cond_f

    move-object v4, v7

    .line 281
    :cond_e
    :goto_e
    return-object v4

    .line 190
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 192
    .local v11, uri:Landroid/net/Uri;
    if-nez v11, :cond_17

    .line 193
    const/4 v4, 0x0

    goto :goto_e

    .line 195
    :cond_17
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string v13, "file"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 197
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, filePath:Ljava/lang/String;
    const/16 v12, 0x2e

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    if-gez v12, :cond_e

    .line 199
    const/4 v4, 0x0

    goto :goto_e

    .line 206
    .end local v4           #filePath:Ljava/lang/String;
    :cond_31
    const/4 v10, 0x0

    .line 208
    .local v10, stream:Ljava/io/InputStream;
    :try_start_32
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_39} :catch_3e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_39} :catch_11c

    move-result-object v10

    .line 213
    if-nez v10, :cond_41

    .line 214
    const/4 v4, 0x0

    goto :goto_e

    .line 209
    :catch_3e
    move-exception v2

    .line 210
    .local v2, e:Ljava/lang/SecurityException;
    const/4 v4, 0x0

    goto :goto_e

    .line 216
    .end local v2           #e:Ljava/lang/SecurityException;
    :cond_41
    :try_start_41
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, strMimeType:Ljava/lang/String;
    if-nez v9, :cond_49

    .line 218
    const/4 v4, 0x0

    goto :goto_e

    .line 220
    :cond_49
    const/4 v8, 0x0

    .line 221
    .local v8, strExt:Ljava/lang/String;
    const-string v12, "application/msword"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_5a

    const-string v12, "application/vnd.ms-word"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_aa

    .line 222
    :cond_5a
    const-string v8, ".doc"

    .line 250
    :cond_5c
    :goto_5c
    const/4 v3, 0x0

    .line 258
    .local v3, fileName:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "download-"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    const/4 v12, 0x3

    invoke-virtual {p0, v3, v12}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 261
    .local v6, out:Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 264
    .local v1, buf:[B
    :goto_7d
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 265
    .local v5, numread:I
    if-gtz v5, :cond_116

    .line 272
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 273
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 275
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e

    .line 223
    .end local v1           #buf:[B
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #numread:I
    .end local v6           #out:Ljava/io/FileOutputStream;
    :cond_aa
    const-string v12, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_b5

    .line 224
    const-string v8, ".docx"

    goto :goto_5c

    .line 225
    :cond_b5
    const-string v12, "application/vnd.ms-excel"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_c0

    .line 226
    const-string v8, ".xls"

    goto :goto_5c

    .line 227
    :cond_c0
    const-string v12, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_cb

    .line 228
    const-string v8, ".xlsx"

    goto :goto_5c

    .line 229
    :cond_cb
    const-string v12, "application/vnd.ms-powerpoint"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_d6

    .line 230
    const-string v8, ".ppt"

    goto :goto_5c

    .line 231
    :cond_d6
    const-string v12, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_e2

    .line 232
    const-string v8, ".pptx"

    goto/16 :goto_5c

    .line 233
    :cond_e2
    const-string v12, "application/pdf"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_ee

    .line 234
    const-string v8, ".pdf"

    goto/16 :goto_5c

    .line 235
    :cond_ee
    const-string v12, "application/hwp"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_106

    const-string v12, "application/x-hwp"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_106

    const-string v12, "application/haansofthwp"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_10a

    .line 236
    :cond_106
    const-string v8, ".hwp"

    goto/16 :goto_5c

    .line 237
    :cond_10a
    const-string v12, "text/plain"

    invoke-virtual {v9, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5c

    .line 238
    const-string v8, ".txt"

    goto/16 :goto_5c

    .line 268
    .restart local v1       #buf:[B
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v5       #numread:I
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_116
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_11a} :catch_11c

    goto/16 :goto_7d

    .line 277
    .end local v1           #buf:[B
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #numread:I
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v8           #strExt:Ljava/lang/String;
    .end local v9           #strMimeType:Ljava/lang/String;
    :catch_11c
    move-exception v12

    .line 281
    const/4 v4, 0x0

    goto/16 :goto_e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 61
    sget-object v7, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->LOG_CAT:Ljava/lang/String;

    const-string v8, "------------------------------- onCreate "

    invoke-static {v7, v8}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 65
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 68
    .local v2, extras:Landroid/os/Bundle;
    :try_start_16
    const-string v7, "key_caller_pkg_name"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, caller:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_29

    .line 70
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->mbCalledOurPkg:Z
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_29} :catch_40

    .line 73
    .end local v0           #caller:Ljava/lang/String;
    :cond_29
    :goto_29
    const-string v7, "INTCMD"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v10, v7, :cond_44

    .line 75
    const-string v7, "key_new_file"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, newFilePath:Ljava/lang/String;
    invoke-virtual {p0, v4, v10}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->processOpen(Ljava/lang/String;I)V

    .line 97
    .end local v4           #newFilePath:Ljava/lang/String;
    :goto_3a
    const/high16 v7, 0x7f03

    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->setContentView(I)V

    .line 98
    :goto_3f
    return-void

    .line 71
    :catch_40
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    iput-boolean v9, p0, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->mbCalledOurPkg:Z

    goto :goto_29

    .line 78
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_44
    const-string v7, "INTCMD"

    invoke-virtual {v3, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v12, v7, :cond_56

    .line 80
    const-string v7, "key_template_file"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, tempFilePath:Ljava/lang/String;
    invoke-virtual {p0, v6, v12}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->processOpen(Ljava/lang/String;I)V

    goto :goto_3a

    .line 86
    .end local v6           #tempFilePath:Ljava/lang/String;
    :cond_56
    invoke-direct {p0, v3, v2}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->getOpenFilePath(Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, openFilePath:Ljava/lang/String;
    if-eqz v5, :cond_66

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_66

    .line 88
    invoke-virtual {p0, v5, v9}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->processOpen(Ljava/lang/String;I)V

    goto :goto_3a

    .line 91
    :cond_66
    const v7, 0x7f0801e3

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->finish()V

    goto :goto_3f
.end method

.method protected processEnd()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->finish()V

    .line 328
    invoke-virtual {p0, v0, v0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->overridePendingTransition(II)V

    .line 329
    return-void
.end method

.method protected processOpen(Ljava/lang/String;I)V
    .registers 9
    .parameter "filePath"
    .parameter "OpenType"

    .prologue
    const/4 v3, 0x1

    .line 285
    if-eqz p1, :cond_4f

    .line 286
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 287
    .local v1, nIndex:I
    if-gez v1, :cond_f

    .line 289
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->processEnd()V

    .line 324
    .end local v1           #nIndex:I
    :goto_e
    return-void

    .line 293
    .restart local v1       #nIndex:I
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, strExt:Ljava/lang/String;
    const-string v4, ".doc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, ".docx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_53

    .line 297
    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/word/WordEditorActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    :goto_2e
    const/high16 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    const-string v4, "INTCMD"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const-string v4, "key_filename"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v4, "key_disable_send_file"

    iget-boolean v5, p0, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->mbCalledOurPkg:Z

    if-eqz v5, :cond_49

    const/4 v3, 0x0

    :cond_49
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #nIndex:I
    .end local v2           #strExt:Ljava/lang/String;
    :cond_4f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeLauncherActivity;->processEnd()V

    goto :goto_e

    .line 298
    .restart local v1       #nIndex:I
    .restart local v2       #strExt:Ljava/lang/String;
    :cond_53
    const-string v4, ".ppt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_63

    const-string v4, ".pptx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_75

    .line 299
    :cond_63
    if-ne p2, v3, :cond_6d

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_2e

    .line 302
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6d
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_2e

    .line 304
    .end local v0           #intent:Landroid/content/Intent;
    :cond_75
    const-string v4, ".pps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_85

    const-string v4, ".ppsx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_97

    .line 305
    :cond_85
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "key_pps_file"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v4, "key_pps_file_path"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2e

    .line 309
    .end local v0           #intent:Landroid/content/Intent;
    :cond_97
    const-string v4, ".xls"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a7

    const-string v4, ".xlsx"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_af

    .line 310
    :cond_a7
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_2e

    .line 312
    .end local v0           #intent:Landroid/content/Intent;
    :cond_af
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/polarisoffice/viewer/ViewerActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto/16 :goto_2e
.end method
