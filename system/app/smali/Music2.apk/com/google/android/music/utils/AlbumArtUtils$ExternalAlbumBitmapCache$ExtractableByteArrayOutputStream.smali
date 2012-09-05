.class Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractableByteArrayOutputStream"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "length"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 224
    return-void
.end method


# virtual methods
.method public toInputStream()Ljava/io/ByteArrayInputStream;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 231
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 232
    .local v0, result:Ljava/io/ByteArrayInputStream;
    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;->buf:[B

    .line 233
    iput v3, p0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;->count:I

    .line 234
    return-object v0
.end method
