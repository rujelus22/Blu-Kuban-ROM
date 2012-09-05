.class public Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field private mAlbumId:I

.field private priorBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/AudioPreview;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 3887
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    .line 3888
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3883
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->mAlbumId:I

    .line 3885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    .line 3890
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/16 v6, 0x8

    .line 3895
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "AlbumArtHandler:handleMessage() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3898
    .local v1, currentAlbumId:Ljava/lang/Integer;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_84

    .line 3902
    const/4 v0, 0x0

    .line 3903
    .local v0, albumBitmap:Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->mAlbumId:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_25

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_88

    .line 3905
    :cond_25
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "Before:getArtwork()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    #calls: Lcom/sec/android/app/music/AudioPreview;->getArtwork(IZ)Landroid/graphics/Bitmap;
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/music/AudioPreview;->access$3900(Lcom/sec/android/app/music/AudioPreview;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3908
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "After:getArtwork()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    if-nez v0, :cond_85

    .line 3912
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "Before:getDefaultArtwork()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #calls: Lcom/sec/android/app/music/AudioPreview;->getDefaultArtwork(I)Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/sec/android/app/music/AudioPreview;->access$4000(Lcom/sec/android/app/music/AudioPreview;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3915
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "After:getDefaultArtwork()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    .line 3924
    :goto_63
    if-eqz v0, :cond_7e

    .line 3925
    const/4 v2, 0x0

    .line 3926
    .local v2, numsg:Landroid/os/Message;
    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    .line 3927
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3928
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3929
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3935
    .end local v2           #numsg:Landroid/os/Message;
    :cond_7e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->mAlbumId:I

    .line 3939
    .end local v0           #albumBitmap:Landroid/graphics/Bitmap;
    :cond_84
    return-void

    .line 3918
    .restart local v0       #albumBitmap:Landroid/graphics/Bitmap;
    :cond_85
    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    goto :goto_63

    .line 3921
    :cond_88
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->priorBitmap:Landroid/graphics/Bitmap;

    goto :goto_63
.end method
