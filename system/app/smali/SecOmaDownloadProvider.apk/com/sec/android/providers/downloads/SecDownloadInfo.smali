.class public Lcom/sec/android/providers/downloads/SecDownloadInfo;
.super Ljava/lang/Object;
.source "SecDownloadInfo.java"


# instance fields
.field public mAppData:Ljava/lang/String;

.field public mClass:Ljava/lang/String;

.field public mContentSize:I

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCurrentBytes:I

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public volatile mHasActiveThread:Z

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mLastMod:J

.field public mMediaScanned:Z

.field public mMethod:I

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNotifyURI:Ljava/lang/String;

.field public mNumFailed:I

.field public mObjectURI:Ljava/lang/String;

.field public mOmaSdDeliveryTime:I

.field public mPackage:Ljava/lang/String;

.field public mPrimaryMimeType:Ljava/lang/String;

.field public mRedirectCount:I

.field public mReferer:Ljava/lang/String;

.field public mRetryAfter:I

.field public mSecMimeType1:Ljava/lang/String;

.field public mSecMimeType2:Ljava/lang/String;

.field public mState:I

.field public mStatus:I

.field public mStorageType:I

.field public mTotalBytes:I

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 36
    .parameter "id"
    .parameter "uri"
    .parameter "noIntegrity"
    .parameter "hint"
    .parameter "fileName"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "visibility"
    .parameter "control"
    .parameter "status"
    .parameter "numFailed"
    .parameter "retryAfter"
    .parameter "redirectCount"
    .parameter "lastMod"
    .parameter "pckg"
    .parameter "clazz"
    .parameter "extras"
    .parameter "cookies"
    .parameter "userAgent"
    .parameter "referer"
    .parameter "totalBytes"
    .parameter "currentBytes"
    .parameter "eTag"
    .parameter "mediaScanned"
    .parameter "method"
    .parameter "state"
    .parameter "ObjectURI"
    .parameter "NotifyURI"
    .parameter "AppData"
    .parameter "storageType"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    .line 81
    iput-object p2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    .line 82
    iput-boolean p3, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNoIntegrity:Z

    .line 83
    iput-object p4, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHint:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    .line 86
    iput p7, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    .line 87
    iput p8, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mVisibility:I

    .line 88
    iput p9, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mControl:I

    .line 89
    iput p10, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 90
    iput p11, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    .line 91
    move/from16 v0, p12

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mRetryAfter:I

    .line 92
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mRedirectCount:I

    .line 93
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mLastMod:J

    .line 94
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPackage:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mClass:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mExtras:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mCookies:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mReferer:Ljava/lang/String;

    .line 100
    move/from16 v0, p22

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mTotalBytes:I

    .line 101
    move/from16 v0, p23

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mCurrentBytes:I

    .line 102
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mETag:Ljava/lang/String;

    .line 103
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMediaScanned:Z

    .line 104
    sget-object v2, Lcom/sec/android/providers/downloads/SecHelpers;->sRandom:Ljava/util/Random;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFuzz:I

    .line 105
    move/from16 v0, p26

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    .line 106
    move/from16 v0, p27

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    .line 107
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mObjectURI:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mAppData:Ljava/lang/String;

    .line 110
    move/from16 v0, p31

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStorageType:I

    .line 111
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPrimaryMimeType:Ljava/lang/String;

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType1:Ljava/lang/String;

    .line 113
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType2:Ljava/lang/String;

    .line 114
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mContentSize:I

    .line 115
    const/16 v2, 0x19

    iput v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mOmaSdDeliveryTime:I

    .line 116
    return-void
.end method


# virtual methods
.method public canUseNetwork(ZZ)Z
    .registers 7
    .parameter "available"
    .parameter "roaming"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    if-nez p1, :cond_6

    move v0, v1

    .line 251
    :cond_5
    :goto_5
    return v0

    .line 248
    :cond_6
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 249
    if-eqz p2, :cond_5

    move v0, v1

    goto :goto_5
.end method

.method public hasCompletionNotification()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 232
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 238
    :cond_a
    :goto_a
    return v0

    .line 235
    :cond_b
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mVisibility:I

    if-ne v2, v1, :cond_a

    move v0, v1

    .line 236
    goto :goto_a
.end method

.method public isReadyToRestart(J)Z
    .registers 7
    .parameter "now"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 197
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mControl:I

    if-ne v2, v1, :cond_7

    .line 224
    :cond_6
    :goto_6
    return v0

    .line 201
    :cond_7
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    if-nez v2, :cond_d

    move v0, v1

    .line 203
    goto :goto_6

    .line 205
    :cond_d
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_15

    move v0, v1

    .line 207
    goto :goto_6

    .line 209
    :cond_15
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v3, 0xb7

    if-ne v2, v3, :cond_1d

    move v0, v1

    .line 211
    goto :goto_6

    .line 213
    :cond_1d
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_6

    .line 214
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    if-nez v2, :cond_29

    move v0, v1

    .line 216
    goto :goto_6

    .line 218
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->restartTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_6

    move v0, v1

    .line 220
    goto :goto_6
.end method

.method public isReadyToStart(J)Z
    .registers 7
    .parameter "now"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 151
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mControl:I

    if-ne v2, v1, :cond_7

    .line 185
    :cond_6
    :goto_6
    return v0

    .line 155
    :cond_7
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    if-nez v2, :cond_d

    move v0, v1

    .line 157
    goto :goto_6

    .line 159
    :cond_d
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_15

    move v0, v1

    .line 161
    goto :goto_6

    .line 163
    :cond_15
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v3, 0xb7

    if-ne v2, v3, :cond_1d

    move v0, v1

    .line 165
    goto :goto_6

    .line 167
    :cond_1d
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_25

    move v0, v1

    .line 170
    goto :goto_6

    .line 172
    :cond_25
    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_6

    move v0, v1

    .line 183
    goto :goto_6
.end method

.method public restartTime()J
    .registers 6

    .prologue
    .line 138
    iget v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_b

    .line 139
    iget-wide v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 141
    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFuzz:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_a
.end method

.method public sendIntentIfRequested(Landroid/net/Uri;Landroid/content/Context;)V
    .registers 6
    .parameter "contentUri"
    .parameter "context"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mExtras:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 123
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_21
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    .end local v0           #intent:Landroid/content/Intent;
    :cond_27
    return-void
.end method
