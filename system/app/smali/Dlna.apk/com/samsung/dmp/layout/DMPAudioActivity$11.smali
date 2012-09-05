.class Lcom/samsung/dmp/layout/DMPAudioActivity$11;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->setThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 1289
    const/4 v10, 0x0

    .line 1291
    .local v10, mUrl:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v14

    if-eqz v14, :cond_23

    .line 1292
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/api/ContentItem;->getSnapImageUri()Ljava/lang/String;

    move-result-object v10

    .line 1296
    :cond_23
    if-eqz v10, :cond_176

    .line 1297
    const/4 v9, 0x0

    .line 1298
    .local v9, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 1301
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_27
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v13, url:Ljava/net/URL;
    const/4 v7, 0x0

    .line 1303
    .local v7, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    .end local v7           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1304
    .restart local v7       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1305
    .local v8, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v8, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 1306
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1307
    .local v5, entity:Lorg/apache/http/HttpEntity;
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v3, v5}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 1309
    .local v3, bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v3}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 1310
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_51
    .catchall {:try_start_27 .. :try_end_51} :catchall_16a
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_51} :catch_1c8
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_51} :catch_c1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_51} :catch_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_51} :catch_130
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_51} :catch_14d

    .line 1312
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_51
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1313
    .local v11, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/4 v15, 0x0

    invoke-static {v2, v15, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v14, v15}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1702(Lcom/samsung/dmp/layout/DMPAudioActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1700(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-nez v14, :cond_94

    .line 1317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1321
    :goto_7c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V
    :try_end_88
    .catchall {:try_start_51 .. :try_end_88} :catchall_1b6
    .catch Ljava/net/MalformedURLException; {:try_start_51 .. :try_end_88} :catch_a2
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_88} :catch_1c4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_88} :catch_1c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_88} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_88} :catch_1b9

    .line 1336
    if-eqz v2, :cond_8d

    .line 1338
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_1aa

    .line 1344
    :cond_8d
    :goto_8d
    if-eqz v9, :cond_92

    .line 1346
    :try_start_8f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_1b0

    :cond_92
    :goto_92
    move-object v1, v2

    .line 1355
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #url:Ljava/net/URL;
    :cond_93
    :goto_93
    return-void

    .line 1319
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v11       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #url:Ljava/net/URL;
    :cond_94
    :try_start_94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d5

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_1b6
    .catch Ljava/net/MalformedURLException; {:try_start_94 .. :try_end_a1} :catch_a2
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a1} :catch_1c4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_94 .. :try_end_a1} :catch_1c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_a1} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a1} :catch_1b9

    goto :goto_7c

    .line 1322
    .end local v11           #option:Landroid/graphics/BitmapFactory$Options;
    :catch_a2
    move-exception v6

    move-object v1, v2

    .line 1323
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #url:Ljava/net/URL;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .local v6, ex:Ljava/net/MalformedURLException;
    :goto_a4
    :try_start_a4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_b1
    .catchall {:try_start_a4 .. :try_end_b1} :catchall_16a

    .line 1336
    if-eqz v1, :cond_b6

    .line 1338
    :try_start_b3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_18f

    .line 1344
    :cond_b6
    :goto_b6
    if-eqz v9, :cond_93

    .line 1346
    :try_start_b8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_93

    .line 1347
    :catch_bc
    move-exception v4

    .line 1348
    .end local v6           #ex:Ljava/net/MalformedURLException;
    .local v4, e:Ljava/io/IOException;
    :goto_bd
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_93

    .line 1324
    .end local v4           #e:Ljava/io/IOException;
    :catch_c1
    move-exception v4

    .line 1325
    .restart local v4       #e:Ljava/io/IOException;
    :goto_c2
    :try_start_c2
    const-string v14, "DLNA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Thumbnail exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_e7
    .catchall {:try_start_c2 .. :try_end_e7} :catchall_16a

    .line 1336
    if-eqz v1, :cond_ec

    .line 1338
    :try_start_e9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_195

    .line 1344
    :cond_ec
    :goto_ec
    if-eqz v9, :cond_93

    .line 1346
    :try_start_ee
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_93

    .line 1347
    :catch_f2
    move-exception v4

    goto :goto_bd

    .line 1327
    .end local v4           #e:Ljava/io/IOException;
    :catch_f4
    move-exception v6

    .line 1328
    .local v6, ex:Ljava/lang/OutOfMemoryError;
    :goto_f5
    :try_start_f5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1329
    const-string v14, "DLNA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OutOfMemoryError : Total memory is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_f5 .. :try_end_122} :catchall_16a

    .line 1336
    if-eqz v1, :cond_127

    .line 1338
    :try_start_124
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_127} :catch_19b

    .line 1344
    :cond_127
    :goto_127
    if-eqz v9, :cond_93

    .line 1346
    :try_start_129
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12e

    goto/16 :goto_93

    .line 1347
    :catch_12e
    move-exception v4

    goto :goto_bd

    .line 1331
    .end local v6           #ex:Ljava/lang/OutOfMemoryError;
    :catch_130
    move-exception v4

    .line 1332
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :goto_131
    :try_start_131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_13e
    .catchall {:try_start_131 .. :try_end_13e} :catchall_16a

    .line 1336
    if-eqz v1, :cond_143

    .line 1338
    :try_start_140
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_1a0

    .line 1344
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_143
    :goto_143
    if-eqz v9, :cond_93

    .line 1346
    :try_start_145
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_14a

    goto/16 :goto_93

    .line 1347
    :catch_14a
    move-exception v4

    goto/16 :goto_bd

    .line 1333
    :catch_14d
    move-exception v4

    .line 1334
    .local v4, e:Ljava/lang/Exception;
    :goto_14e
    :try_start_14e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_15b
    .catchall {:try_start_14e .. :try_end_15b} :catchall_16a

    .line 1336
    if-eqz v1, :cond_160

    .line 1338
    :try_start_15d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_1a5

    .line 1344
    .end local v4           #e:Ljava/lang/Exception;
    :cond_160
    :goto_160
    if-eqz v9, :cond_93

    .line 1346
    :try_start_162
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_165} :catch_167

    goto/16 :goto_93

    .line 1347
    :catch_167
    move-exception v4

    goto/16 :goto_bd

    .line 1336
    :catchall_16a
    move-exception v14

    :goto_16b
    if-eqz v1, :cond_170

    .line 1338
    :try_start_16d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_170} :catch_185

    .line 1344
    :cond_170
    :goto_170
    if-eqz v9, :cond_175

    .line 1346
    :try_start_172
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_18a

    .line 1336
    :cond_175
    :goto_175
    throw v14

    .line 1353
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #is:Ljava/io/InputStream;
    :cond_176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/DMPAudioActivity$11;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_93

    .line 1339
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #is:Ljava/io/InputStream;
    :catch_185
    move-exception v4

    .line 1340
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_170

    .line 1347
    .end local v4           #e:Ljava/io/IOException;
    :catch_18a
    move-exception v4

    .line 1348
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_175

    .line 1339
    .end local v4           #e:Ljava/io/IOException;
    .local v6, ex:Ljava/net/MalformedURLException;
    :catch_18f
    move-exception v4

    .line 1340
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b6

    .line 1339
    .end local v6           #ex:Ljava/net/MalformedURLException;
    :catch_195
    move-exception v4

    .line 1340
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ec

    .line 1339
    .end local v4           #e:Ljava/io/IOException;
    .local v6, ex:Ljava/lang/OutOfMemoryError;
    :catch_19b
    move-exception v4

    .line 1340
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_127

    .line 1339
    .end local v6           #ex:Ljava/lang/OutOfMemoryError;
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :catch_1a0
    move-exception v4

    .line 1340
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_143

    .line 1339
    .local v4, e:Ljava/lang/Exception;
    :catch_1a5
    move-exception v4

    .line 1340
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_160

    .line 1339
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v11       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #url:Ljava/net/URL;
    :catch_1aa
    move-exception v4

    .line 1340
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8d

    .line 1347
    .end local v4           #e:Ljava/io/IOException;
    :catch_1b0
    move-exception v4

    .line 1348
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_92

    .line 1336
    .end local v4           #e:Ljava/io/IOException;
    .end local v11           #option:Landroid/graphics/BitmapFactory$Options;
    :catchall_1b6
    move-exception v14

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_16b

    .line 1333
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_1b9
    move-exception v4

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_14e

    .line 1331
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_1bc
    move-exception v4

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_131

    .line 1327
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_1c0
    move-exception v6

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_f5

    .line 1324
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_1c4
    move-exception v4

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_c2

    .line 1322
    .end local v3           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #url:Ljava/net/URL;
    :catch_1c8
    move-exception v6

    goto/16 :goto_a4
.end method
