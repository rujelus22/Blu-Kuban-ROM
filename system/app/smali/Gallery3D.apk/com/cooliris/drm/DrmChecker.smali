.class public Lcom/cooliris/drm/DrmChecker;
.super Ljava/lang/Object;
.source "DrmChecker.java"


# static fields
.field private static mDrmCodec:Lcom/cooliris/drm/DrmCodec;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireLicense(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 150
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0, p1}, Lcom/cooliris/drm/DrmCodec;->acquireLicense(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final getBestDisplayRightsConstraint(Ljava/lang/String;)I
    .registers 2
    .parameter "filePath"

    .prologue
    .line 59
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->getBestDisplayRightsConstraint(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getBestDisplayRightsCount(Ljava/lang/String;)I
    .registers 2
    .parameter "filePath"

    .prologue
    .line 68
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->getBestDisplayRightsCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getDecryptedContent(Ljava/lang/String;)[B
    .registers 2
    .parameter "filePath"

    .prologue
    .line 78
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->getDecryptedContent(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmFileInfo(Ljava/lang/String;)[I
    .registers 2
    .parameter "filePath"

    .prologue
    .line 87
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static final getMediaDRMInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
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
    .line 142
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->getMediaDRMInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static final hasCountConstraint(I)Z
    .registers 2
    .parameter "constraint"

    .prologue
    .line 125
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->hasCountConstraint(I)Z

    move-result v0

    return v0
.end method

.method public static final hasDisplayRights(Ljava/lang/String;)Z
    .registers 5
    .parameter "filePath"

    .prologue
    .line 48
    sget-object v1, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v1, p0}, Lcom/cooliris/drm/DrmCodec;->hasDisplayRights(Ljava/lang/String;)Z

    move-result v0

    .line 49
    .local v0, result:Z
    const-string v1, "DrmChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasDisplayRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v0
.end method

.method public static final hasIntervalConstraint(I)Z
    .registers 2
    .parameter "constraint"

    .prologue
    .line 134
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->hasIntervalConstraint(I)Z

    move-result v0

    return v0
.end method

.method public static final hasSendAsRight(Ljava/lang/String;)Z
    .registers 2
    .parameter "filePath"

    .prologue
    .line 107
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->hasSendAsRight(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final hasSetAsRight(Ljava/lang/String;)Z
    .registers 2
    .parameter "filePath"

    .prologue
    .line 116
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->hasSetAsRight(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/cooliris/drm/DrmCodec;->getInstance(Landroid/content/Context;)Lcom/cooliris/drm/DrmCodec;

    move-result-object v0

    sput-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    .line 23
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    if-nez v0, :cond_11

    .line 24
    const-string v0, "DrmChecker"

    const-string v1, "Can\'t get DRM Codec"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_11
    return-void
.end method

.method public static final isDrm(Ljava/lang/String;)Z
    .registers 3
    .parameter "filePath"

    .prologue
    .line 37
    sget-object v1, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v1, p0}, Lcom/cooliris/drm/DrmCodec;->isDrmExtension(Ljava/lang/String;)Z

    move-result v0

    .line 39
    .local v0, isDrm:Z
    return v0
.end method

.method public static isFirstView(Ljava/lang/String;)Z
    .registers 2
    .parameter "filePath"

    .prologue
    .line 146
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->isFirstView(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isForwardingNotAllowed(Ljava/lang/String;)Z
    .registers 2
    .parameter "filePath"

    .prologue
    .line 96
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->isDrmExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 97
    const/4 v0, 0x0

    .line 98
    :goto_9
    return v0

    :cond_a
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->isDrmConvertedFL(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public static final isSeparateDelivery(I)Z
    .registers 2
    .parameter "drmInfo"

    .prologue
    .line 138
    sget-object v0, Lcom/cooliris/drm/DrmChecker;->mDrmCodec:Lcom/cooliris/drm/DrmCodec;

    invoke-virtual {v0, p0}, Lcom/cooliris/drm/DrmCodec;->isSeparateDelivery(I)Z

    move-result v0

    return v0
.end method
