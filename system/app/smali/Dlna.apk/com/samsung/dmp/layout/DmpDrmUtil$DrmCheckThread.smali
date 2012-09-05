.class Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;
.super Ljava/lang/Thread;
.source "DmpDrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DmpDrmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmCheckThread"
.end annotation


# instance fields
.field private flag:Z

.field private mExtension:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private selectedItemUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;


# direct methods
.method public constructor <init>(Lcom/samsung/dmp/layout/DmpDrmUtil;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "selectedItemUri"
    .parameter "mExtension"
    .parameter "flag"
    .parameter "mimeType"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->selectedItemUri:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mExtension:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->flag:Z

    .line 77
    iput-object p5, p0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mimeType:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 81
    const-string v18, "DLNA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SF_DmpDrmUtil. DRM Check Start : flag = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->flag:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$002(Lcom/samsung/dmp/layout/DmpDrmUtil;I)I

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmChecked:Z
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$102(Lcom/samsung/dmp/layout/DmpDrmUtil;Z)Z

    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, client:Landroid/net/http/AndroidHttpClient;
    const/4 v6, 0x0

    .line 87
    .local v6, entity:Lorg/apache/http/HttpEntity;
    const/4 v13, 0x0

    .line 88
    .local v13, inStream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 90
    .local v9, fos:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->flag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5e

    .line 91
    const-string v18, "DLNA"

    const-string v19, "SF_DmpDrmUtil.This is already checked. It is DRM file"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$002(Lcom/samsung/dmp/layout/DmpDrmUtil;I)I

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmChecked:Z
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$102(Lcom/samsung/dmp/layout/DmpDrmUtil;Z)Z

    .line 183
    :goto_5d
    return-void

    .line 95
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_261

    const-string v18, ".wmv"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9e

    const-string v18, ".wma"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9e

    const-string v18, "audio/wav"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9e

    const-string v18, "audio/x-wav"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_261

    .line 99
    :cond_9e
    :try_start_9e
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->selectedItemUri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    .local v14, inputURL:Ljava/net/URL;
    const-string v18, "DMP_DRM_CHECK"

    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 102
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 104
    .local v11, getRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v3, v11}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 105
    .local v16, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 107
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 109
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "tempfile"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, filePath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v7, file:Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e7
    .catchall {:try_start_9e .. :try_end_e7} :catchall_24b
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_e7} :catch_2bc
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_e7} :catch_228

    .line 112
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    const/16 v18, 0x2710

    :try_start_e9
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 114
    .local v2, buf:[B
    const/4 v15, 0x0

    .line 115
    .local v15, readCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_ef
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v12, v0, :cond_103

    .line 116
    invoke-virtual {v13, v2}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 117
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v2, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 115
    add-int/lit8 v12, v12, 0x1

    goto :goto_ef

    .line 119
    :cond_103
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 122
    new-instance v4, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    #getter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$200(Lcom/samsung/dmp/layout/DmpDrmUtil;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 123
    .local v4, drmClient:Landroid/drm/DrmManagerClient;
    const/16 v17, 0x0

    .line 125
    .local v17, temp_isDrmFile:Z
    const-string v18, ".wma"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d0

    .line 126
    const-string v18, "DLNA"

    const-string v19, "SF_DmpDrmUtil.check DrmManagerClient - WMA_PLUGIN_MIME"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v18, "audio/x-ms-wma"

    move-object/from16 v0, v18

    invoke-virtual {v4, v8, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 134
    :cond_13a
    :goto_13a
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f3

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$002(Lcom/samsung/dmp/layout/DmpDrmUtil;I)I

    .line 140
    :goto_14d
    const-string v18, "DLNA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SF_DmpDrmUtil. === THIS IS DRM FILE ? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v20, v0

    #getter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$000(Lcom/samsung/dmp/layout/DmpDrmUtil;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmChecked:Z
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$102(Lcom/samsung/dmp/layout/DmpDrmUtil;Z)Z
    :try_end_17a
    .catchall {:try_start_e9 .. :try_end_17a} :catchall_2b5
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_17a} :catch_200
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_17a} :catch_2b8

    .line 150
    if-eqz v3, :cond_17f

    .line 151
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 153
    :cond_17f
    if-eqz v6, :cond_184

    .line 155
    :try_start_181
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_2a3

    .line 160
    :cond_184
    :goto_184
    if-eqz v10, :cond_189

    .line 162
    :try_start_186
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_2a9

    .line 167
    :cond_189
    :goto_189
    if-eqz v13, :cond_18e

    .line 169
    :try_start_18b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_18e} :catch_2af

    :cond_18e
    :goto_18e
    move-object v9, v10

    .line 175
    .end local v2           #buf:[B
    .end local v4           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v11           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v12           #i:I
    .end local v14           #inputURL:Ljava/net/URL;
    .end local v15           #readCount:I
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #temp_isDrmFile:Z
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :cond_18f
    :goto_18f
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "tempfile"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 182
    :goto_1ac
    const-string v18, "DLNA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SF_DmpDrmUtil. DRM check end : isDrmFile = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v20, v0

    #getter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I
    invoke-static/range {v20 .. v20}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$000(Lcom/samsung/dmp/layout/DmpDrmUtil;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 128
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #buf:[B
    .restart local v4       #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #i:I
    .restart local v14       #inputURL:Ljava/net/URL;
    .restart local v15       #readCount:I
    .restart local v16       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #temp_isDrmFile:Z
    :cond_1d0
    :try_start_1d0
    const-string v18, ".wmv"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->mExtension:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13a

    .line 129
    const-string v18, "DLNA"

    const-string v19, "SF_DmpDrmUtil.check DrmManagerClient - WMV_PLUGIN_MIME"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v18, "video/x-ms-wmv"

    move-object/from16 v0, v18

    invoke-virtual {v4, v8, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    goto/16 :goto_13a

    .line 137
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$002(Lcom/samsung/dmp/layout/DmpDrmUtil;I)I
    :try_end_1fe
    .catchall {:try_start_1d0 .. :try_end_1fe} :catchall_2b5
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1fe} :catch_200
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1fe} :catch_2b8

    goto/16 :goto_14d

    .line 142
    .end local v2           #buf:[B
    .end local v4           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v12           #i:I
    .end local v15           #readCount:I
    .end local v17           #temp_isDrmFile:Z
    :catch_200
    move-exception v5

    move-object v9, v10

    .line 143
    .end local v7           #file:Ljava/io/File;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v11           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #inputURL:Ljava/net/URL;
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    .local v5, e:Ljava/io/IOException;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :goto_202
    :try_start_202
    const-string v18, "DLNA"

    const-string v19, "SF_DmpDrmUtil.IOException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20c
    .catchall {:try_start_202 .. :try_end_20c} :catchall_24b

    .line 150
    if-eqz v3, :cond_211

    .line 151
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 153
    :cond_211
    if-eqz v6, :cond_216

    .line 155
    :try_start_213
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_216} :catch_28f

    .line 160
    :cond_216
    :goto_216
    if-eqz v9, :cond_21b

    .line 162
    :try_start_218
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_21b
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_21b} :catch_294

    .line 167
    :cond_21b
    :goto_21b
    if-eqz v13, :cond_18f

    .line 169
    :try_start_21d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_220} :catch_222

    goto/16 :goto_18f

    .line 170
    :catch_222
    move-exception v5

    .line 171
    :goto_223
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_18f

    .line 145
    .end local v5           #e:Ljava/io/IOException;
    :catch_228
    move-exception v5

    .line 146
    .local v5, e:Ljava/lang/Exception;
    :goto_229
    :try_start_229
    const-string v18, "DLNA"

    const-string v19, "SF_DmpDrmUtil.Exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_233
    .catchall {:try_start_229 .. :try_end_233} :catchall_24b

    .line 150
    if-eqz v3, :cond_238

    .line 151
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 153
    :cond_238
    if-eqz v6, :cond_23d

    .line 155
    :try_start_23a
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_23d
    .catch Ljava/io/IOException; {:try_start_23a .. :try_end_23d} :catch_299

    .line 160
    .end local v5           #e:Ljava/lang/Exception;
    :cond_23d
    :goto_23d
    if-eqz v9, :cond_242

    .line 162
    :try_start_23f
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_242
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_242} :catch_29e

    .line 167
    :cond_242
    :goto_242
    if-eqz v13, :cond_18f

    .line 169
    :try_start_244
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_247
    .catch Ljava/io/IOException; {:try_start_244 .. :try_end_247} :catch_249

    goto/16 :goto_18f

    .line 170
    :catch_249
    move-exception v5

    goto :goto_223

    .line 150
    :catchall_24b
    move-exception v18

    :goto_24c
    if-eqz v3, :cond_251

    .line 151
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 153
    :cond_251
    if-eqz v6, :cond_256

    .line 155
    :try_start_253
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_256
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_256} :catch_280

    .line 160
    :cond_256
    :goto_256
    if-eqz v9, :cond_25b

    .line 162
    :try_start_258
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_25b
    .catch Ljava/io/IOException; {:try_start_258 .. :try_end_25b} :catch_285

    .line 167
    :cond_25b
    :goto_25b
    if-eqz v13, :cond_260

    .line 169
    :try_start_25d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_260
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_260} :catch_28a

    .line 150
    :cond_260
    :goto_260
    throw v18

    .line 178
    :cond_261
    const-string v18, "DLNA"

    const-string v19, "SF_DmpDrmUtil.Skipping DRM check"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$002(Lcom/samsung/dmp/layout/DmpDrmUtil;I)I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->this$0:Lcom/samsung/dmp/layout/DmpDrmUtil;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmChecked:Z
    invoke-static/range {v18 .. v19}, Lcom/samsung/dmp/layout/DmpDrmUtil;->access$102(Lcom/samsung/dmp/layout/DmpDrmUtil;Z)Z

    goto/16 :goto_1ac

    .line 156
    :catch_280
    move-exception v5

    .line 157
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_256

    .line 163
    .end local v5           #e:Ljava/io/IOException;
    :catch_285
    move-exception v5

    .line 164
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25b

    .line 170
    .end local v5           #e:Ljava/io/IOException;
    :catch_28a
    move-exception v5

    .line 171
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_260

    .line 156
    :catch_28f
    move-exception v5

    .line 157
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_216

    .line 163
    :catch_294
    move-exception v5

    .line 164
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21b

    .line 156
    .local v5, e:Ljava/lang/Exception;
    :catch_299
    move-exception v5

    .line 157
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23d

    .line 163
    .end local v5           #e:Ljava/io/IOException;
    :catch_29e
    move-exception v5

    .line 164
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_242

    .line 156
    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #buf:[B
    .restart local v4       #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v12       #i:I
    .restart local v14       #inputURL:Ljava/net/URL;
    .restart local v15       #readCount:I
    .restart local v16       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #temp_isDrmFile:Z
    :catch_2a3
    move-exception v5

    .line 157
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_184

    .line 163
    .end local v5           #e:Ljava/io/IOException;
    :catch_2a9
    move-exception v5

    .line 164
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_189

    .line 170
    .end local v5           #e:Ljava/io/IOException;
    :catch_2af
    move-exception v5

    .line 171
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_18e

    .line 150
    .end local v2           #buf:[B
    .end local v4           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v5           #e:Ljava/io/IOException;
    .end local v12           #i:I
    .end local v15           #readCount:I
    .end local v17           #temp_isDrmFile:Z
    :catchall_2b5
    move-exception v18

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto :goto_24c

    .line 145
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_2b8
    move-exception v5

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_229

    .line 142
    .end local v7           #file:Ljava/io/File;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v11           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #inputURL:Ljava/net/URL;
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    :catch_2bc
    move-exception v5

    goto/16 :goto_202
.end method
