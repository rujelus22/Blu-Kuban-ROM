.class Lcom/google/android/finsky/local/LocalAssetVersionRecord;
.super Ljava/lang/Object;
.source "LocalAssetVersionRecord.java"

# interfaces
.implements Lcom/google/android/finsky/local/LocalAssetVersion;
.implements Lcom/google/android/finsky/local/Writable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/LocalAssetVersionRecord$1;
    }
.end annotation


# instance fields
.field private final mAssetId:Ljava/lang/String;

.field private final mContentUri:Landroid/net/Uri;

.field private final mDownloadPendingTime:J

.field private final mDownloadTime:J

.field private final mForwardLocked:Z

.field private final mInstallTime:J

.field private final mMainObb:Lcom/google/android/finsky/download/obb/Obb;

.field private final mPackageName:Ljava/lang/String;

.field private final mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

.field private final mReferrer:Ljava/lang/String;

.field private final mRefundPeriodEndTime:Ljava/lang/Long;

.field private final mSignature:Ljava/lang/String;

.field private final mSize:J

.field private final mSource:Ljava/lang/String;

.field private final mState:Lcom/google/android/finsky/local/AssetState;

.field private final mUninstallTime:J

.field private final mVersionCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V
    .registers 27
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "assetId"
    .parameter "state"
    .parameter "size"
    .parameter "downloadPendingTime"
    .parameter "downloadTime"
    .parameter "installTime"
    .parameter "uninstallTime"
    .parameter "signature"
    .parameter "contentUri"
    .parameter "forwardLocked"
    .parameter "refundPeriodEndTime"
    .parameter "referrer"
    .parameter "source"
    .parameter "mainObb"
    .parameter "patchObb"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mVersionCode:I

    .line 47
    iput-object p3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    .line 49
    iput-wide p5, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSize:J

    .line 50
    iput-wide p7, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadPendingTime:J

    .line 51
    iput-wide p9, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadTime:J

    .line 52
    iput-wide p11, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mInstallTime:J

    .line 53
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mUninstallTime:J

    .line 54
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    .line 56
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mForwardLocked:Z

    .line 57
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    .line 58
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    .line 62
    if-nez p21, :cond_3e

    .line 63
    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object p21

    .line 64
    const-string v2, "Null main OBB in constructor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_3e
    if-nez p22, :cond_4d

    .line 67
    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object p22

    .line 68
    const-string v2, "Null patch OBB in constructor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_4d
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 71
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    if-ne p0, p1, :cond_5

    .line 276
    :cond_4
    :goto_4
    return v1

    .line 214
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 215
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 218
    check-cast v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;

    .line 220
    .local v0, that:Lcom/google/android/finsky/local/LocalAssetVersionRecord;
    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadPendingTime:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadPendingTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    move v1, v2

    .line 221
    goto :goto_4

    .line 223
    :cond_20
    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadTime:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2a

    move v1, v2

    .line 224
    goto :goto_4

    .line 226
    :cond_2a
    iget-boolean v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mForwardLocked:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mForwardLocked:Z

    if-eq v3, v4, :cond_32

    move v1, v2

    .line 227
    goto :goto_4

    .line 229
    :cond_32
    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mInstallTime:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mInstallTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3c

    move v1, v2

    .line 230
    goto :goto_4

    .line 232
    :cond_3c
    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSize:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_46

    move v1, v2

    .line 233
    goto :goto_4

    .line 235
    :cond_46
    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mUninstallTime:J

    iget-wide v5, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mUninstallTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_50

    move v1, v2

    .line 236
    goto :goto_4

    .line 238
    :cond_50
    iget v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mVersionCode:I

    iget v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mVersionCode:I

    if-eq v3, v4, :cond_58

    move v1, v2

    .line 239
    goto :goto_4

    .line 241
    :cond_58
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    :cond_66
    move v1, v2

    .line 242
    goto :goto_4

    .line 241
    :cond_68
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    if-nez v3, :cond_66

    .line 244
    :cond_6c
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    :cond_7a
    move v1, v2

    .line 246
    goto :goto_4

    .line 244
    :cond_7c
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    if-nez v3, :cond_7a

    .line 248
    :cond_80
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_91

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    :cond_8e
    move v1, v2

    .line 249
    goto/16 :goto_4

    .line 248
    :cond_91
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v3, :cond_8e

    .line 251
    :cond_95
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_a6

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    :cond_a3
    move v1, v2

    .line 253
    goto/16 :goto_4

    .line 251
    :cond_a6
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_a3

    .line 255
    :cond_aa
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_bb

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bf

    :cond_b8
    move v1, v2

    .line 256
    goto/16 :goto_4

    .line 255
    :cond_bb
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v3, :cond_b8

    .line 258
    :cond_bf
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d4

    :cond_cd
    move v1, v2

    .line 259
    goto/16 :goto_4

    .line 258
    :cond_d0
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    if-nez v3, :cond_cd

    .line 261
    :cond_d4
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    if-eqz v3, :cond_e5

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e9

    :cond_e2
    move v1, v2

    .line 263
    goto/16 :goto_4

    .line 261
    :cond_e5
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    if-nez v3, :cond_e2

    .line 265
    :cond_e9
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    if-eqz v3, :cond_fa

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fe

    :cond_f7
    move v1, v2

    .line 267
    goto/16 :goto_4

    .line 265
    :cond_fa
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    if-nez v3, :cond_f7

    .line 269
    :cond_fe
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    if-eqz v3, :cond_10f

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_113

    :cond_10c
    move v1, v2

    .line 270
    goto/16 :goto_4

    .line 269
    :cond_10f
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    if-nez v3, :cond_10c

    .line 272
    :cond_113
    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    if-eqz v3, :cond_124

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    iget-object v4, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_121
    move v1, v2

    .line 273
    goto/16 :goto_4

    .line 272
    :cond_124
    iget-object v3, v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    if-eqz v3, :cond_4

    goto :goto_121
.end method

.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDownloadPendingTime()J
    .registers 3

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadPendingTime:J

    return-wide v0
.end method

.method public getDownloadTime()J
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadTime:J

    return-wide v0
.end method

.method public getInstallTime()J
    .registers 3

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mInstallTime:J

    return-wide v0
.end method

.method public getMainObb()Lcom/google/android/finsky/download/obb/Obb;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchObb()Lcom/google/android/finsky/download/obb/Obb;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundPeriodEndTime()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSize:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/google/android/finsky/local/AssetState;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    return-object v0
.end method

.method public getUninstallTime()J
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mUninstallTime:J

    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/16 v7, 0x20

    const/4 v1, 0x0

    .line 281
    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_b6

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 282
    .local v0, result:I
    :goto_d
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mVersionCode:I

    add-int v0, v2, v3

    .line 283
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1f
    add-int v0, v3, v2

    .line 284
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    if-eqz v2, :cond_bc

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/AssetState;->hashCode()I

    move-result v2

    :goto_2d
    add-int v0, v3, v2

    .line 285
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSize:J

    iget-wide v5, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSize:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 286
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadPendingTime:J

    iget-wide v5, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadPendingTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 287
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadTime:J

    iget-wide v5, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 288
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mInstallTime:J

    iget-wide v5, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mInstallTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 289
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mUninstallTime:J

    iget-wide v5, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mUninstallTime:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v2, v3

    .line 290
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    if-eqz v2, :cond_bf

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_72
    add-int v0, v3, v2

    .line 291
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    if-eqz v2, :cond_c1

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_80
    add-int v0, v3, v2

    .line 292
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mForwardLocked:Z

    if-eqz v2, :cond_c3

    const/4 v2, 0x1

    :goto_89
    add-int v0, v3, v2

    .line 293
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_97
    add-int v0, v3, v2

    .line 294
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a5
    add-int v0, v3, v2

    .line 295
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    if-eqz v3, :cond_b3

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_b3
    add-int v0, v2, v1

    .line 296
    return v0

    .end local v0           #result:I
    :cond_b6
    move v0, v1

    .line 281
    goto/16 :goto_d

    .restart local v0       #result:I
    :cond_b9
    move v2, v1

    .line 283
    goto/16 :goto_1f

    :cond_bc
    move v2, v1

    .line 284
    goto/16 :goto_2d

    :cond_bf
    move v2, v1

    .line 290
    goto :goto_72

    :cond_c1
    move v2, v1

    .line 291
    goto :goto_80

    :cond_c3
    move v2, v1

    .line 292
    goto :goto_89

    :cond_c5
    move v2, v1

    .line 293
    goto :goto_97

    :cond_c7
    move v2, v1

    .line 294
    goto :goto_a5
.end method

.method public isForwardLocked()Z
    .registers 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mForwardLocked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalAssetVersionRecord{mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAssetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mState:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDownloadPendingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadPendingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDownloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mDownloadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mInstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUninstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mUninstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSignature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContentUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mForwardLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mForwardLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRefundPeriodEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mRefundPeriodEndTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMainObb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mMainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPatchObb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->mPatchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/android/finsky/local/PersistentAssetStore;Lcom/google/android/finsky/local/Writer$Op;)V
    .registers 5
    .parameter "store"
    .parameter "operation"

    .prologue
    .line 199
    sget-object v0, Lcom/google/android/finsky/local/LocalAssetVersionRecord$1;->$SwitchMap$com$google$android$finsky$local$Writer$Op:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/local/Writer$Op;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 207
    :goto_b
    return-void

    .line 201
    :pswitch_c
    invoke-interface {p1, p0}, Lcom/google/android/finsky/local/PersistentAssetStore;->insertAssetVersion(Lcom/google/android/finsky/local/LocalAssetVersionRecord;)V

    goto :goto_b

    .line 204
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/finsky/local/PersistentAssetStore;->deleteAssetVersion(Ljava/lang/String;)V

    goto :goto_b

    .line 199
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method
