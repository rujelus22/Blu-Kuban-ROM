.class Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/EsService$ImageKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteImageKey"
.end annotation


# instance fields
.field private final mCropType:I

.field private final mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/api/MediaRef;I)V
    .registers 3
    .parameter "mediaRef"
    .parameter "cropType"

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 413
    iput p2, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mCropType:I

    .line 414
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 431
    if-ne p1, p0, :cond_5

    .line 434
    :cond_4
    :goto_4
    return v1

    .line 432
    :cond_5
    instance-of v3, p1, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 433
    check-cast v0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    .line 434
    .local v0, other:Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v4, v0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mCropType:I

    iget v4, v0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mCropType:I

    if-eq v3, v4, :cond_4

    :cond_1e
    move v1, v2

    goto :goto_4
.end method

.method public getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 440
    const/16 v0, 0x11

    .line 441
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/MediaRef;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 442
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mCropType:I

    add-int v0, v1, v2

    .line 443
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ ref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mMediaRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/MediaRef;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mCropType:I

    if-nez v0, :cond_30

    const-string v0, "NONE"

    :goto_21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    iget v0, p0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->mCropType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_38

    const-string v0, "WIDE"

    goto :goto_21

    :cond_38
    const-string v0, "SQUARE"

    goto :goto_21
.end method
