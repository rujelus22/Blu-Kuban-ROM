.class Lcom/sec/android/app/ve/activity/PenDrawActivity$5;
.super Ljava/lang/Object;
.source "PenDrawActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/PenDrawActivity;->setCurrentframe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity$5;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 101
    const/16 v19, 0x258

    .line 102
    .local v19, width:I
    const/16 v14, 0x154

    .line 104
    .local v14, height:I
    :try_start_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 103
    move/from16 v0, v19

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 105
    .local v9, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v11

    .line 108
    .local v11, currettime:F
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Current time of storyboard -->"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, lFilepath:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    .line 112
    .local v3, mCurElement:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v3, :cond_33

    .line 113
    iget-object v2, v3, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    .line 116
    :cond_33
    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lcom/samsung/app/video/editor/external/Element;->getEdit(I)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v13

    .line 117
    .local v13, elementEdit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v2, :cond_bb

    .line 119
    if-eqz v13, :cond_bc

    .line 120
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    const/4 v4, 0x0

    const/high16 v5, 0x447a

    mul-float/2addr v5, v11

    float-to-int v5, v5

    const/16 v6, 0x280

    const/16 v7, 0x1e0

    .line 121
    invoke-virtual {v13}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v8

    .line 120
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEGetKenburnsFrame(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;IIII)[B

    move-result-object v10

    .line 126
    .local v10, bytes:[B
    :goto_51
    if-eqz v10, :cond_cf

    .line 128
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 129
    .local v17, pixelBuffer:Ljava/nio/ByteBuffer;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 131
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v15

    .line 136
    .local v15, lCurrent:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v9, :cond_9d

    .line 137
    if-eqz v15, :cond_9d

    .line 138
    invoke-virtual {v15}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 139
    invoke-virtual {v15}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v1

    if-eqz v1, :cond_9d

    .line 141
    const-string v1, "DrawActivity :: Applying effect to draw current frame"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v15}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v1

    invoke-static {v1, v9}, Lcom/sec/android/app/ve/util/Utils;->applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 144
    .local v18, tempEffectBmp:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_9d

    move-object/from16 v0, v18

    if-eq v0, v9, :cond_9d

    .line 146
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 147
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    :cond_9b
    move-object/from16 v9, v18

    .line 152
    .end local v18           #tempEffectBmp:Landroid/graphics/Bitmap;
    :cond_9d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v16

    .line 153
    .local v16, msg:Landroid/os/Message;
    const/4 v1, 0x2

    move-object/from16 v0, v16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v1, v4

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/activity/PenDrawActivity$5;->this$0:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    .end local v2           #lFilepath:Ljava/lang/String;
    .end local v3           #mCurElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #bytes:[B
    .end local v11           #currettime:F
    .end local v13           #elementEdit:Lcom/samsung/app/video/editor/external/Edit;
    .end local v15           #lCurrent:Lcom/samsung/app/video/editor/external/Element;
    .end local v16           #msg:Landroid/os/Message;
    .end local v17           #pixelBuffer:Ljava/nio/ByteBuffer;
    :cond_bb
    :goto_bb
    return-void

    .line 123
    .restart local v2       #lFilepath:Ljava/lang/String;
    .restart local v3       #mCurElement:Lcom/samsung/app/video/editor/external/Element;
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #currettime:F
    .restart local v13       #elementEdit:Lcom/samsung/app/video/editor/external/Edit;
    :cond_bc
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    const/4 v4, 0x0

    const/high16 v5, 0x447a

    mul-float/2addr v5, v11

    float-to-int v5, v5

    const/16 v6, 0x280

    const/16 v7, 0x1e0

    .line 124
    const/4 v8, 0x0

    .line 123
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEGetKenburnsFrame(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;IIII)[B

    move-result-object v10

    .restart local v10       #bytes:[B
    goto :goto_51

    .line 157
    :cond_cf
    const-string v1, "bytes from engine are null"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d4} :catch_d5

    goto :goto_bb

    .line 160
    .end local v2           #lFilepath:Ljava/lang/String;
    .end local v3           #mCurElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #bytes:[B
    .end local v11           #currettime:F
    .end local v13           #elementEdit:Lcom/samsung/app/video/editor/external/Edit;
    :catch_d5
    move-exception v12

    .line 163
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bb
.end method
