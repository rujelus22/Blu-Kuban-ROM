.class public interface abstract Lcom/google/android/youtube/videos/VideosPlatformUtil;
.super Ljava/lang/Object;
.source "VideosPlatformUtil.java"


# virtual methods
.method public abstract getDeveloperKey()[B
.end method

.method public abstract getDeveloperSecret()[B
.end method

.method public abstract getPlusOneDeveloperKey()Ljava/lang/String;
.end method

.method public abstract isFrameworkDrmSupported(Landroid/content/Context;)Z
.end method

.method public abstract newDrmManager(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosApplication;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/videos/VideosConfig;)Lcom/google/android/youtube/videos/DrmManager;
.end method
