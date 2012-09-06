.class public Lcom/android/email/AttachmentInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final mAccountKey:J

.field public final mAllowInstall:Z

.field public final mAllowSave:Z

.field public final mAllowView:Z

.field public final mContentType:Ljava/lang/String;

.field public final mDenyFlags:I

.field public final mFlags:I

.field public final mId:J

.field public final mName:Ljava/lang/String;

.field public final mSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x6

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

    const/4 v1, 0x5

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/AttachmentInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)V
    .registers 28
    .parameter "context"
    .parameter "id"
    .parameter "size"
    .parameter "fileName"
    .parameter "mimeType"
    .parameter "accountKey"
    .parameter "flags"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mSize:J

    .line 103
    invoke-static/range {p6 .. p7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 105
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mId:J

    .line 106
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    .line 107
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/AttachmentInfo;->mFlags:I

    .line 108
    const/4 v6, 0x1

    .line 109
    .local v6, canView:Z
    const/4 v5, 0x1

    .line 110
    .local v5, canSave:Z
    const/4 v4, 0x0

    .line 111
    .local v4, canInstall:Z
    const/4 v7, 0x0

    .line 114
    .local v7, denyFlags:I
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v13

    if-nez v13, :cond_34

    .line 115
    const/4 v5, 0x0

    .line 119
    :cond_34
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    sget-object v14, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    sget-object v14, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4d

    .line 123
    :cond_4c
    const/4 v6, 0x0

    .line 127
    :cond_4d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, extension:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_67

    sget-object v13, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_67

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    or-int/lit8 v7, v7, 0x1

    .line 137
    :cond_67
    move/from16 v0, p10

    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_71

    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    or-int/lit8 v7, v7, 0x20

    .line 144
    :cond_71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9d

    sget-object v13, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9d

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "install_non_market_apps"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e1

    const/4 v12, 0x1

    .line 151
    .local v12, sideloadEnabled:Z
    :goto_96
    and-int/2addr v5, v12

    .line 152
    move v6, v5

    .line 153
    move v4, v5

    .line 154
    if-nez v12, :cond_9d

    .line 155
    or-int/lit8 v7, v7, 0x8

    .line 161
    .end local v12           #sideloadEnabled:Z
    :cond_9d
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    const-wide/32 v15, 0x500000

    cmp-long v13, v13, v15

    if-lez v13, :cond_b3

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v10

    .line 163
    .local v10, networkType:I
    const/4 v13, 0x1

    if-eq v10, v13, :cond_b3

    .line 164
    const/4 v6, 0x0

    .line 165
    const/4 v5, 0x0

    .line 166
    or-int/lit8 v7, v7, 0x2

    .line 171
    .end local v10           #networkType:I
    :cond_b3
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v9

    .line 172
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 173
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_d0

    .line 175
    const/4 v6, 0x0

    .line 176
    const/4 v5, 0x0

    .line 177
    or-int/lit8 v7, v7, 0x4

    .line 180
    :cond_d0
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    .line 181
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    .line 182
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    .line 183
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    .line 184
    return-void

    .line 149
    .end local v3           #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    :cond_e1
    const/4 v12, 0x0

    goto :goto_96
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 14
    .parameter "context"
    .parameter "c"

    .prologue
    .line 90
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

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)V
    .registers 14
    .parameter "context"
    .parameter "info"

    .prologue
    .line 96
    iget-wide v2, p2, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v4, p2, Lcom/android/email/AttachmentInfo;->mSize:J

    iget-object v6, p2, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    iget-wide v8, p2, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    iget v10, p2, Lcom/android/email/AttachmentInfo;->mFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 14
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 85
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    iget-object v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    iget-wide v8, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    iget v10, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)V

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    if-ne p1, p0, :cond_5

    .line 235
    .end local p1
    :cond_4
    :goto_4
    return v0

    .line 231
    .restart local p1
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 232
    goto :goto_4

    .line 235
    :cond_13
    check-cast p1, Lcom/android/email/AttachmentInfo;

    .end local p1
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v4, p0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/AttachmentInfo;->getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 195
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    return-object v1
.end method

.method protected getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 203
    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {p2, p3, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 204
    .local v0, contentUri:Landroid/net/Uri;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_14

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 209
    :cond_14
    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v2, p0, Lcom/android/email/AttachmentInfo;->mId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isEligibleForDownload()Z
    .registers 2

    .prologue
    .line 217
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
    .line 240
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
