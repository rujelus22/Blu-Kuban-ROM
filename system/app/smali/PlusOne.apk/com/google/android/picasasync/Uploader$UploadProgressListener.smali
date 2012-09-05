.class public interface abstract Lcom/google/android/picasasync/Uploader$UploadProgressListener;
.super Ljava/lang/Object;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadProgressListener"
.end annotation


# virtual methods
.method public abstract onFileChanged(Lcom/google/android/picasasync/UploadTaskEntry;)V
.end method

.method public abstract onProgress(Lcom/google/android/picasasync/UploadTaskEntry;)V
.end method
