.class public Lcom/samsung/swift/service/media/DetailsRequest;
.super Lcom/samsung/swift/service/media/Request;
.source "DetailsRequest.java"


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/swift/service/media/Request;-><init>(J)V

    .line 93
    return-void
.end method


# virtual methods
.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method protected process()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/service/media/UnsupportedFormatException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0}, Lcom/samsung/swift/service/media/Request;->process()V

    .line 105
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 108
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/DetailsRequest;->inputFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 109
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/service/media/DetailsRequest;->setWidth(I)V

    .line 110
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/service/media/DetailsRequest;->setHeight(I)V

    .line 113
    return-void
.end method

.method public native setHeight(I)V
.end method

.method public native setWidth(I)V
.end method
