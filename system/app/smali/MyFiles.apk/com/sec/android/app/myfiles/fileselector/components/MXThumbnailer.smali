.class public interface abstract Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;
.super Ljava/lang/Object;
.source "MXThumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;
    }
.end annotation


# virtual methods
.method public abstract cancelDispatch()V
.end method

.method public abstract clearCache()V
.end method

.method public abstract getChechedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getThumbnail(Ljava/lang/String;)V
.end method

.method public abstract isBroken(Ljava/lang/String;)Z
.end method

.method public abstract setOnThumbnailDispatchedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;)V
.end method
