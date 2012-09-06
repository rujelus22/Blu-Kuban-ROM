.class public Lcom/google/android/apps/plus/content/RemoteImageRequest;
.super Lcom/google/android/apps/plus/content/ImageRequest;
.source "RemoteImageRequest.java"


# instance fields
.field private mHashCode:I

.field private final mHeight:I

.field private final mPhotoId:J

.field private final mUrl:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/api/MediaRef;II)V
    .registers 6
    .parameter "ref"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/ImageRequest;-><init>()V

    .line 21
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->hasPhotoId()Z

    move-result v0

    if-nez v0, :cond_19

    .line 22
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaRef must have either a URL or a photo ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mUrl:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mPhotoId:J

    .line 27
    iput p2, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mWidth:I

    .line 28
    iput p3, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHeight:I

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-ne p1, p0, :cond_5

    .line 96
    :cond_4
    :goto_4
    return v1

    .line 91
    :cond_5
    instance-of v3, p1, Lcom/google/android/apps/plus/content/RemoteImageRequest;

    if-nez v3, :cond_b

    move v1, v2

    .line 92
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/google/android/apps/plus/content/RemoteImageRequest;

    .line 96
    .local v0, other:Lcom/google/android/apps/plus/content/RemoteImageRequest;
    iget-object v3, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-wide v3, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mPhotoId:J

    iget-wide v5, v0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mPhotoId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2c

    iget v3, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mWidth:I

    iget v4, v0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mWidth:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHeight:I

    iget v4, v0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHeight:I

    if-eq v3, v4, :cond_4

    :cond_2c
    move v1, v2

    goto :goto_4
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHeight:I

    return v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mPhotoId:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 72
    iget v1, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHashCode:I

    if-nez v1, :cond_1c

    .line 73
    const/16 v0, 0x11

    .line 74
    .local v0, result:I
    iget-object v1, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 75
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mWidth:I

    add-int v0, v1, v2

    .line 76
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHeight:I

    add-int v0, v1, v2

    .line 77
    iput v0, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHashCode:I

    .line 79
    .end local v0           #result:I
    :cond_1c
    iget v1, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHashCode:I

    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteImageRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/content/RemoteImageRequest;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
