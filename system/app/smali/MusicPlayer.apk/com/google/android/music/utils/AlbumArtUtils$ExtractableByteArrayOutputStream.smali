.class Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/AlbumArtUtils;
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
    .line 382
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 383
    return-void
.end method


# virtual methods
.method public toInputStream()Ljava/io/ByteArrayInputStream;
    .registers 5

    .prologue
    .line 390
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 391
    .local v0, result:Ljava/io/ByteArrayInputStream;
    return-object v0
.end method
