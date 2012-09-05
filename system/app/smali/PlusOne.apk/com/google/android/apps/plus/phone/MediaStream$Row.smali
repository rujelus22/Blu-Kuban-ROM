.class public interface abstract Lcom/google/android/apps/plus/phone/MediaStream$Row;
.super Ljava/lang/Object;
.source "MediaStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/MediaStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Row"
.end annotation


# virtual methods
.method public abstract getCommentCount()I
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getFingerprint()Lcom/android/gallery3d/common/Fingerprint;
.end method

.method public abstract getLocalUri()Landroid/net/Uri;
.end method

.method public abstract getOwnerId()Ljava/lang/Long;
.end method

.method public abstract getPendingStatus()Ljava/lang/Integer;
.end method

.method public abstract getPhotoId()Ljava/lang/Long;
.end method

.method public abstract getPlusOneCount()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVideoData()[B
.end method

.method public abstract merge(Lcom/google/android/apps/plus/phone/MediaStream$Row;)V
.end method
