.class interface abstract Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;
.super Ljava/lang/Object;
.source "MediaShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/util/MediaShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MediaShareAPI"
.end annotation


# virtual methods
.method public abstract createThumbnail(Ljava/lang/String;II)Z
.end method

.method public abstract getProperties(Ljava/lang/String;Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;)I
.end method

.method public abstract getThumbnail(III)Landroid/graphics/Bitmap;
.end method

.method public abstract getTrimmingStatus()I
.end method

.method public abstract isNullEncordingAvailable(III)Z
.end method

.method public abstract releaseThumbnail()Z
.end method

.method public abstract releaseTrimming()Z
.end method

.method public abstract startTrimming(Ljava/lang/String;Ljava/lang/String;IILcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;)I
.end method
