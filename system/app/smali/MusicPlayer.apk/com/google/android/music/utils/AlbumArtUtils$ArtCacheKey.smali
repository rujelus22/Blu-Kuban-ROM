.class Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/AlbumArtUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtCacheKey"
.end annotation


# instance fields
.field private final mId:J

.field private final mType:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4
    .parameter "type"
    .parameter "id"

    .prologue
    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    iput p1, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mType:I

    .line 1693
    iput-wide p2, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mId:J

    .line 1694
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1698
    instance-of v2, p1, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    if-eqz v2, :cond_17

    move-object v0, p1

    .line 1699
    check-cast v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    .line 1700
    .local v0, key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    iget-wide v2, v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mId:J

    iget-wide v4, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    iget v2, v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mType:I

    iget v3, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mType:I

    if-ne v2, v3, :cond_17

    const/4 v1, 0x1

    .line 1702
    .end local v0           #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    :cond_17
    return v1
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1709
    iget-wide v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mId:J

    iget-wide v2, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mId:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mType:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtCacheKey: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
