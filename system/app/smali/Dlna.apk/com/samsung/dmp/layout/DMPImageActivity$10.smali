.class Lcom/samsung/dmp/layout/DMPImageActivity$10;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    .prologue
    .line 826
    const/4 v9, 0x0

    .line 827
    .local v9, entity:Lorg/apache/http/HttpEntity;
    const/4 v4, 0x0

    .line 828
    .local v4, bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    const/16 v17, 0x0

    .line 829
    .local v17, is:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 830
    .local v11, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 833
    .local v13, fos:Ljava/io/FileOutputStream;
    :try_start_6
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v19

    .line 835
    .local v19, media:Lcom/samsung/api/ContentItem;
    const/16 v23, 0x0

    .line 836
    .local v23, resource:Lcom/samsung/api/ContentResource;
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/api/ContentItem;->getResourceList()Ljava/util/List;

    move-result-object v22

    .line 838
    .local v22, resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_41

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/api/ContentResource;

    .line 839
    .local v6, c:Lcom/samsung/api/ContentResource;
    invoke-virtual {v6}, Lcom/samsung/api/ContentResource;->getProtocolInfo()Ljava/lang/String;

    move-result-object v27

    const-string v28, "JPEG_MED"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 840
    move-object/from16 v23, v6

    goto :goto_20

    .line 843
    .end local v6           #c:Lcom/samsung/api/ContentResource;
    :cond_41
    if-nez v23, :cond_47

    .line 844
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v23

    .line 846
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mimeType:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2200(Lcom/samsung/dmp/layout/DMPImageActivity;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_65

    const-string v27, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v28, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mimeType:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2200(Lcom/samsung/dmp/layout/DMPImageActivity;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_94

    .line 851
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x458

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7f
    .catchall {:try_start_6 .. :try_end_7f} :catchall_420
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_7f} :catch_4df
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_7f} :catch_4d1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_7f} :catch_37e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7f} :catch_3d2

    .line 950
    :goto_7f
    if-eqz v9, :cond_84

    .line 952
    :try_start_81
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_48f

    .line 958
    :cond_84
    :goto_84
    if-eqz v4, :cond_89

    .line 960
    :try_start_86
    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_495

    .line 966
    :cond_89
    :goto_89
    if-eqz v17, :cond_8e

    .line 968
    :try_start_8b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_49b

    .line 974
    :cond_8e
    :goto_8e
    if-eqz v13, :cond_93

    .line 976
    :try_start_90
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_4a1

    .line 982
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #media:Lcom/samsung/api/ContentItem;
    .end local v22           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .end local v23           #resource:Lcom/samsung/api/ContentResource;
    :cond_93
    :goto_93
    return-void

    .line 854
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #media:Lcom/samsung/api/ContentItem;
    .restart local v22       #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .restart local v23       #resource:Lcom/samsung/api/ContentResource;
    :cond_94
    :try_start_94
    new-instance v26, Ljava/net/URL;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 855
    .local v26, url:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x76c

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x1f40

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x2328

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 858
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 860
    .local v15, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/net/http/AndroidHttpClient;

    move-result-object v27

    if-nez v27, :cond_f0

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    const-string v28, "android_dmp_image"

    invoke-static/range {v28 .. v28}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v28

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2302(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient;

    .line 864
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2300(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/net/http/AndroidHttpClient;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 865
    .local v24, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 866
    new-instance v5, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v5, v9}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_109
    .catchall {:try_start_94 .. :try_end_109} :catchall_420
    .catch Ljava/net/MalformedURLException; {:try_start_94 .. :try_end_109} :catch_4df
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_109} :catch_4d1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_94 .. :try_end_109} :catch_37e
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_109} :catch_3d2

    .line 868
    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .local v5, bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    :try_start_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mimeType:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2200(Lcom/samsung/dmp/layout/DMPImageActivity;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "bmp"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_247

    .line 869
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 870
    new-instance v12, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "bmptemp"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_109 .. :try_end_141} :catchall_4a4
    .catch Ljava/net/MalformedURLException; {:try_start_109 .. :try_end_141} :catch_336
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_141} :catch_33f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_109 .. :try_end_141} :catch_4c2
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_141} :catch_4b3

    .line 871
    .end local v11           #file:Ljava/io/File;
    .local v12, file:Ljava/io/File;
    :try_start_141
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_146
    .catchall {:try_start_141 .. :try_end_146} :catchall_4a8
    .catch Ljava/net/MalformedURLException; {:try_start_141 .. :try_end_146} :catch_4e2
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_146} :catch_4d4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_141 .. :try_end_146} :catch_4c6
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_146} :catch_4b7

    .line 872
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .local v14, fos:Ljava/io/FileOutputStream;
    const v27, 0x5dc000

    :try_start_149
    move/from16 v0, v27

    new-array v3, v0, [B

    .line 873
    .local v3, buf:[B
    const/16 v21, 0x0

    .line 875
    .local v21, readCount:I
    :goto_14f
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_1ab

    .line 876
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v14, v3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_166
    .catchall {:try_start_149 .. :try_end_166} :catchall_4ad
    .catch Ljava/net/MalformedURLException; {:try_start_149 .. :try_end_166} :catch_167
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_166} :catch_4d9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_149 .. :try_end_166} :catch_4cb
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_166} :catch_4bc

    goto :goto_14f

    .line 931
    .end local v3           #buf:[B
    .end local v21           #readCount:I
    :catch_167
    move-exception v8

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .line 932
    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v15           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #media:Lcom/samsung/api/ContentItem;
    .end local v22           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .end local v23           #resource:Lcom/samsung/api/ContentResource;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .end local v26           #url:Ljava/net/URL;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .local v8, e1:Ljava/net/MalformedURLException;
    :goto_16b
    :try_start_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 933
    const-string v27, "DLNA"

    const-string v28, "MalformedURLException "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x458

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 935
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_18f
    .catchall {:try_start_16b .. :try_end_18f} :catchall_420

    .line 950
    if-eqz v9, :cond_194

    .line 952
    :try_start_191
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_194} :catch_44a

    .line 958
    :cond_194
    :goto_194
    if-eqz v4, :cond_199

    .line 960
    :try_start_196
    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_199} :catch_450

    .line 966
    :cond_199
    :goto_199
    if-eqz v17, :cond_19e

    .line 968
    :try_start_19b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19e} :catch_456

    .line 974
    :cond_19e
    :goto_19e
    if-eqz v13, :cond_93

    .line 976
    :try_start_1a0
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a3} :catch_1a5

    goto/16 :goto_93

    .line 977
    :catch_1a5
    move-exception v7

    .line 978
    .end local v8           #e1:Ljava/net/MalformedURLException;
    .local v7, e:Ljava/io/IOException;
    :goto_1a6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_93

    .line 879
    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #buf:[B
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #media:Lcom/samsung/api/ContentItem;
    .restart local v21       #readCount:I
    .restart local v22       #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .restart local v23       #resource:Lcom/samsung/api/ContentResource;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    .restart local v26       #url:Ljava/net/URL;
    :cond_1ab
    :try_start_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "bmptemp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v28

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1cd
    .catchall {:try_start_1ab .. :try_end_1cd} :catchall_4ad
    .catch Ljava/net/MalformedURLException; {:try_start_1ab .. :try_end_1cd} :catch_167
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1cd} :catch_4d9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ab .. :try_end_1cd} :catch_4cb
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1cd} :catch_4bc

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 919
    .end local v3           #buf:[B
    .end local v12           #file:Ljava/io/File;
    .end local v21           #readCount:I
    .restart local v11       #file:Ljava/io/File;
    :goto_1cf
    :try_start_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x458

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x1b58

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x76d

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mPaused:Z
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1100(Lcom/samsung/dmp/layout/DMPImageActivity;)Z

    move-result v27

    if-nez v27, :cond_225

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->hasWindowFocus()Z

    move-result v27

    if-eqz v27, :cond_225

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x3f1

    const-wide/16 v29, 0x1388

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 927
    :cond_225
    if-eqz v11, :cond_244

    .line 928
    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "bmptemp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    :cond_244
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_7f

    .line 881
    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    :cond_247
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 882
    .local v20, option:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 883
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 884
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 885
    const-string v27, "DLNA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "original Resolution: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 888
    invoke-virtual {v5}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 889
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 890
    .local v18, length:I
    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    add-int/lit8 v25, v27, 0x1

    .line 891
    .local v25, sampleSize:I
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 892
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 893
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 894
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$200(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v27

    if-eqz v27, :cond_2f1

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    new-instance v28, Lcom/samsung/dmp/layout/DMPImageActivity$10$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/dmp/layout/DMPImageActivity$10$1;-><init>(Lcom/samsung/dmp/layout/DMPImageActivity$10;)V

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2ec
    .catchall {:try_start_1cf .. :try_end_2ec} :catchall_4a4
    .catch Ljava/net/MalformedURLException; {:try_start_1cf .. :try_end_2ec} :catch_336
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_2ec} :catch_33f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1cf .. :try_end_2ec} :catch_4c2
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_2ec} :catch_4b3

    .line 909
    const-wide/16 v27, 0x64

    :try_start_2ee
    invoke-static/range {v27 .. v28}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f1
    .catchall {:try_start_2ee .. :try_end_2f1} :catchall_4a4
    .catch Ljava/lang/InterruptedException; {:try_start_2ee .. :try_end_2f1} :catch_33a
    .catch Ljava/net/MalformedURLException; {:try_start_2ee .. :try_end_2f1} :catch_336
    .catch Ljava/io/IOException; {:try_start_2ee .. :try_end_2f1} :catch_33f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2ee .. :try_end_2f1} :catch_4c2
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_2f1} :catch_4b3

    .line 915
    :cond_2f1
    :goto_2f1
    :try_start_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v28

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 916
    const-string v27, "DLNA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resized Resolution: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cf

    .line 931
    .end local v18           #length:I
    .end local v20           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v25           #sampleSize:I
    :catch_336
    move-exception v8

    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_16b

    .line 910
    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v18       #length:I
    .restart local v20       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v25       #sampleSize:I
    :catch_33a
    move-exception v7

    .line 911
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_33e
    .catchall {:try_start_2f1 .. :try_end_33e} :catchall_4a4
    .catch Ljava/net/MalformedURLException; {:try_start_2f1 .. :try_end_33e} :catch_336
    .catch Ljava/io/IOException; {:try_start_2f1 .. :try_end_33e} :catch_33f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2f1 .. :try_end_33e} :catch_4c2
    .catch Ljava/lang/Exception; {:try_start_2f1 .. :try_end_33e} :catch_4b3

    goto :goto_2f1

    .line 936
    .end local v7           #e:Ljava/lang/InterruptedException;
    .end local v18           #length:I
    .end local v20           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v25           #sampleSize:I
    :catch_33f
    move-exception v7

    move-object v4, v5

    .line 937
    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v15           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #media:Lcom/samsung/api/ContentItem;
    .end local v22           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .end local v23           #resource:Lcom/samsung/api/ContentResource;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .end local v26           #url:Ljava/net/URL;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .local v7, e:Ljava/io/IOException;
    :goto_341
    :try_start_341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 938
    const-string v27, "DLNA"

    const-string v28, "IOException "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x458

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 940
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_365
    .catchall {:try_start_341 .. :try_end_365} :catchall_420

    .line 950
    if-eqz v9, :cond_36a

    .line 952
    :try_start_367
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_36a
    .catch Ljava/io/IOException; {:try_start_367 .. :try_end_36a} :catch_45c

    .line 958
    :cond_36a
    :goto_36a
    if-eqz v4, :cond_36f

    .line 960
    :try_start_36c
    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_36f
    .catch Ljava/io/IOException; {:try_start_36c .. :try_end_36f} :catch_462

    .line 966
    :cond_36f
    :goto_36f
    if-eqz v17, :cond_374

    .line 968
    :try_start_371
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_374
    .catch Ljava/io/IOException; {:try_start_371 .. :try_end_374} :catch_468

    .line 974
    :cond_374
    :goto_374
    if-eqz v13, :cond_93

    .line 976
    :try_start_376
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_379
    .catch Ljava/io/IOException; {:try_start_376 .. :try_end_379} :catch_37b

    goto/16 :goto_93

    .line 977
    :catch_37b
    move-exception v7

    goto/16 :goto_1a6

    .line 941
    .end local v7           #e:Ljava/io/IOException;
    :catch_37e
    move-exception v10

    .line 942
    .local v10, ex:Ljava/lang/OutOfMemoryError;
    :goto_37f
    :try_start_37f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x458

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 944
    const-string v27, "DLNA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "OutOfMemoryError : Total memory is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b9
    .catchall {:try_start_37f .. :try_end_3b9} :catchall_420

    .line 950
    if-eqz v9, :cond_3be

    .line 952
    :try_start_3bb
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3be
    .catch Ljava/io/IOException; {:try_start_3bb .. :try_end_3be} :catch_46e

    .line 958
    :cond_3be
    :goto_3be
    if-eqz v4, :cond_3c3

    .line 960
    :try_start_3c0
    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_3c3
    .catch Ljava/io/IOException; {:try_start_3c0 .. :try_end_3c3} :catch_474

    .line 966
    :cond_3c3
    :goto_3c3
    if-eqz v17, :cond_3c8

    .line 968
    :try_start_3c5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_3c8
    .catch Ljava/io/IOException; {:try_start_3c5 .. :try_end_3c8} :catch_47a

    .line 974
    :cond_3c8
    :goto_3c8
    if-eqz v13, :cond_93

    .line 976
    :try_start_3ca
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3cd
    .catch Ljava/io/IOException; {:try_start_3ca .. :try_end_3cd} :catch_3cf

    goto/16 :goto_93

    .line 977
    :catch_3cf
    move-exception v7

    goto/16 :goto_1a6

    .line 945
    .end local v10           #ex:Ljava/lang/OutOfMemoryError;
    :catch_3d2
    move-exception v7

    .line 946
    .local v7, e:Ljava/lang/Exception;
    :goto_3d3
    :try_start_3d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->bm:Landroid/graphics/Bitmap;
    invoke-static/range {v27 .. v28}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$202(Lcom/samsung/dmp/layout/DMPImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPImageActivity$10;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$500(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x458

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 948
    const-string v27, "DLNA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "HttpGet 4"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_407
    .catchall {:try_start_3d3 .. :try_end_407} :catchall_420

    .line 950
    if-eqz v9, :cond_40c

    .line 952
    :try_start_409
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_40c
    .catch Ljava/io/IOException; {:try_start_409 .. :try_end_40c} :catch_480

    .line 958
    .end local v7           #e:Ljava/lang/Exception;
    :cond_40c
    :goto_40c
    if-eqz v4, :cond_411

    .line 960
    :try_start_40e
    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_411
    .catch Ljava/io/IOException; {:try_start_40e .. :try_end_411} :catch_485

    .line 966
    :cond_411
    :goto_411
    if-eqz v17, :cond_416

    .line 968
    :try_start_413
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_416
    .catch Ljava/io/IOException; {:try_start_413 .. :try_end_416} :catch_48a

    .line 974
    :cond_416
    :goto_416
    if-eqz v13, :cond_93

    .line 976
    :try_start_418
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_41b
    .catch Ljava/io/IOException; {:try_start_418 .. :try_end_41b} :catch_41d

    goto/16 :goto_93

    .line 977
    :catch_41d
    move-exception v7

    goto/16 :goto_1a6

    .line 950
    :catchall_420
    move-exception v27

    :goto_421
    if-eqz v9, :cond_426

    .line 952
    :try_start_423
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_426
    .catch Ljava/io/IOException; {:try_start_423 .. :try_end_426} :catch_436

    .line 958
    :cond_426
    :goto_426
    if-eqz v4, :cond_42b

    .line 960
    :try_start_428
    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V
    :try_end_42b
    .catch Ljava/io/IOException; {:try_start_428 .. :try_end_42b} :catch_43b

    .line 966
    :cond_42b
    :goto_42b
    if-eqz v17, :cond_430

    .line 968
    :try_start_42d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_430
    .catch Ljava/io/IOException; {:try_start_42d .. :try_end_430} :catch_440

    .line 974
    :cond_430
    :goto_430
    if-eqz v13, :cond_435

    .line 976
    :try_start_432
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_435
    .catch Ljava/io/IOException; {:try_start_432 .. :try_end_435} :catch_445

    .line 950
    :cond_435
    :goto_435
    throw v27

    .line 953
    :catch_436
    move-exception v7

    .line 954
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_426

    .line 961
    .end local v7           #e:Ljava/io/IOException;
    :catch_43b
    move-exception v7

    .line 962
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42b

    .line 969
    .end local v7           #e:Ljava/io/IOException;
    :catch_440
    move-exception v7

    .line 970
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_430

    .line 977
    .end local v7           #e:Ljava/io/IOException;
    :catch_445
    move-exception v7

    .line 978
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_435

    .line 953
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #e1:Ljava/net/MalformedURLException;
    :catch_44a
    move-exception v7

    .line 954
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_194

    .line 961
    .end local v7           #e:Ljava/io/IOException;
    :catch_450
    move-exception v7

    .line 962
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_199

    .line 969
    .end local v7           #e:Ljava/io/IOException;
    :catch_456
    move-exception v7

    .line 970
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_19e

    .line 953
    .end local v8           #e1:Ljava/net/MalformedURLException;
    :catch_45c
    move-exception v7

    .line 954
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_36a

    .line 961
    :catch_462
    move-exception v7

    .line 962
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_36f

    .line 969
    :catch_468
    move-exception v7

    .line 970
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_374

    .line 953
    .end local v7           #e:Ljava/io/IOException;
    .restart local v10       #ex:Ljava/lang/OutOfMemoryError;
    :catch_46e
    move-exception v7

    .line 954
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3be

    .line 961
    .end local v7           #e:Ljava/io/IOException;
    :catch_474
    move-exception v7

    .line 962
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3c3

    .line 969
    .end local v7           #e:Ljava/io/IOException;
    :catch_47a
    move-exception v7

    .line 970
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3c8

    .line 953
    .end local v10           #ex:Ljava/lang/OutOfMemoryError;
    .local v7, e:Ljava/lang/Exception;
    :catch_480
    move-exception v7

    .line 954
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40c

    .line 961
    .end local v7           #e:Ljava/io/IOException;
    :catch_485
    move-exception v7

    .line 962
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_411

    .line 969
    .end local v7           #e:Ljava/io/IOException;
    :catch_48a
    move-exception v7

    .line 970
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_416

    .line 953
    .end local v7           #e:Ljava/io/IOException;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #media:Lcom/samsung/api/ContentItem;
    .restart local v22       #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .restart local v23       #resource:Lcom/samsung/api/ContentResource;
    :catch_48f
    move-exception v7

    .line 954
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_84

    .line 961
    .end local v7           #e:Ljava/io/IOException;
    :catch_495
    move-exception v7

    .line 962
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_89

    .line 969
    .end local v7           #e:Ljava/io/IOException;
    :catch_49b
    move-exception v7

    .line 970
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8e

    .line 977
    .end local v7           #e:Ljava/io/IOException;
    :catch_4a1
    move-exception v7

    goto/16 :goto_1a6

    .line 950
    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v15       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    .restart local v26       #url:Ljava/net/URL;
    :catchall_4a4
    move-exception v27

    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_421

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    :catchall_4a8
    move-exception v27

    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_421

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :catchall_4ad
    move-exception v27

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_421

    .line 945
    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    :catch_4b3
    move-exception v7

    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_3d3

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    :catch_4b7
    move-exception v7

    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_3d3

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :catch_4bc
    move-exception v7

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_3d3

    .line 941
    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    :catch_4c2
    move-exception v10

    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_37f

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    :catch_4c6
    move-exception v10

    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_37f

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :catch_4cb
    move-exception v10

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_37f

    .line 936
    .end local v15           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #media:Lcom/samsung/api/ContentItem;
    .end local v22           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .end local v23           #resource:Lcom/samsung/api/ContentResource;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .end local v26           #url:Ljava/net/URL;
    :catch_4d1
    move-exception v7

    goto/16 :goto_341

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    .restart local v15       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #media:Lcom/samsung/api/ContentItem;
    .restart local v22       #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .restart local v23       #resource:Lcom/samsung/api/ContentResource;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    .restart local v26       #url:Ljava/net/URL;
    :catch_4d4
    move-exception v7

    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_341

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :catch_4d9
    move-exception v7

    move-object v13, v14

    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_341

    .line 931
    .end local v15           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #media:Lcom/samsung/api/ContentItem;
    .end local v22           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .end local v23           #resource:Lcom/samsung/api/ContentResource;
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .end local v26           #url:Ljava/net/URL;
    :catch_4df
    move-exception v8

    goto/16 :goto_16b

    .end local v4           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v11           #file:Ljava/io/File;
    .restart local v5       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v12       #file:Ljava/io/File;
    .restart local v15       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #media:Lcom/samsung/api/ContentItem;
    .restart local v22       #resList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ContentResource;>;"
    .restart local v23       #resource:Lcom/samsung/api/ContentResource;
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    .restart local v26       #url:Ljava/net/URL;
    :catch_4e2
    move-exception v8

    move-object v11, v12

    .end local v12           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v5

    .end local v5           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .restart local v4       #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    goto/16 :goto_16b
.end method
