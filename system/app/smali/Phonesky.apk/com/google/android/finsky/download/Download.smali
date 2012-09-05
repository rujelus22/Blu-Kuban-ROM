.class public interface abstract Lcom/google/android/finsky/download/Download;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/Download$PackageProperties;,
        Lcom/google/android/finsky/download/Download$DownloadState;
    }
.end annotation


# virtual methods
.method public abstract getBytesCompleted()J
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;
.end method

.method public abstract getProgress()Lcom/google/android/finsky/download/DownloadProgress;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract isCompleted()Z
.end method
