.class public interface abstract Lcom/googlex/common/graphics/ImageFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createImage(II)Lcom/googlex/common/graphics/GoogleImage;
.end method

.method public abstract createImage(IIZ)Lcom/googlex/common/graphics/GoogleImage;
.end method

.method public abstract createImage(Ljava/lang/String;)Lcom/googlex/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createImage([BII)Lcom/googlex/common/graphics/GoogleImage;
.end method

.method public abstract createRGBImage([IIIZ)Lcom/googlex/common/graphics/GoogleImage;
.end method

.method public abstract createScaledJpeg([BII)[B
.end method

.method public abstract createSquareImage([BI)Lcom/googlex/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createUnscaledImage(Ljava/lang/String;)Lcom/googlex/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
