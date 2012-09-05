.class Lcom/sec/android/app/myfiles/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ImageLoader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ImageLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ImageLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 206
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mDone:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$000(Lcom/sec/android/app/myfiles/ImageLoader;)Z

    move-result v19

    if-nez v19, :cond_184

    .line 207
    const/16 v18, 0x0

    .line 208
    .local v18, workItem:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$100(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v20

    monitor-enter v20

    .line 209
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$100(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_12a

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$100(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;

    move-object/from16 v18, v0

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mInProgress:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$200(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_54
    :goto_54
    monitor-exit v20
    :try_end_55
    .catchall {:try_start_19 .. :try_end_55} :catchall_14b

    .line 221
    if-eqz v18, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 225
    .local v9, t1:J
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/myfiles/SimpleIcon;->getFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v8

    .line 227
    .local v8, mediaType:I
    invoke-static {v8}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v7

    .line 228
    .local v7, isVideo:Z
    invoke-static {v8}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v6

    .line 229
    .local v6, isApk:Z
    const/4 v3, 0x0

    .line 230
    .local v3, b:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_14e

    .line 231
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/myfiles/SimpleIcon;->thumbnailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 237
    :goto_84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 256
    .local v11, t2:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$100(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v20

    monitor-enter v20

    .line 257
    :try_start_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mInProgress:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$200(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v20
    :try_end_a5
    .catchall {:try_start_93 .. :try_end_a5} :catchall_174

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 260
    .local v13, t3:J
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e0

    .line 261
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mPostBack:Z

    move/from16 v19, v0

    if-eqz v19, :cond_177

    .line 262
    move-object/from16 v17, v18

    .line 263
    .local v17, w1:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    move-object v4, v3

    .line 264
    .local v4, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mDone:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$000(Lcom/sec/android/app/myfiles/ImageLoader;)Z

    move-result v19

    if-nez v19, :cond_e0

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$400(Lcom/sec/android/app/myfiles/ImageLoader;)Landroid/os/Handler;

    move-result-object v19

    new-instance v20, Lcom/sec/android/app/myfiles/ImageLoader$1$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/app/myfiles/ImageLoader$1$1;-><init>(Lcom/sec/android/app/myfiles/ImageLoader$1;Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #w1:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    :cond_e0
    :goto_e0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 277
    .local v15, t4:J
    const-string v19, "[MyFiles]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getBitmap done: tot= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v15, v9

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v15, v13

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v13, v11

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v11, v9

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v6           #isApk:Z
    .end local v7           #isVideo:Z
    .end local v8           #mediaType:I
    .end local v9           #t1:J
    .end local v11           #t2:J
    .end local v13           #t3:J
    .end local v15           #t4:J
    :cond_12a
    :try_start_12a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mDone:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$000(Lcom/sec/android/app/myfiles/ImageLoader;)Z

    move-result v19

    if-nez v19, :cond_54

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/myfiles/ImageLoader;->access$100(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_143
    .catchall {:try_start_12a .. :try_end_143} :catchall_14b
    .catch Ljava/lang/InterruptedException; {:try_start_12a .. :try_end_143} :catch_145

    goto/16 :goto_54

    .line 216
    :catch_145
    move-exception v5

    .line 217
    .local v5, ex:Ljava/lang/InterruptedException;
    :try_start_146
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_54

    .line 220
    .end local v5           #ex:Ljava/lang/InterruptedException;
    :catchall_14b
    move-exception v19

    monitor-exit v20
    :try_end_14d
    .catchall {:try_start_146 .. :try_end_14d} :catchall_14b

    throw v19

    .line 232
    .restart local v3       #b:Landroid/graphics/Bitmap;
    .restart local v6       #isApk:Z
    .restart local v7       #isVideo:Z
    .restart local v8       #mediaType:I
    .restart local v9       #t1:J
    :cond_14e
    if-eqz v6, :cond_15e

    .line 233
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

    move-object/from16 v19, v0

    const/16 v20, 0x3e9

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/myfiles/SimpleIcon;->thumbnailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_84

    .line 235
    :cond_15e
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mImage:Lcom/sec/android/app/myfiles/SimpleIcon;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$1;->this$0:Lcom/sec/android/app/myfiles/ImageLoader;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/myfiles/ImageLoader;->mShapeId:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/myfiles/ImageLoader;->access$300(Lcom/sec/android/app/myfiles/ImageLoader;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/myfiles/SimpleIcon;->thumbnailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_84

    .line 258
    .restart local v11       #t2:J
    :catchall_174
    move-exception v19

    :try_start_175
    monitor-exit v20
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    throw v19

    .line 272
    .restart local v13       #t3:J
    :cond_177
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;->run(Landroid/graphics/Bitmap;)V

    goto/16 :goto_e0

    .line 281
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v6           #isApk:Z
    .end local v7           #isVideo:Z
    .end local v8           #mediaType:I
    .end local v9           #t1:J
    .end local v11           #t2:J
    .end local v13           #t3:J
    .end local v18           #workItem:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    :cond_184
    return-void
.end method
