.class public interface abstract Lcom/google/android/picasastore/UrlDownloader$Controller;
.super Ljava/lang/Object;
.source "UrlDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Controller"
.end annotation


# virtual methods
.method public abstract createTempFile()Ljava/io/File;
.end method

.method public abstract onDownloadComplete(Ljava/lang/String;Ljava/io/File;)V
.end method
