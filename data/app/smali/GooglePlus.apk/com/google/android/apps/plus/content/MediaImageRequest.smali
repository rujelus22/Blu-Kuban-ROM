.class public Lcom/google/android/apps/plus/content/MediaImageRequest;
.super Lcom/google/android/apps/plus/content/ImageRequest;
.source "MediaImageRequest.java"


# instance fields
.field private mCacheDir:Ljava/lang/String;

.field private mCacheFileName:Ljava/lang/String;

.field private final mCropAndResize:Z

.field private mDownloadUrl:Ljava/lang/String;

.field private mHashCode:I

.field private final mHeight:I

.field private final mMediaType:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 34
    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "url"
    .parameter "mediaType"
    .parameter "size"

    .prologue
    .line 38
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 7
    .parameter "url"
    .parameter "mediaType"
    .parameter "width"
    .parameter "height"
    .parameter "cropAndResize"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/ImageRequest;-><init>()V

    .line 43
    if-nez p1, :cond_b

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_b
    iput-object p1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mMediaType:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    .line 50
    iput p4, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHeight:I

    .line 51
    iput-boolean p5, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mCropAndResize:Z

    .line 52
    return-void
.end method

.method private buildCacheFilePath()V
    .registers 11

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, url:Ljava/lang/String;
    const-wide v0, 0x3ffffffffffe5L

    .line 117
    .local v0, code:J
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 118
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_1d

    .line 119
    const-wide/16 v5, 0x1f

    mul-long/2addr v5, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-long v7, v7

    add-long v0, v5, v7

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 122
    :cond_1d
    rem-int/lit8 v5, v3, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mCacheDir:Ljava/lang/String;

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    shr-long v6, v0, v6

    const-wide v8, 0xfffffffffffffffL

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mCacheFileName:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 175
    instance-of v2, p1, Lcom/google/android/apps/plus/content/MediaImageRequest;

    if-nez v2, :cond_6

    .line 180
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/google/android/apps/plus/content/MediaImageRequest;

    .line 180
    .local v0, k:Lcom/google/android/apps/plus/content/MediaImageRequest;
    iget v2, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    iget v3, v0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHeight:I

    iget v3, v0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHeight:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mMediaType:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mMediaType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getCacheDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mCacheDir:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/MediaImageRequest;->buildCacheFilePath()V

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mCacheFileName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/MediaImageRequest;->buildCacheFilePath()V

    .line 101
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mCacheFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    if-nez v0, :cond_45

    .line 66
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mCropAndResize:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    if-nez v0, :cond_48

    .line 67
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    .line 74
    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    .line 78
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    const-string v1, "&google_plus:card_type=nonsquare"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&google_plus:widget"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    .line 81
    :cond_45
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_48
    iget v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    iget v1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHeight:I

    if-ne v0, v1, :cond_59

    .line 69
    iget v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    iget-object v1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    goto :goto_10

    .line 71
    :cond_59
    iget v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    iget v1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHeight:I

    iget-object v2, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mDownloadUrl:Ljava/lang/String;

    goto :goto_10
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHeight:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHashCode:I

    if-nez v0, :cond_10

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHashCode:I

    .line 167
    :cond_10
    :goto_10
    iget v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHashCode:I

    return v0

    .line 164
    :cond_13
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHashCode:I

    goto :goto_10
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

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
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaImageRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mMediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/content/MediaImageRequest;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
