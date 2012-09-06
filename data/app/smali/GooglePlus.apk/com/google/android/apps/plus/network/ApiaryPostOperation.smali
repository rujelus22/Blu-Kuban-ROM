.class public Lcom/google/android/apps/plus/network/ApiaryPostOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "ApiaryPostOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/PostActivityRequest;",
        "Lcom/google/api/services/plusi/model/GetActivitiesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

.field private final mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field private final mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private final mContent:Ljava/lang/String;

.field private final mExternalId:Ljava/lang/String;

.field private final mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPostedAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;Lcom/google/wireless/tacotruck/proto/Data$Audience;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "activity"
    .parameter "content"
    .parameter
    .parameter "externalId"
    .parameter "location"
    .parameter "audience"
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            "Lcom/google/android/apps/plus/network/ApiaryActivity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            "Lcom/google/android/apps/plus/network/ApiaryApiInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p7, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const-string v8, "postactivity"

    invoke-static {}, Lcom/google/api/services/plusi/model/PostActivityRequestJson;->getInstance()Lcom/google/api/services/plusi/model/PostActivityRequestJson;

    move-result-object v9

    invoke-static {}, Lcom/google/api/services/plusi/model/GetActivitiesResponseJson;->getInstance()Lcom/google/api/services/plusi/model/GetActivitiesResponseJson;

    move-result-object v7

    new-instance v1, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;

    const-string v4, "oauth2:https://www.googleapis.com/auth/plus.me"

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->PLUS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p11

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    move-object v6, v9

    move-object v8, p3

    move-object v9, p4

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;)V

    .line 114
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 115
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContent:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAttachments:Ljava/util/List;

    .line 117
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mExternalId:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 119
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 120
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    return-void
.end method

.method private buildMediaReference(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/apps/plus/api/MediaRef;ZLjava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;
    .registers 31
    .parameter "context"
    .parameter "resolver"
    .parameter "ref"
    .parameter "attachThumbnail"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;"
        }
    .end annotation

    .prologue
    .line 310
    .local p5, attachmentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .local p6, photoSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p7, caidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v15, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;

    invoke-direct {v15}, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;-><init>()V

    .line 316
    .local v15, mediaReference:Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    if-ne v6, v7, :cond_3f

    const-string v16, "2"

    .line 318
    .local v16, mediaType:Ljava/lang/String;
    :goto_f
    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;->mediaType:Ljava/lang/String;

    .line 320
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v6

    if-eqz v6, :cond_176

    .line 321
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v14

    .line 322
    .local v14, localUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->getFingerprint(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v17

    .line 324
    .local v17, newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v17, :cond_42

    .line 326
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not determine fingerprint for media: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v15, 0x0

    .line 458
    .end local v14           #localUri:Landroid/net/Uri;
    .end local v15           #mediaReference:Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;
    .end local v17           #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :goto_3e
    return-object v15

    .line 316
    .end local v16           #mediaType:Ljava/lang/String;
    .restart local v15       #mediaReference:Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;
    :cond_3f
    const-string v16, "1"

    goto :goto_f

    .line 330
    .restart local v14       #localUri:Landroid/net/Uri;
    .restart local v16       #mediaType:Ljava/lang/String;
    .restart local v17       #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_42
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v19

    .line 331
    .local v19, photoId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v19, v6

    if-eqz v6, :cond_f1

    .line 332
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v19

    invoke-static {v6, v0, v1}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->getFingerprint(Landroid/content/Context;J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v18

    .line 333
    .local v18, oldFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/common/Fingerprint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ee

    .line 337
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->getPhotoIdFromStream(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 340
    .local v4, newPhotoId:J
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fingerprint mismatch; old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->sendFingerprintMismatch(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 346
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 389
    .end local v4           #newPhotoId:J
    .end local v14           #localUri:Landroid/net/Uri;
    .end local v18           #oldFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v19           #photoId:J
    .local v2, attachment:Lcom/google/android/apps/plus/api/MediaRef;
    :goto_b4
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v6

    if-eqz v6, :cond_19f

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19f

    .line 390
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 391
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate server reference found; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_eb
    const/4 v15, 0x0

    goto/16 :goto_3e

    .line 350
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v14       #localUri:Landroid/net/Uri;
    .restart local v18       #oldFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v19       #photoId:J
    :cond_ee
    move-object/from16 v2, p3

    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    goto :goto_b4

    .line 354
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v18           #oldFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_f1
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 355
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Looking for remote photo w/ CAID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_116
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->getPhotoIdFromStream(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    .line 361
    .restart local v4       #newPhotoId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_172

    .line 362
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_157

    .line 363
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found remote photo; ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " matches CAID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_157
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v9

    .line 368
    .local v9, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, ownerGaiaId:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->getType()Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 373
    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    goto/16 :goto_b4

    .line 375
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v3           #ownerGaiaId:Ljava/lang/String;
    .end local v9           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_172
    move-object/from16 v2, p3

    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    goto/16 :goto_b4

    .line 379
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v4           #newPhotoId:J
    .end local v14           #localUri:Landroid/net/Uri;
    .end local v17           #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v19           #photoId:J
    :cond_176
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v6

    if-eqz v6, :cond_182

    .line 381
    move-object/from16 v2, p3

    .line 382
    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    const/16 v17, 0x0

    .restart local v17       #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    goto/16 :goto_b4

    .line 384
    .end local v2           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v17           #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_182
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No photo ID or local Uri for attachment: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v15, 0x0

    goto/16 :goto_3e

    .line 396
    .restart local v2       #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v17       #newFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_19f
    if-eqz v17, :cond_1d3

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/common/Fingerprint;->toStreamId()Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, caid:Ljava/lang/String;
    :goto_1a5
    if-eqz v12, :cond_1d5

    .line 401
    move-object/from16 v0, p7

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d5

    .line 402
    const-string v6, "HttpTransaction"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1d0

    .line 403
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate CAID found; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1d0
    const/4 v15, 0x0

    goto/16 :goto_3e

    .line 396
    .end local v12           #caid:Ljava/lang/String;
    :cond_1d3
    const/4 v12, 0x0

    goto :goto_1a5

    .line 409
    .restart local v12       #caid:Ljava/lang/String;
    :cond_1d5
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v6

    if-nez v6, :cond_247

    .line 410
    if-eqz v12, :cond_1e4

    .line 411
    iput-object v12, v15, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;->clientAssignedUniqueId:Ljava/lang/String;

    .line 412
    move-object/from16 v0, p7

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_1e4
    if-eqz p4, :cond_23d

    .line 416
    const/4 v10, 0x0

    .line 418
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :try_start_1e7
    new-instance v21, Lcom/google/android/apps/plus/content/LocalImageRequest;

    const/16 v6, 0x140

    const/16 v7, 0x140

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v6, v7}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 420
    .local v21, request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPhotosData;->loadLocalBitmap(Landroid/content/Context;Lcom/google/android/apps/plus/content/LocalImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 422
    if-nez v10, :cond_224

    .line 423
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bitmap decoding failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_218
    .catchall {:try_start_1e7 .. :try_end_218} :catchall_236

    .line 434
    :goto_218
    if-eqz v10, :cond_21d

    .line 436
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v21           #request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    :cond_21d
    :goto_21d
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3e

    .line 425
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v21       #request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    :cond_224
    const/16 v6, 0x55

    :try_start_226
    invoke-static {v10, v6}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object v11

    .line 427
    .local v11, bitmapBytes:[B
    const/4 v6, 0x0

    invoke-static {v11, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    .line 429
    .local v13, encodedBitmap:Ljava/lang/String;
    iput-object v13, v15, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;->imageData:Ljava/lang/String;

    .line 430
    const-string v6, "1"

    iput-object v6, v15, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;->imageStatus:Ljava/lang/String;
    :try_end_235
    .catchall {:try_start_226 .. :try_end_235} :catchall_236

    goto :goto_218

    .line 434
    .end local v11           #bitmapBytes:[B
    .end local v13           #encodedBitmap:Ljava/lang/String;
    .end local v21           #request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    :catchall_236
    move-exception v6

    if-eqz v10, :cond_23c

    .line 436
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_23c
    throw v6

    .line 439
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    :cond_23d
    if-nez v17, :cond_242

    .line 441
    const/4 v15, 0x0

    goto/16 :goto_3e

    .line 443
    :cond_242
    const-string v6, "2"

    iput-object v6, v15, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;->imageStatus:Ljava/lang/String;

    goto :goto_21d

    .line 446
    :cond_247
    new-instance v22, Lcom/google/api/services/plusi/model/PhotoServiceMediaReferencePhoto;

    invoke-direct/range {v22 .. v22}, Lcom/google/api/services/plusi/model/PhotoServiceMediaReferencePhoto;-><init>()V

    .line 448
    .local v22, sourcePhoto:Lcom/google/api/services/plusi/model/PhotoServiceMediaReferencePhoto;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/google/api/services/plusi/model/PhotoServiceMediaReferencePhoto;->obfuscatedOwnerId:Ljava/lang/String;

    .line 449
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    iput-object v6, v0, Lcom/google/api/services/plusi/model/PhotoServiceMediaReferencePhoto;->photoId:Ljava/lang/String;

    .line 450
    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;->sourcePhoto:Lcom/google/api/services/plusi/model/PhotoServiceMediaReferencePhoto;

    .line 451
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21d
.end method

.method private fillPostParams(Lcom/google/api/services/plusi/model/PostActivityRequest;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Lcom/google/api/services/plusi/model/PostActivityRequest;
    .registers 12
    .parameter "postParams"
    .parameter "info"

    .prologue
    .line 244
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->updateText:Ljava/lang/String;

    .line 245
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mExternalId:Ljava/lang/String;

    iput-object v6, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->externalId:Ljava/lang/String;

    .line 247
    if-eqz p2, :cond_4a

    invoke-virtual {p2}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 248
    invoke-virtual {p2}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, pkg:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 250
    const-string v3, "Mobile"

    .line 251
    .local v3, name:Ljava/lang/String;
    const-string v6, "com.google.android.apps.social"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 253
    :try_start_28
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    .local v0, appName:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_40} :catch_88

    move-result-object v3

    .line 260
    .end local v0           #appName:Ljava/lang/CharSequence;
    :cond_41
    :goto_41
    new-instance v1, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;-><init>()V

    .line 262
    .local v1, attribution:Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;
    iput-object v3, v1, Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;->androidAppName:Ljava/lang/String;

    .line 264
    iput-object v1, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->attribution:Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;

    .line 268
    .end local v1           #attribution:Lcom/google/api/services/plusi/model/RequestsPostActivityRequestAttribution;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_4a
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    if-eqz v6, :cond_58

    .line 269
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/network/ApiaryActivity;->getMediaJson()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, mediaJson:Ljava/lang/String;
    if-eqz v2, :cond_58

    .line 271
    iput-object v2, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->mediaJson:Ljava/lang/String;

    .line 275
    .end local v2           #mediaJson:Ljava/lang/String;
    :cond_58
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAttachments:Ljava/util/List;

    if-eqz v6, :cond_73

    .line 276
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAttachments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPostedAttachments:Ljava/util/List;

    .line 277
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAttachments:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->getPhotosShareData(Ljava/util/List;)Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;

    move-result-object v4

    .line 279
    .local v4, photosShareData:Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;
    if-eqz v4, :cond_73

    .line 280
    iput-object v4, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->photosShareData:Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;

    .line 284
    .end local v4           #photosShareData:Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;
    :cond_73
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    if-eqz v6, :cond_7f

    .line 285
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->getLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/api/services/plusi/model/Location;

    move-result-object v6

    iput-object v6, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->location:Lcom/google/api/services/plusi/model/Location;

    .line 288
    :cond_7f
    iget-object v6, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->convertAudienceToSharingRoster(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/api/services/plusi/model/SharingRoster;

    move-result-object v6

    iput-object v6, p1, Lcom/google/api/services/plusi/model/PostActivityRequest;->sharingRoster:Lcom/google/api/services/plusi/model/SharingRoster;

    .line 289
    return-object p1

    .line 256
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #pkg:Ljava/lang/String;
    :catch_88
    move-exception v6

    goto :goto_41
.end method

.method private static getFingerprint(Landroid/content/Context;J)Lcom/android/gallery3d/common/Fingerprint;
    .registers 11
    .parameter "context"
    .parameter "photoId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 494
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    .line 495
    .local v6, account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 498
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "fingerprint"

    aput-object v0, v2, v4

    .line 500
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 502
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3d

    .line 504
    :try_start_23
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 505
    new-instance v3, Lcom/android/gallery3d/common/Fingerprint;

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_42

    .line 508
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_3d
    :goto_3d
    return-object v3

    .line 508
    :cond_3e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :catchall_42
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getFingerprint(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery3d/common/Fingerprint;
    .registers 10
    .parameter "context"
    .parameter "localUri"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 469
    invoke-static {p0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/google/android/picasastore/PicasaStoreFacade;->getFingerprintUri(ZZ)Landroid/net/Uri;

    move-result-object v1

    .line 470
    .local v1, queryUri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 471
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 473
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_39

    .line 475
    :try_start_1f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 476
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 477
    .local v6, bytes:[B
    new-instance v3, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v3, v6}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_3e

    .line 480
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 483
    .end local v6           #bytes:[B
    :cond_39
    :goto_39
    return-object v3

    .line 480
    :cond_3a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_39

    :catchall_3e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getLocation(Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/api/services/plusi/model/Location;
    .registers 5
    .parameter "location"

    .prologue
    .line 126
    new-instance v0, Lcom/google/api/services/plusi/model/Location;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/Location;-><init>()V

    .line 128
    .local v0, updatesDataLocation:Lcom/google/api/services/plusi/model/Location;
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 131
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->clusterId:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->bestAddress:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->locationTag:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->latitudeE7:Ljava/lang/Integer;

    .line 135
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->longitudeE7:Ljava/lang/Integer;

    .line 153
    :goto_3f
    return-object v0

    .line 137
    :cond_40
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasReverseGeocode()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getGranularity()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    if-ne v1, v2, :cond_7d

    .line 141
    const-string v1, ""

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->locationTag:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->bestAddress:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->latitudeE7:Ljava/lang/Integer;

    .line 144
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->longitudeE7:Ljava/lang/Integer;

    goto :goto_3f

    .line 149
    :cond_7d
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getReverseGeocode()Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/services/plusi/model/Location;->locationTag:Ljava/lang/String;

    goto :goto_3f
.end method

.method private static getPhotoIdFromStream(Landroid/content/Context;Ljava/lang/String;)J
    .registers 12
    .parameter "context"
    .parameter "streamId"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 523
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    .line 524
    .local v6, account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_STREAM_ID_AND_OWNER_ID_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 525
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v7, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 527
    .local v9, uri:Landroid/net/Uri;
    invoke-static {v9, v6}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    .line 528
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "photo_id"

    aput-object v0, v2, v5

    .line 530
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 532
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4c

    .line 534
    :try_start_33
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 535
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 536
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4f

    move-result-wide v3

    .line 540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 543
    :goto_48
    return-wide v3

    .line 540
    :cond_49
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_4c
    const-wide/16 v3, 0x0

    goto :goto_48

    .line 540
    :catchall_4f
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getPhotosShareData(Ljava/util/List;)Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;
    .registers 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;)",
            "Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;"
        }
    .end annotation

    .prologue
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const/4 v11, 0x0

    const/4 v13, 0x4

    .line 158
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    :cond_8
    :goto_8
    return-object v11

    .line 162
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v10, mediaRefList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;>;"
    new-instance v6, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 166
    .local v6, photoSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 167
    .local v7, clientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 168
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 169
    .local v12, thumbnailCount:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 170
    .local v3, attachment:Lcom/google/android/apps/plus/api/MediaRef;
    if-ge v12, v13, :cond_5b

    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPostedAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v13, :cond_5b

    const/4 v4, 0x1

    .line 172
    .local v4, attachBytes:Z
    :goto_46
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPostedAttachments:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->buildMediaReference(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/apps/plus/api/MediaRef;ZLjava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;

    move-result-object v9

    .line 174
    .local v9, mediaRef:Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;
    if-eqz v9, :cond_2f

    .line 175
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, v9, Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;->imageData:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 178
    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    .line 170
    .end local v4           #attachBytes:Z
    .end local v9           #mediaRef:Lcom/google/api/services/plusi/model/PhotoServiceMediaReference;
    :cond_5b
    const/4 v4, 0x0

    goto :goto_46

    .line 183
    .end local v3           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_5d
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 188
    new-instance v11, Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;

    invoke-direct {v11}, Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;-><init>()V

    .line 189
    .local v11, photosShareData:Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;
    iput-object v10, v11, Lcom/google/api/services/plusi/model/PhotoServiceShareActionData;->mediaRef:Ljava/util/List;

    goto :goto_8
.end method

.method private sendFingerprintMismatch(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 551
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryPostOperation$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/plus/network/ApiaryPostOperation$1;-><init>(Lcom/google/android/apps/plus/network/ApiaryPostOperation;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void
.end method


# virtual methods
.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Lcom/google/api/services/plusi/model/GetActivitiesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->handleResponse(Lcom/google/api/services/plusi/model/GetActivitiesResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/GetActivitiesResponse;)V
    .registers 18
    .parameter "response"

    .prologue
    .line 198
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/api/services/plusi/model/GetActivitiesResponse;->stream:Lcom/google/api/services/plusi/model/Stream;

    .line 199
    .local v10, streamData:Lcom/google/api/services/plusi/model/Stream;
    iget-object v5, v10, Lcom/google/api/services/plusi/model/Stream;->update:Ljava/util/List;

    .line 201
    .local v5, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/Update;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/plusi/model/Update;

    .line 202
    .local v4, data:Lcom/google/api/services/plusi/model/Update;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, accountName:Ljava/lang/String;
    sget-object v11, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadsUri:Landroid/net/Uri;

    .line 204
    .local v11, uploadUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 205
    .local v9, resolver:Landroid/content/ContentResolver;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "account"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_55

    const-string v13, "0"

    iget-object v14, v4, Lcom/google/api/services/plusi/model/Update;->albumId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_55

    .line 210
    iget-object v2, v4, Lcom/google/api/services/plusi/model/Update;->albumId:Ljava/lang/String;

    .line 211
    .local v2, albumId:Ljava/lang/String;
    const-string v13, "album_id"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    .end local v2           #albumId:Ljava/lang/String;
    :cond_55
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPostedAttachments:Ljava/util/List;

    if-eqz v13, :cond_a

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mPostedAttachments:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_63
    :goto_63
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/MediaRef;

    .line 215
    .local v3, attachment:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v13

    if-nez v13, :cond_63

    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->hasLocalUri()Z

    move-result v13

    if-eqz v13, :cond_63

    .line 216
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/MediaRef;->getLocalUri()Landroid/net/Uri;

    move-result-object v8

    .line 218
    .local v8, imageUri:Landroid/net/Uri;
    const-string v13, "HttpTransaction"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_a4

    .line 219
    const-string v13, "HttpTransaction"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  -- on-demand upload; img: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_a4
    const-string v13, "content_uri"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v9, v11, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_63

    .line 227
    .end local v1           #accountName:Ljava/lang/String;
    .end local v3           #attachment:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v4           #data:Lcom/google/api/services/plusi/model/Update;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #imageUri:Landroid/net/Uri;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    .end local v11           #uploadUri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_b1
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Lcom/google/api/services/plusi/model/PostActivityRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->populateRequest(Lcom/google/api/services/plusi/model/PostActivityRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/PostActivityRequest;)V
    .registers 3
    .parameter "postRequest"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/network/ApiaryPostOperation;->fillPostParams(Lcom/google/api/services/plusi/model/PostActivityRequest;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Lcom/google/api/services/plusi/model/PostActivityRequest;

    .line 235
    return-void
.end method
