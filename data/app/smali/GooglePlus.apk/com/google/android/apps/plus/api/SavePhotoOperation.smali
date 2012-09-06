.class public Lcom/google/android/apps/plus/api/SavePhotoOperation;
.super Lcom/google/android/apps/plus/api/DownloadPhotoOperation;
.source "SavePhotoOperation.java"


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final SAVE_TO_DIRECTORY:Ljava/io/File;


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mSaveToName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->SAVE_TO_DIRECTORY:Ljava/io/File;

    .line 283
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 61
    const-string v2, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 63
    return-void
.end method

.method private createSaveToName([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .parameter "header"
    .parameter "contentType"

    .prologue
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/api/SavePhotoOperation;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, downloadUrl:Ljava/lang/String;
    const/4 v5, 0x0

    .line 132
    .local v5, disposition:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_6
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v9, v15, :cond_1f

    .line 133
    const-string v15, "Content-Disposition"

    aget-object v16, p1, v9

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8f

    .line 134
    aget-object v15, p1, v9

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 139
    :cond_1f
    const/4 v8, 0x0

    .line 140
    .local v8, fileName:Ljava/lang/String;
    if-eqz v5, :cond_28

    .line 141
    move-object/from16 v0, p2

    invoke-static {v6, v5, v0}, Lcom/google/android/apps/plus/api/SavePhotoOperation;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    :cond_28
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_34

    invoke-static {v6}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->isProxyHostedUrl(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_81

    .line 145
    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 146
    .local v1, curTime:J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 147
    .local v3, date:Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mContext:Landroid/content/Context;

    const v16, 0x7f080047

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 150
    .local v4, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, extension:Ljava/lang/String;
    if-eqz v7, :cond_93

    .line 152
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    :goto_6c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 161
    .end local v1           #curTime:J
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v7           #extension:Ljava/lang/String;
    :cond_81
    new-instance v14, Ljava/io/File;

    sget-object v15, Lcom/google/android/apps/plus/api/SavePhotoOperation;->SAVE_TO_DIRECTORY:Ljava/io/File;

    invoke-direct {v14, v15, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v14, testFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_96

    .line 182
    .end local v8           #fileName:Ljava/lang/String;
    :goto_8e
    return-object v8

    .line 132
    .end local v14           #testFile:Ljava/io/File;
    :cond_8f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 154
    .restart local v1       #curTime:J
    .restart local v3       #date:Ljava/util/Date;
    .restart local v4       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v7       #extension:Ljava/lang/String;
    .restart local v8       #fileName:Ljava/lang/String;
    :cond_93
    const-string v7, ""

    goto :goto_6c

    .line 167
    .end local v1           #curTime:J
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v7           #extension:Ljava/lang/String;
    .restart local v14       #testFile:Ljava/io/File;
    :cond_96
    const-string v15, "\\."

    invoke-static {v8, v15}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, nameSegments:[Ljava/lang/String;
    array-length v15, v11

    if-nez v15, :cond_a1

    .line 169
    const/4 v8, 0x0

    goto :goto_8e

    .line 172
    :cond_a1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (%d)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, newFirstSegment:Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v12, v11, v15

    .line 174
    const-string v15, "."

    invoke-static {v15, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, nameFormat:Ljava/lang/String;
    const/4 v9, 0x1

    :goto_c2
    const/16 v15, 0x63

    if-gt v9, v15, :cond_e7

    .line 176
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v10, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, newName:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    .end local v14           #testFile:Ljava/io/File;
    sget-object v15, Lcom/google/android/apps/plus/api/SavePhotoOperation;->SAVE_TO_DIRECTORY:Ljava/io/File;

    invoke-direct {v14, v15, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .restart local v14       #testFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_e4

    move-object v8, v13

    .line 179
    goto :goto_8e

    .line 175
    :cond_e4
    add-int/lit8 v9, v9, 0x1

    goto :goto_c2

    .line 182
    .end local v13           #newName:Ljava/lang/String;
    :cond_e7
    const/4 v8, 0x0

    goto :goto_8e
.end method

.method private static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    const/16 v11, 0x2f

    const/16 v9, 0x2e

    const/4 v10, 0x0

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, filename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 205
    .local v2, extension:Ljava/lang/String;
    if-nez v3, :cond_1d

    if-eqz p1, :cond_1d

    .line 206
    invoke-static {p1}, Lcom/google/android/apps/plus/api/SavePhotoOperation;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    if-eqz v3, :cond_1d

    .line 208
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 209
    .local v4, index:I
    if-lez v4, :cond_1d

    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .end local v4           #index:I
    :cond_1d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 217
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, decodedUrl:Ljava/lang/String;
    if-eqz v0, :cond_49

    .line 219
    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 221
    .local v6, queryIndex:I
    if-lez v6, :cond_35

    .line 222
    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_35
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_49

    .line 225
    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 226
    .restart local v4       #index:I
    if-lez v4, :cond_49

    .line 227
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v4           #index:I
    .end local v6           #queryIndex:I
    :cond_49
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 235
    const-string v3, "downloadfile"

    .line 240
    :cond_51
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 241
    .local v1, dotIndex:I
    if-gez v1, :cond_a8

    .line 242
    if-eqz p2, :cond_76

    .line 243
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_76

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    :cond_76
    if-nez v2, :cond_90

    .line 249
    if-eqz p2, :cond_a5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 250
    const-string v8, "text/html"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 251
    const-string v2, ".html"

    .line 279
    :cond_90
    :goto_90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 253
    :cond_a2
    const-string v2, ".txt"

    goto :goto_90

    .line 256
    :cond_a5
    const-string v2, ".bin"

    goto :goto_90

    .line 260
    :cond_a8
    if-eqz p2, :cond_e1

    .line 263
    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 264
    .local v5, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, typeFromExt:Ljava/lang/String;
    if-eqz v7, :cond_e1

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e1

    .line 267
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_e1

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .end local v5           #lastDotIndex:I
    .end local v7           #typeFromExt:Ljava/lang/String;
    :cond_e1
    if-nez v2, :cond_e7

    .line 274
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    :cond_e7
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_90
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "contentDisposition"

    .prologue
    .line 298
    :try_start_0
    sget-object v1, Lcom/google/android/apps/plus/api/SavePhotoOperation;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 299
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 300
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 305
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_11
    return-object v1

    .line 302
    :catch_12
    move-exception v1

    .line 305
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveToFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mSaveToName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/android/apps/plus/api/SavePhotoOperation;->SAVE_TO_DIRECTORY:Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mSaveToName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onHttpReadFromStream(Ljava/io/InputStream;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    .registers 10
    .parameter "inputStream"
    .parameter "contentType"
    .parameter "contentLength"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 76
    .local v1, saveToFile:Ljava/io/File;
    iput-object p2, p0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mContentType:Ljava/lang/String;

    .line 78
    invoke-direct {p0, p4, p2}, Lcom/google/android/apps/plus/api/SavePhotoOperation;->createSaveToName([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mSaveToName:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mSaveToName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 80
    const-string v2, "HttpTransaction"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 81
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving image to local: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mSaveToName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_34
    sget-object v2, Lcom/google/android/apps/plus/api/SavePhotoOperation;->SAVE_TO_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_44

    sget-object v2, Lcom/google/android/apps/plus/api/SavePhotoOperation;->SAVE_TO_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 85
    :cond_44
    new-instance v1, Ljava/io/File;

    .end local v1           #saveToFile:Ljava/io/File;
    sget-object v2, Lcom/google/android/apps/plus/api/SavePhotoOperation;->SAVE_TO_DIRECTORY:Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/SavePhotoOperation;->mSaveToName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .restart local v1       #saveToFile:Ljava/io/File;
    if-eqz v1, :cond_57

    .line 87
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/api/SavePhotoOperation;->setOutputStream(Ljava/io/OutputStream;)V

    .line 93
    :cond_57
    :try_start_57
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->onHttpReadFromStream(Ljava/io/InputStream;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 101
    return-void

    .line 94
    :catch_5b
    move-exception v0

    .line 96
    .local v0, ioe:Ljava/io/IOException;
    if-eqz v1, :cond_67

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 99
    :cond_67
    throw v0
.end method
