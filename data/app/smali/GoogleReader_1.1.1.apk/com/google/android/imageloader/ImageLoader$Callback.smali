.class public interface abstract Lcom/google/android/imageloader/ImageLoader$Callback;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onImageError(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onImageLoaded(Landroid/widget/ImageView;Ljava/lang/String;)V
.end method
