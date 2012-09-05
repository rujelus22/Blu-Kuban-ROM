.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;
.super Ljava/lang/Object;
.source "CaptionEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v3}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$1(Lcom/sec/android/app/ve/activity/CaptionEditActivity;Landroid/graphics/Bitmap;)V

    .line 85
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v10

    .line 87
    .local v10, currettime:F
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Current time of storyboard -->"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, lFilepath:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    .line 91
    .local v2, mCurElement:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v2, :cond_38

    .line 92
    iget-object v1, v2, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    .line 95
    :cond_38
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/Element;->getEdit(I)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v11

    .line 96
    .local v11, elementEdit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v1, :cond_e6

    .line 99
    if-eqz v11, :cond_e7

    .line 100
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x447a

    mul-float/2addr v4, v10

    float-to-int v4, v4

    const/16 v5, 0x280

    const/16 v6, 0x1e0

    .line 101
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v7

    .line 100
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEGetKenburnsFrame(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;IIII)[B

    move-result-object v9

    .line 106
    .local v9, bytes:[B
    :goto_56
    if-eqz v9, :cond_fb

    .line 108
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 109
    .local v13, pixelBuffer:Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$2(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$2(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c5

    if-eqz v2, :cond_c5

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 112
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    if-eqz v0, :cond_c5

    .line 113
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    const/16 v3, 0x27

    if-eq v0, v3, :cond_c5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CaptionEditActivity :: Applying effect to caption current frame"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$2(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/app/ve/util/Utils;->applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 117
    .local v8, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$2(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #setter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v8}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$1(Lcom/sec/android/app/ve/activity/CaptionEditActivity;Landroid/graphics/Bitmap;)V

    .line 120
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_c5
    const-string v0, "setting bitmap to paintcanvas view"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 122
    .local v12, msg:Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v12, Landroid/os/Message;->what:I

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->access$2(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v0, v3

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$3;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    .end local v9           #bytes:[B
    .end local v12           #msg:Landroid/os/Message;
    .end local v13           #pixelBuffer:Ljava/nio/ByteBuffer;
    :cond_e6
    :goto_e6
    return-void

    .line 103
    :cond_e7
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x447a

    mul-float/2addr v4, v10

    float-to-int v4, v4

    .line 104
    const/16 v5, 0x280

    const/16 v6, 0x1e0

    const/4 v7, 0x0

    .line 103
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEGetKenburnsFrame(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;IIII)[B

    move-result-object v9

    .restart local v9       #bytes:[B
    goto/16 :goto_56

    .line 127
    :cond_fb
    const-string v0, "bytes from engine are null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_e6
.end method
