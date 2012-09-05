.class Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;
.super Landroid/database/ContentObserver;
.source "ThumbnailCacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyContentObs"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 773
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$0()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 774
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 803
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    .line 777
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 779
    const-string v0, "This is inside onChange of MyVideoContentObs"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$1()I

    move-result v0

    #calls: Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getVideoCursorCount()I
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$2()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is no change in the cursor count of Video DB is -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->access$1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 800
    :goto_29
    return-void

    .line 786
    :cond_2a
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoThumbnailCreateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 788
    const-string v0, "This is inside onChange of MyVideoContentObs and Video Thread is already running"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 791
    sput-boolean v2, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mIsVideoRefresh:Z

    goto :goto_29

    .line 795
    :cond_3a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mIsVideoRefresh:Z

    .line 797
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->loadVideoThumbs(Landroid/content/Context;Z)V

    goto :goto_29
.end method
