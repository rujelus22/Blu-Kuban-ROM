.class public Lcom/android/email/AttachmentInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public downloadButton:Landroid/widget/ImageButton;

.field public iconView:Landroid/widget/ImageView;

.field public final mAccountKey:J

.field public final mAllowInstall:Z

.field public final mAllowSave:Z

.field public final mAllowView:Z

.field public mAttachmentViewLin:Landroid/widget/LinearLayout;

.field public final mContentType:Ljava/lang/String;

.field public final mDenyFlags:I

.field public final mId:J

.field public final mName:Ljava/lang/String;

.field public mOverMax:Z

.field public final mSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/AttachmentInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V
    .registers 27
    .parameter "context"
    .parameter "id"
    .parameter "size"
    .parameter "fileName"
    .parameter "mimeType"
    .parameter "accountKey"

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mSize:J

    .line 146
    invoke-static/range {p6 .. p7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 148
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mId:J

    .line 149
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    .line 150
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    .line 152
    const/4 v6, 0x1

    .line 153
    .local v6, canView:Z
    const/4 v5, 0x1

    .line 154
    .local v5, canSave:Z
    const/4 v4, 0x0

    .line 155
    .local v4, canInstall:Z
    const/4 v7, 0x0

    .line 158
    .local v7, denyFlags:I
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v13

    if-nez v13, :cond_33

    .line 159
    const/4 v5, 0x0

    .line 163
    :cond_33
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    sget-object v14, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    sget-object v14, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4c

    .line 167
    :cond_4b
    const/4 v6, 0x0

    .line 171
    :cond_4c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, extension:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_65

    sget-object v13, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_65

    .line 175
    const/4 v6, 0x0

    .line 176
    or-int/lit8 v7, v7, 0x1

    .line 180
    :cond_65
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_90

    sget-object v13, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_90

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "install_non_market_apps"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d8

    const/4 v12, 0x1

    .line 195
    .local v12, sideloadEnabled:Z
    :goto_8a
    const/4 v6, 0x0

    .line 196
    if-nez v12, :cond_da

    .line 197
    or-int/lit8 v7, v7, 0x8

    .line 201
    :goto_8f
    move v4, v6

    .line 207
    .end local v4           #canInstall:Z
    .end local v12           #sideloadEnabled:Z
    :cond_90
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    sget v15, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_ab

    .line 208
    invoke-static/range {p1 .. p1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v10

    .line 209
    .local v10, networkType:I
    const/4 v13, 0x1

    if-eq v10, v13, :cond_a6

    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v5, 0x0

    .line 212
    or-int/lit8 v7, v7, 0x2

    .line 214
    :cond_a6
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    .line 220
    .end local v10           #networkType:I
    :cond_ab
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    .line 221
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 222
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 226
    .local v3, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c7

    .line 227
    const/4 v6, 0x0

    .line 228
    or-int/lit8 v7, v7, 0x4

    .line 231
    :cond_c7
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    .line 232
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    .line 233
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    .line 234
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    .line 235
    return-void

    .line 185
    .end local v3           #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .restart local v4       #canInstall:Z
    :cond_d8
    const/4 v12, 0x0

    goto :goto_8a

    .line 199
    .restart local v12       #sideloadEnabled:Z
    :cond_da
    or-int/lit8 v7, v7, 0x10

    goto :goto_8f
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "context"
    .parameter "c"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 13
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 130
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-object v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-wide v8, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;J)V

    .line 132
    return-void
.end method


# virtual methods
.method public getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 246
    iget-wide v3, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {p2, p3, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 247
    .local v0, contentUri:Landroid/net/Uri;
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_14

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 251
    :cond_14
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, intent:Landroid/content/Intent;
    :try_start_1b
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.android.email.attachmentprovider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 257
    iget-object v3, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2c
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_2c} :catch_39

    move-result-object v0

    .line 264
    :cond_2d
    :goto_2d
    iget-object v3, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const v3, 0x80001

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    return-object v1

    .line 259
    :catch_39
    move-exception v2

    .line 260
    .local v2, npe:Ljava/lang/NullPointerException;
    const-string v3, "AttachmentInfo.getAttachmentIntent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException occured!! mName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public getAttachmentIntentToFile(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 21
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/AttachmentInfo;->mId:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v14, v15}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v4

    .line 272
    .local v4, contentUri:Landroid/net/Uri;
    const-wide/16 v14, 0x0

    cmp-long v14, p2, v14

    if-lez v14, :cond_18

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 276
    :cond_18
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v9, intent:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 279
    .local v8, in:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 280
    .local v12, out:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 282
    .local v6, file:Ljava/io/File;
    :try_start_22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 283
    .local v2, cacheDir:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 285
    .local v7, fileName:Ljava/lang/String;
    if-eqz v7, :cond_32

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3d

    .line 286
    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080313

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 289
    :cond_3d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    .local v3, chechFile:Ljava/io/File;
    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 292
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 295
    :cond_4d
    invoke-static {v2, v7}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 297
    if-nez v6, :cond_f7

    .line 298
    const-string v14, "Email"

    const-string v15, "Utility.createUniqueFile - return null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v14, "Email"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FileName ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    .line 302
    .local v10, ioe:Ljava/io/IOException;
    throw v10
    :try_end_7e
    .catchall {:try_start_22 .. :try_end_7e} :catchall_14d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_7e} :catch_7e
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_7e} :catch_119

    .line 309
    .end local v2           #cacheDir:Ljava/io/File;
    .end local v3           #chechFile:Ljava/io/File;
    .end local v7           #fileName:Ljava/lang/String;
    .end local v10           #ioe:Ljava/io/IOException;
    :catch_7e
    move-exception v10

    .line 310
    .restart local v10       #ioe:Ljava/io/IOException;
    :goto_7f
    :try_start_7f
    const-string v14, "AttachmentInfo.getAttachmentIntent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException occured!! mName["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_7f .. :try_end_a3} :catchall_14d

    .line 316
    if-eqz v8, :cond_a8

    .line 318
    :try_start_a5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_1bc

    .line 322
    :cond_a8
    :goto_a8
    if-eqz v12, :cond_ad

    .line 324
    :try_start_aa
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_1bf

    .line 330
    .end local v10           #ioe:Ljava/io/IOException;
    :cond_ad
    :goto_ad
    if-eqz v6, :cond_1b3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    if-eqz v14, :cond_1b3

    .line 331
    const/4 v5, 0x0

    .line 332
    .local v5, extension:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-le v14, v15, :cond_d3

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 335
    :cond_d3
    const-string v14, ".aac"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e7

    const-string v14, "application/aac"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_159

    .line 336
    :cond_e7
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "audio/aac"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    :goto_f0
    const v14, 0x80001

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    .end local v5           #extension:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    :goto_f6
    return-object v9

    .line 305
    .restart local v2       #cacheDir:Ljava/io/File;
    .restart local v3       #chechFile:Ljava/io/File;
    .restart local v7       #fileName:Ljava/lang/String;
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_f7
    :try_start_f7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 306
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_104
    .catchall {:try_start_f7 .. :try_end_104} :catchall_14d
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_104} :catch_7e
    .catch Ljava/lang/NullPointerException; {:try_start_f7 .. :try_end_104} :catch_119

    .line 307
    .end local v12           #out:Ljava/io/OutputStream;
    .local v13, out:Ljava/io/OutputStream;
    :try_start_104
    invoke-static {v8, v13}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 308
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_10a
    .catchall {:try_start_104 .. :try_end_10a} :catchall_1c8
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_10a} :catch_1cf
    .catch Ljava/lang/NullPointerException; {:try_start_104 .. :try_end_10a} :catch_1cb

    .line 316
    if-eqz v8, :cond_10f

    .line 318
    :try_start_10c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_1b9

    .line 322
    :cond_10f
    :goto_10f
    if-eqz v13, :cond_1d3

    .line 324
    :try_start_111
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_116

    move-object v12, v13

    .line 326
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    goto :goto_ad

    .line 325
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    :catch_116
    move-exception v14

    move-object v12, v13

    .line 326
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    goto :goto_ad

    .line 312
    .end local v2           #cacheDir:Ljava/io/File;
    .end local v3           #chechFile:Ljava/io/File;
    .end local v7           #fileName:Ljava/lang/String;
    :catch_119
    move-exception v11

    .line 313
    .local v11, npe:Ljava/lang/NullPointerException;
    :goto_11a
    :try_start_11a
    const-string v14, "AttachmentInfo.getAttachmentIntent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NullPointerException occured!! mName["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13e
    .catchall {:try_start_11a .. :try_end_13e} :catchall_14d

    .line 316
    if-eqz v8, :cond_143

    .line 318
    :try_start_140
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_143} :catch_1c2

    .line 322
    :cond_143
    :goto_143
    if-eqz v12, :cond_ad

    .line 324
    :try_start_145
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_14a

    goto/16 :goto_ad

    .line 325
    :catch_14a
    move-exception v14

    goto/16 :goto_ad

    .line 316
    .end local v11           #npe:Ljava/lang/NullPointerException;
    :catchall_14d
    move-exception v14

    :goto_14e
    if-eqz v8, :cond_153

    .line 318
    :try_start_150
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_153} :catch_1c4

    .line 322
    :cond_153
    :goto_153
    if-eqz v12, :cond_158

    .line 324
    :try_start_155
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_158} :catch_1c6

    .line 326
    :cond_158
    :goto_158
    throw v14

    .line 337
    .restart local v5       #extension:Ljava/lang/String;
    :cond_159
    const-string v14, ".3ga"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16d

    const-string v14, "application/3ga"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_178

    .line 338
    :cond_16d
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "audio/mp4"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_f0

    .line 339
    :cond_178
    const-string v14, "application/vnt"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18f

    .line 340
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "text/x-vnote"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_f0

    .line 341
    :cond_18f
    const-string v14, "application/vts"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a6

    .line 342
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "text/x-vtodo"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_f0

    .line 344
    :cond_1a6
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_f0

    .line 351
    .end local v5           #extension:Ljava/lang/String;
    :cond_1b3
    invoke-virtual/range {p0 .. p3}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    goto/16 :goto_f6

    .line 319
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v2       #cacheDir:Ljava/io/File;
    .restart local v3       #chechFile:Ljava/io/File;
    .restart local v7       #fileName:Ljava/lang/String;
    .restart local v13       #out:Ljava/io/OutputStream;
    :catch_1b9
    move-exception v14

    goto/16 :goto_10f

    .end local v2           #cacheDir:Ljava/io/File;
    .end local v3           #chechFile:Ljava/io/File;
    .end local v7           #fileName:Ljava/lang/String;
    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v10       #ioe:Ljava/io/IOException;
    .restart local v12       #out:Ljava/io/OutputStream;
    :catch_1bc
    move-exception v14

    goto/16 :goto_a8

    .line 325
    :catch_1bf
    move-exception v14

    goto/16 :goto_ad

    .line 319
    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v11       #npe:Ljava/lang/NullPointerException;
    :catch_1c2
    move-exception v14

    goto :goto_143

    .end local v11           #npe:Ljava/lang/NullPointerException;
    :catch_1c4
    move-exception v15

    goto :goto_153

    .line 325
    :catch_1c6
    move-exception v15

    goto :goto_158

    .line 316
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v2       #cacheDir:Ljava/io/File;
    .restart local v3       #chechFile:Ljava/io/File;
    .restart local v7       #fileName:Ljava/lang/String;
    .restart local v13       #out:Ljava/io/OutputStream;
    :catchall_1c8
    move-exception v14

    move-object v12, v13

    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    goto :goto_14e

    .line 312
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    :catch_1cb
    move-exception v11

    move-object v12, v13

    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    goto/16 :goto_11a

    .line 309
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    :catch_1cf
    move-exception v10

    move-object v12, v13

    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    goto/16 :goto_7f

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v13       #out:Ljava/io/OutputStream;
    :cond_1d3
    move-object v12, v13

    .end local v13           #out:Ljava/io/OutputStream;
    .restart local v12       #out:Ljava/io/OutputStream;
    goto/16 :goto_ad
.end method

.method public isEligibleForDownload()Z
    .registers 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Attachment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
