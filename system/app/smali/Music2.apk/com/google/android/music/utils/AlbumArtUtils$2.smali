.class final Lcom/google/android/music/utils/AlbumArtUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/utils/AlbumArtUtils;->createAlbumArtChangedBroadcastReciver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1239
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1243
    const-string v2, "albumId"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1244
    .local v0, albumId:J
    #calls: Lcom/google/android/music/utils/AlbumArtUtils;->handleAlbumArtChanged(J)V
    invoke-static {v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->access$700(J)V

    .line 1245
    return-void
.end method
