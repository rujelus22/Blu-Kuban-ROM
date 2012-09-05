.class public Lcom/cooliris/drm/DrmCodec;
.super Ljava/lang/Object;
.source "DrmCodec.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmManager:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    .line 49
    iget-object v0, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_1c

    .line 50
    const-string v0, "DrmCodec Stagefright"

    const-string v1, "Can\'t get OMA DRM Manager"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :cond_1c
    return-void
.end method

.method private getBestDisplayRights(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 8
    .parameter "filePath"

    .prologue
    .line 311
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0xf

    const-string v5, "application/vnd.oma.drm.content"

    invoke-direct {v1, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 312
    .local v1, drmRequest:Landroid/drm/DrmInfoRequest;
    const-string v4, "drm_path"

    invoke-virtual {v1, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    iget-object v4, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v1}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 315
    .local v2, drminfoX:Landroid/drm/DrmInfo;
    const-string v4, "permission"

    invoke-virtual {v2, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 316
    const-string v4, "permission"

    invoke-virtual {v2, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 317
    .local v3, permissionVal:I
    const/4 v4, 0x7

    if-eq v3, v4, :cond_2e

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    .line 318
    :cond_2e
    iget-object v4, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, p1, v3}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 322
    .end local v3           #permissionVal:I
    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private getBestDisplayRightsConstraint(Landroid/content/ContentValues;)I
    .registers 4
    .parameter "contentValues"

    .prologue
    .line 306
    const-string v1, "license_category"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, licenseCategory:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cooliris/drm/DrmCodec;
    .registers 2
    .parameter "context"

    .prologue
    .line 40
    new-instance v0, Lcom/cooliris/drm/DrmCodec;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmCodec;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public acquireLicense(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 338
    const-string v6, "DrmCodec Stagefright"

    const-string v7, "try to acquire license info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/4 v6, 0x3

    const-string v7, "application/vnd.oma.drm.content"

    invoke-direct {v2, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 341
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v6, "drm_path"

    invoke-virtual {v2, v6, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    iget-object v6, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v6, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 344
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v6, "URL"

    invoke-virtual {v1, v6}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 345
    .local v4, licenseUrl:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, browserIntent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 348
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 350
    iget-object v6, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_52

    .line 352
    :try_start_43
    iget-object v6, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_48} :catch_4a

    .line 353
    const/4 v6, 0x1

    .line 358
    :goto_49
    return v6

    .line 354
    :catch_4a
    move-exception v3

    .line 355
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    const-string v6, "DrmCodec Stagefright"

    const-string v7, "could not find a suitable activity for launching license url"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v3           #ex:Landroid/content/ActivityNotFoundException;
    :cond_52
    const/4 v6, 0x0

    goto :goto_49
.end method

.method public getBestDisplayRightsConstraint(Ljava/lang/String;)I
    .registers 5
    .parameter "filePath"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/cooliris/drm/DrmCodec;->getBestDisplayRights(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 301
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "license_category"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, licenseCategory:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getBestDisplayRightsCount(Ljava/lang/String;)I
    .registers 6
    .parameter "filePath"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/cooliris/drm/DrmCodec;->getBestDisplayRights(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 283
    .local v0, contentValues:Landroid/content/ContentValues;
    const/4 v2, -0x1

    .line 284
    .local v2, result:I
    invoke-direct {p0, v0}, Lcom/cooliris/drm/DrmCodec;->getBestDisplayRightsConstraint(Landroid/content/ContentValues;)I

    move-result v1

    .line 285
    .local v1, licenseNum:I
    packed-switch v1, :pswitch_data_1e

    .line 296
    :goto_c
    return v2

    .line 287
    :pswitch_d
    const-string v3, "remaining_repeat_count"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 288
    goto :goto_c

    .line 291
    :pswitch_1a
    const v2, 0x7fffffff

    .line 292
    goto :goto_c

    .line 285
    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_d
    .end packed-switch
.end method

.method public getDecryptedContent(Ljava/lang/String;)[B
    .registers 13
    .parameter "filePath"

    .prologue
    const/4 v8, 0x0

    .line 75
    const/4 v5, 0x1

    .line 76
    .local v5, isPreview:Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 77
    .local v3, fileSize:J
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v7, 0xa

    const-string v9, "application/vnd.oma.drm.content"

    invoke-direct {v2, v7, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 78
    .local v2, drmRequest:Landroid/drm/DrmInfoRequest;
    const-string v7, "drm_path"

    invoke-virtual {v2, v7, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v7, "LENGTH"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v9, "preview_option"

    if-eqz v5, :cond_4a

    const-string v7, "true"

    :goto_28
    invoke-virtual {v2, v9, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v7, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v7, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 84
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    if-nez v1, :cond_4d

    .line 85
    iget-object v7, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v7}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 86
    new-instance v7, Landroid/drm/DrmManagerClient;

    iget-object v9, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    .line 87
    const-string v7, "DrmCodec Stagefright"

    const-string v9, "drm info request is null!"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 104
    :cond_49
    :goto_49
    return-object v0

    .line 80
    .end local v1           #drmInfo:Landroid/drm/DrmInfo;
    :cond_4a
    const-string v7, "false"

    goto :goto_28

    .line 90
    .restart local v1       #drmInfo:Landroid/drm/DrmInfo;
    :cond_4d
    const/4 v0, 0x0

    .line 91
    .local v0, decrypted:[B
    const/4 v6, 0x0

    .line 92
    .local v6, length:I
    invoke-virtual {v1}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 94
    const-string v7, "DrmCodec Stagefright"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decrypted size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    array-length v6, v0

    .line 97
    if-nez v6, :cond_49

    move-object v0, v8

    .line 98
    goto :goto_49
.end method

.method public getDrmFileInfo(Ljava/lang/String;)[I
    .registers 5
    .parameter "filePath"

    .prologue
    .line 109
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 110
    .local v0, result:[I
    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/cooliris/drm/DrmCodec;->getDrmType(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 112
    return-object v0
.end method

.method public getDrmType(Ljava/lang/String;)I
    .registers 9
    .parameter "filePath"

    .prologue
    .line 165
    new-instance v0, Landroid/drm/DrmInfoRequest;

    const/16 v4, 0xe

    const-string v5, "application/vnd.oma.drm.content"

    invoke-direct {v0, v4, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 166
    .local v0, drmRequest:Landroid/drm/DrmInfoRequest;
    const-string v4, "drm_path"

    invoke-virtual {v0, v4, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v4, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v4, v0}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 169
    .local v2, drminfo:Landroid/drm/DrmInfo;
    const-string v4, "type"

    invoke-virtual {v2, v4}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    .local v3, type:Ljava/lang/String;
    const/4 v1, -0x1

    .line 171
    .local v1, drmType:I
    if-eqz v3, :cond_3c

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 173
    const-string v4, "DrmCodec Stagefright"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_3b
    return v1

    .line 175
    :cond_3c
    const-string v4, "DrmCodec Stagefright"

    const-string v5, "DrmType is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public getMediaDRMInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaItem$MediaDRMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, details:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem$MediaDRMInfo;>;"
    new-instance v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;

    invoke-direct {v4}, Lcom/cooliris/media/MediaItem$MediaDRMInfo;-><init>()V

    .line 185
    .local v4, info:Lcom/cooliris/media/MediaItem$MediaDRMInfo;
    const-string v8, "DrmCodec Stagefright"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMediaDRMInfo() filepath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0, p1}, Lcom/cooliris/drm/DrmCodec;->hasDisplayRights(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_67

    .line 189
    const/4 v8, 0x7

    iput v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->availableUses:I

    .line 190
    const v8, 0x7f060067

    iput v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->usesStr:I

    .line 191
    const/4 v8, -0x1

    iput v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->constraintsType:I

    .line 193
    iget-object v8, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v8, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v7

    .line 194
    .local v7, rightStatus:I
    packed-switch v7, :pswitch_data_1d2

    .line 201
    :pswitch_3c
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f060066

    aput v10, v8, v9

    .line 202
    iget-object v8, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    const v9, 0x7f060066

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    .line 205
    :goto_4f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v1           #details:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem$MediaDRMInfo;>;"
    .end local v7           #rightStatus:I
    :goto_52
    return-object v1

    .line 197
    .restart local v1       #details:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem$MediaDRMInfo;>;"
    .restart local v7       #rightStatus:I
    :pswitch_53
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f060072

    aput v10, v8, v9

    .line 198
    iget-object v8, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    const v9, 0x7f060072

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    goto :goto_4f

    .line 209
    .end local v7           #rightStatus:I
    :cond_67
    invoke-direct {p0, p1}, Lcom/cooliris/drm/DrmCodec;->getBestDisplayRights(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 210
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v8, "license_category"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 211
    .local v6, licenseCategory:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 213
    .local v5, license:I
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v8, 0xf

    const-string v9, "application/vnd.oma.drm.content"

    invoke-direct {v2, v8, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 214
    .local v2, drmRequest:Landroid/drm/DrmInfoRequest;
    const-string v8, "drm_path"

    invoke-virtual {v2, v8, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v8, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v8, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 218
    .local v3, drminfoX:Landroid/drm/DrmInfo;
    const/4 v8, -0x1

    if-ne v5, v8, :cond_ae

    .line 219
    const-string v8, "DrmCodec Stagefright"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMediaDRMInfo() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", does not have any permission"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x0

    goto :goto_52

    .line 223
    :cond_ae
    const/4 v8, 0x7

    iput v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->availableUses:I

    .line 224
    const v8, 0x7f060067

    iput v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->usesStr:I

    .line 226
    iput v5, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->constraintsType:I

    .line 228
    iget v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->constraintsType:I

    sparse-switch v8, :sswitch_data_1dc

    .line 270
    const-string v8, "DrmCodec Stagefright"

    const-string v9, "getMediaDRMInfo() DRM type is incorrect"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f060072

    aput v10, v8, v9

    .line 272
    iget-object v8, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    const v9, 0x7f060072

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    .line 275
    :goto_d7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_52

    .line 230
    :sswitch_dc
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f060071

    aput v10, v8, v9

    .line 231
    iget-object v8, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    const v9, 0x7f060071

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    goto :goto_d7

    .line 235
    :sswitch_f0
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f06006c

    aput v10, v8, v9

    .line 236
    const-string v9, "%d / %d"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v8, "remaining_repeat_count"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v11

    const/4 v11, 0x1

    const-string v8, "max_repeat_count"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    goto :goto_d7

    .line 241
    :sswitch_12a
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f06006d

    aput v10, v8, v9

    .line 242
    const-string v8, "%s ~\n   %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "license_start_time"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "license_expiry_time"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    goto :goto_d7

    .line 248
    :sswitch_150
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f06006e

    aput v10, v8, v9

    .line 249
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "license_original_interval"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_d7

    .line 253
    :sswitch_16e
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f06006f

    aput v10, v8, v9

    .line 254
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x1

    const v10, 0x7f06006c

    aput v10, v8, v9

    .line 255
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "license_original_interval"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_d7

    .line 259
    :sswitch_196
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f060070

    aput v10, v8, v9

    .line 260
    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "license_available_time"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_d7

    .line 265
    :sswitch_1b6
    const-string v8, "DrmCodec Stagefright"

    const-string v9, "UnSupported DRM type"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    const/4 v9, 0x0

    const v10, 0x7f060072

    aput v10, v8, v9

    .line 267
    iget-object v8, p0, Lcom/cooliris/drm/DrmCodec;->mContext:Landroid/content/Context;

    const v9, 0x7f060072

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    goto/16 :goto_d7

    .line 194
    :pswitch_data_1d2
    .packed-switch 0x1
        :pswitch_53
        :pswitch_3c
        :pswitch_53
    .end packed-switch

    .line 228
    :sswitch_data_1dc
    .sparse-switch
        0x0 -> :sswitch_dc
        0x1 -> :sswitch_f0
        0x2 -> :sswitch_12a
        0x4 -> :sswitch_150
        0x8 -> :sswitch_16e
        0x10 -> :sswitch_196
        0x20 -> :sswitch_1b6
        0x40 -> :sswitch_1b6
    .end sparse-switch
.end method

.method public hasCountConstraint(I)Z
    .registers 3
    .parameter "constraints"

    .prologue
    const/4 v0, 0x1

    .line 157
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hasDisplayRights(Ljava/lang/String;)Z
    .registers 5
    .parameter "filePath"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, result:I
    if-nez v0, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public hasIntervalConstraint(I)Z
    .registers 3
    .parameter "constraints"

    .prologue
    .line 153
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public hasSendAsRight(Ljava/lang/String;)Z
    .registers 9
    .parameter "filePath"

    .prologue
    const/4 v4, 0x1

    .line 126
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v5, 0x10

    const-string v6, "application/vnd.oma.drm.content"

    invoke-direct {v2, v5, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 127
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v5, "drm_path"

    invoke-virtual {v2, v5, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget-object v5, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 129
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    const-string v5, "bSendAs"

    invoke-virtual {v1, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, result:Ljava/lang/String;
    if-nez v3, :cond_20

    .line 134
    :cond_1f
    :goto_1f
    return v4

    .line 133
    :cond_20
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, bSendAs:I
    if-eq v0, v4, :cond_1f

    const/4 v4, 0x0

    goto :goto_1f
.end method

.method public hasSetAsRight(Ljava/lang/String;)Z
    .registers 9
    .parameter "filePath"

    .prologue
    const/4 v4, 0x1

    .line 139
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v5, 0x10

    const-string v6, "application/vnd.oma.drm.content"

    invoke-direct {v2, v5, v6}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 140
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v5, "drm_path"

    invoke-virtual {v2, v5, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v5, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v5, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 142
    .local v1, drmInfo:Landroid/drm/DrmInfo;
    if-nez v1, :cond_18

    .line 149
    :cond_17
    :goto_17
    return v4

    .line 144
    :cond_18
    const-string v5, "bWallpaper"

    invoke-virtual {v1, v5}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, result:Ljava/lang/String;
    if-eqz v3, :cond_17

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, bWallpaper:I
    if-eq v0, v4, :cond_17

    const/4 v4, 0x0

    goto :goto_17
.end method

.method public isDrmConvertedFL(Ljava/lang/String;)Z
    .registers 8
    .parameter "filePath"

    .prologue
    const/4 v4, 0x1

    .line 116
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x11

    const-string v5, "application/vnd.oma.drm.content"

    invoke-direct {v1, v3, v5}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 117
    .local v1, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v3, "drm_path"

    invoke-virtual {v1, v3, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget-object v3, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v1}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 121
    .local v0, drmInfo:Landroid/drm/DrmInfo;
    const-string v3, "result"

    invoke-virtual {v0, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, isconvertedfl:I
    if-ne v2, v4, :cond_25

    move v3, v4

    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_24
.end method

.method public isDrmExtension(Ljava/lang/String;)Z
    .registers 4
    .parameter "filePath"

    .prologue
    .line 62
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63
    :cond_8
    const/4 v0, 0x0

    .line 64
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/cooliris/drm/DrmCodec;->mDrmManager:Landroid/drm/DrmManagerClient;

    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public isFirstView(Ljava/lang/String;)Z
    .registers 6
    .parameter "filePath"

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/cooliris/drm/DrmCodec;->getBestDisplayRights(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 328
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "license_start_time"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 329
    .local v2, startTime:Ljava/lang/String;
    const-string v3, "license_expiry_time"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    .local v1, expireTime:Ljava/lang/String;
    if-nez v2, :cond_1a

    if-nez v1, :cond_1a

    .line 332
    const/4 v3, 0x1

    .line 334
    :goto_19
    return v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public isSeparateDelivery(I)Z
    .registers 3
    .parameter "drmInfo"

    .prologue
    .line 161
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
