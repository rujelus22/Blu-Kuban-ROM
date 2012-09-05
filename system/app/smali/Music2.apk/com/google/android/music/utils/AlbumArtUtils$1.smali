.class final Lcom/google/android/music/utils/AlbumArtUtils$1;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/utils/AlbumArtUtils;->trackCacheUsage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 492
    #calls: Lcom/google/android/music/utils/AlbumArtUtils;->resizeCaches()V
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->access$600()V

    .line 493
    return-void
.end method
