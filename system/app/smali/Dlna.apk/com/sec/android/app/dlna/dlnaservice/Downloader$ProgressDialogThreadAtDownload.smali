.class Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;
.super Ljava/lang/Thread;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/dlnaservice/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressDialogThreadAtDownload"
.end annotation


# instance fields
.field private fileExtension:Ljava/lang/String;

.field private selectedItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dlna/dlnaservice/Downloader;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, selectedItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/ContentItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->selectedItemsList:Ljava/util/ArrayList;

    .line 93
    return-void
.end method


# virtual methods
.method public run()V
    .registers 39

    .prologue
    .line 96
    const/16 v22, 0x0

    .line 97
    .local v22, message:Landroid/os/Message;
    const/4 v5, 0x0

    .line 98
    .local v5, bundle:Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 99
    .local v14, file:Ljava/io/File;
    const-string v31, ""

    .line 100
    .local v31, title:Ljava/lang/String;
    const/4 v9, 0x1

    .line 101
    .local v9, count:I
    const/16 v16, 0x0

    .line 102
    .local v16, fos:Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    .line 103
    .local v20, inStream:Ljava/io/InputStream;
    const/4 v7, 0x1

    .line 104
    .local v7, checkDone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    #setter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z
    invoke-static/range {v32 .. v33}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$002(Lcom/sec/android/app/dlna/dlnaservice/Downloader;Z)Z

    .line 105
    const/4 v8, 0x0

    .line 106
    .local v8, client:Landroid/net/http/AndroidHttpClient;
    const/4 v12, 0x0

    .line 107
    .local v12, entity:Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    .line 108
    .local v3, MediaSize:I
    const/16 v23, 0x0

    .line 111
    .local v23, numOfDownloaded:I
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->selectedItemsList:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_71c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_25} :catch_50f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_656

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    move-object/from16 v17, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .local v17, fos:Ljava/io/FileOutputStream;
    move v10, v9

    .end local v9           #count:I
    .local v10, count:I
    move-object v15, v14

    .end local v14           #file:Ljava/io/File;
    .local v15, file:Ljava/io/File;
    move-object v6, v5

    .end local v5           #bundle:Landroid/os/Bundle;
    .local v6, bundle:Landroid/os/Bundle;
    :goto_2b
    :try_start_2b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3eb

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/api/ContentItem;
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_813
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_82b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_37} :catch_81f

    .line 113
    .local v27, selectedItem:Lcom/samsung/api/ContentItem;
    :try_start_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$000(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Z

    move-result v32

    if-nez v32, :cond_3d7

    .line 114
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v29

    .line 115
    .local v29, sourceURL:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v31

    .line 116
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->fileExtension:Ljava/lang/String;

    .line 119
    const-string v32, "[\\\\/:*?\"<>|]"

    const-string v33, "_"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 120
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "replaced title : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 123
    .local v21, inputURL:Ljava/net/URL;
    const-string v32, "DLNA_Downloader"

    invoke-static/range {v32 .. v32}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    .line 124
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 125
    .local v18, getRequest:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v26

    .line 126
    .local v26, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 128
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/dlna/DLNAManager;->getSharedPreferences()Landroid/content/SharedPreferences;
    :try_end_ae
    .catchall {:try_start_37 .. :try_end_ae} :catchall_4fe
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_ae} :catch_87a
    .catch Ljava/net/MalformedURLException; {:try_start_37 .. :try_end_ae} :catch_49e
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_ae} :catch_4cb

    move-result-object v28

    .line 132
    .local v28, settings:Landroid/content/SharedPreferences;
    :try_start_af
    const-string v32, "default_storage"

    const-string v33, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_30c

    .line 133
    const/16 v30, 0x1

    .line 134
    .local v30, tempNumber:I
    new-instance v14, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->fileExtension:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    move-object v15, v14

    .line 138
    .end local v14           #file:Ljava/io/File;
    .restart local v15       #file:Ljava/io/File;
    :goto_f0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_136

    .line 139
    new-instance v14, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->fileExtension:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_132
    .catchall {:try_start_af .. :try_end_132} :catchall_4fe
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_132} :catch_389
    .catch Ljava/lang/NullPointerException; {:try_start_af .. :try_end_132} :catch_87a
    .catch Ljava/net/MalformedURLException; {:try_start_af .. :try_end_132} :catch_49e
    .catch Ljava/io/FileNotFoundException; {:try_start_af .. :try_end_132} :catch_4cb

    .line 141
    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    add-int/lit8 v30, v30, 0x1

    move-object v15, v14

    .end local v14           #file:Ljava/io/File;
    .restart local v15       #file:Ljava/io/File;
    goto :goto_f0

    :cond_136
    move-object v14, v15

    .line 174
    .end local v15           #file:Ljava/io/File;
    .end local v30           #tempNumber:I
    .restart local v14       #file:Ljava/io/File;
    :goto_137
    :try_start_137
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13e
    .catchall {:try_start_137 .. :try_end_13e} :catchall_835
    .catch Ljava/lang/NullPointerException; {:try_start_137 .. :try_end_13e} :catch_397
    .catch Ljava/net/MalformedURLException; {:try_start_137 .. :try_end_13e} :catch_863
    .catch Ljava/io/FileNotFoundException; {:try_start_137 .. :try_end_13e} :catch_84c

    .line 175
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    const v32, 0x4b000

    :try_start_141
    move/from16 v0, v32

    new-array v4, v0, [B

    .line 177
    .local v4, buf:[B
    const/16 v25, 0x0

    .line 178
    .local v25, readCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 179
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_15c
    .catchall {:try_start_141 .. :try_end_15c} :catchall_83c
    .catch Ljava/lang/NullPointerException; {:try_start_141 .. :try_end_15c} :catch_882
    .catch Ljava/net/MalformedURLException; {:try_start_141 .. :try_end_15c} :catch_86a
    .catch Ljava/io/FileNotFoundException; {:try_start_141 .. :try_end_15c} :catch_853

    .line 180
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    :try_start_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_174
    .catchall {:try_start_15c .. :try_end_174} :catchall_841
    .catch Ljava/lang/NullPointerException; {:try_start_15c .. :try_end_174} :catch_887
    .catch Ljava/net/MalformedURLException; {:try_start_15c .. :try_end_174} :catch_86f
    .catch Ljava/io/FileNotFoundException; {:try_start_15c .. :try_end_174} :catch_858

    move-result-object v33

    add-int/lit8 v9, v10, 0x1

    .end local v10           #count:I
    .restart local v9       #count:I
    :try_start_177
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->selectedItemsList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    #setter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->mContentName:Ljava/lang/String;
    invoke-static/range {v32 .. v33}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$202(Lcom/sec/android/app/dlna/dlnaservice/Downloader;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    const-string v32, "contentName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v33, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->mContentName:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    .line 186
    :cond_1c5
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v25

    const/16 v32, -0x1

    move/from16 v0, v25

    move/from16 v1, v32

    if-eq v0, v1, :cond_22b

    .line 187
    add-int v3, v3, v25

    .line 188
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$000(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Z

    move-result v32

    if-eqz v32, :cond_1c5

    .line 191
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Donwload : isCancel value = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v34, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z
    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$000(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v7, 0x0

    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_212
    .catchall {:try_start_177 .. :try_end_212} :catchall_845
    .catch Ljava/lang/NullPointerException; {:try_start_177 .. :try_end_212} :catch_3d5
    .catch Ljava/net/MalformedURLException; {:try_start_177 .. :try_end_212} :catch_873
    .catch Ljava/io/FileNotFoundException; {:try_start_177 .. :try_end_212} :catch_85c

    .line 196
    :try_start_212
    const-string v32, "default_storage"

    const-string v33, "0"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v33, "0"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3c3

    .line 197
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_22b
    .catchall {:try_start_212 .. :try_end_22b} :catchall_845
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_22b} :catch_3c8
    .catch Ljava/lang/NullPointerException; {:try_start_212 .. :try_end_22b} :catch_3d5
    .catch Ljava/net/MalformedURLException; {:try_start_212 .. :try_end_22b} :catch_873
    .catch Ljava/io/FileNotFoundException; {:try_start_212 .. :try_end_22b} :catch_85c

    .line 211
    :cond_22b
    :goto_22b
    :try_start_22b
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/api/ContentResource;->getSize()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    if-eq v0, v3, :cond_27b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$000(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Z

    move-result v32

    if-nez v32, :cond_27b

    .line 213
    const/4 v7, 0x0

    .line 214
    const-string v32, "DLNA"

    const-string v33, "MediaSize"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz v14, :cond_254

    .line 216
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 218
    :cond_254
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_259
    .catchall {:try_start_22b .. :try_end_259} :catchall_845
    .catch Ljava/lang/NullPointerException; {:try_start_22b .. :try_end_259} :catch_3d5
    .catch Ljava/net/MalformedURLException; {:try_start_22b .. :try_end_259} :catch_873
    .catch Ljava/io/FileNotFoundException; {:try_start_22b .. :try_end_259} :catch_85c

    .line 219
    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :try_start_259
    const-string v32, "fail"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_27a
    .catchall {:try_start_259 .. :try_end_27a} :catchall_848
    .catch Ljava/lang/NullPointerException; {:try_start_259 .. :try_end_27a} :catch_88b
    .catch Ljava/net/MalformedURLException; {:try_start_259 .. :try_end_27a} :catch_876
    .catch Ljava/io/FileNotFoundException; {:try_start_259 .. :try_end_27a} :catch_85f

    move-object v5, v6

    .line 223
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    :cond_27b
    const/4 v3, 0x0

    .line 224
    :try_start_27c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_27f
    .catchall {:try_start_27c .. :try_end_27f} :catchall_845
    .catch Ljava/lang/NullPointerException; {:try_start_27c .. :try_end_27f} :catch_3d5
    .catch Ljava/net/MalformedURLException; {:try_start_27c .. :try_end_27f} :catch_873
    .catch Ljava/io/FileNotFoundException; {:try_start_27c .. :try_end_27f} :catch_85c

    .line 241
    if-eqz v8, :cond_284

    .line 242
    :try_start_281
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 243
    :cond_284
    if-eqz v12, :cond_289

    .line 244
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_289
    .catchall {:try_start_281 .. :try_end_289} :catchall_71c
    .catch Ljava/io/IOException; {:try_start_281 .. :try_end_289} :catch_50f
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_289} :catch_656

    :cond_289
    move-object v6, v5

    .line 246
    .end local v4           #buf:[B
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v18           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v21           #inputURL:Ljava/net/URL;
    .end local v25           #readCount:I
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #settings:Landroid/content/SharedPreferences;
    .end local v29           #sourceURL:Ljava/lang/String;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :goto_28a
    :try_start_28a
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD  isCancel: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v34, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z
    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$000(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " checkDone : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$000(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Z

    move-result v32

    if-nez v32, :cond_88f

    .line 249
    if-eqz v7, :cond_617

    .line 250
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_2cb
    .catchall {:try_start_28a .. :try_end_2cb} :catchall_81b
    .catch Ljava/io/IOException; {:try_start_28a .. :try_end_2cb} :catch_832
    .catch Ljava/lang/Exception; {:try_start_28a .. :try_end_2cb} :catch_827

    .line 251
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    :try_start_2cb
    const-string v32, "onefiledone"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v32, "DLNA"

    const-string v33, "DOWNLOAD onefiledone"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 254
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_303
    .catchall {:try_start_2cb .. :try_end_303} :catchall_71c
    .catch Ljava/io/IOException; {:try_start_2cb .. :try_end_303} :catch_50f
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_303} :catch_656

    .line 256
    add-int/lit8 v23, v23, 0x1

    :goto_305
    move-object/from16 v17, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    move v10, v9

    .end local v9           #count:I
    .restart local v10       #count:I
    move-object v15, v14

    .end local v14           #file:Ljava/io/File;
    .restart local v15       #file:Ljava/io/File;
    move-object v6, v5

    .line 263
    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_2b

    .line 144
    .restart local v18       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v21       #inputURL:Ljava/net/URL;
    .restart local v26       #response:Lorg/apache/http/HttpResponse;
    .restart local v28       #settings:Landroid/content/SharedPreferences;
    .restart local v29       #sourceURL:Ljava/lang/String;
    :cond_30c
    const/16 v30, 0x1

    .line 145
    .restart local v30       #tempNumber:I
    :try_start_30e
    new-instance v14, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->EXTERNAL_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->fileExtension:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    move-object v15, v14

    .line 150
    .end local v14           #file:Ljava/io/File;
    .restart local v15       #file:Ljava/io/File;
    :goto_33d
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_892

    .line 151
    new-instance v14, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v33, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->EXTERNAL_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->fileExtension:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_385
    .catchall {:try_start_30e .. :try_end_385} :catchall_4fe
    .catch Ljava/lang/Exception; {:try_start_30e .. :try_end_385} :catch_389
    .catch Ljava/lang/NullPointerException; {:try_start_30e .. :try_end_385} :catch_87a
    .catch Ljava/net/MalformedURLException; {:try_start_30e .. :try_end_385} :catch_49e
    .catch Ljava/io/FileNotFoundException; {:try_start_30e .. :try_end_385} :catch_4cb

    .line 154
    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    add-int/lit8 v30, v30, 0x1

    move-object v15, v14

    .end local v14           #file:Ljava/io/File;
    .restart local v15       #file:Ljava/io/File;
    goto :goto_33d

    .line 157
    .end local v30           #tempNumber:I
    :catch_389
    move-exception v11

    move-object v14, v15

    .line 158
    .end local v15           #file:Ljava/io/File;
    .local v11, e:Ljava/lang/Exception;
    .restart local v14       #file:Ljava/io/File;
    :try_start_38b
    const-string v32, "DLNA"

    const-string v33, "Exception while renaming"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_395
    .catchall {:try_start_38b .. :try_end_395} :catchall_835
    .catch Ljava/lang/NullPointerException; {:try_start_38b .. :try_end_395} :catch_397
    .catch Ljava/net/MalformedURLException; {:try_start_38b .. :try_end_395} :catch_863
    .catch Ljava/io/FileNotFoundException; {:try_start_38b .. :try_end_395} :catch_84c

    goto/16 :goto_137

    .line 230
    .end local v11           #e:Ljava/lang/Exception;
    :catch_397
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v5, v6

    .line 231
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v18           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v21           #inputURL:Ljava/net/URL;
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #settings:Landroid/content/SharedPreferences;
    .end local v29           #sourceURL:Ljava/lang/String;
    .restart local v5       #bundle:Landroid/os/Bundle;
    .local v11, e:Ljava/lang/NullPointerException;
    :goto_39c
    :try_start_39c
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD NullPointerException:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b6
    .catchall {:try_start_39c .. :try_end_3b6} :catchall_845

    .line 241
    if-eqz v8, :cond_3bb

    .line 242
    :try_start_3b8
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 243
    :cond_3bb
    if-eqz v12, :cond_3c0

    .line 244
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3c0
    .catchall {:try_start_3b8 .. :try_end_3c0} :catchall_71c
    .catch Ljava/io/IOException; {:try_start_3b8 .. :try_end_3c0} :catch_50f
    .catch Ljava/lang/Exception; {:try_start_3b8 .. :try_end_3c0} :catch_656

    :cond_3c0
    move-object v6, v5

    .line 245
    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_28a

    .line 199
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v11           #e:Ljava/lang/NullPointerException;
    .restart local v4       #buf:[B
    .restart local v5       #bundle:Landroid/os/Bundle;
    .restart local v18       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v21       #inputURL:Ljava/net/URL;
    .restart local v25       #readCount:I
    .restart local v26       #response:Lorg/apache/http/HttpResponse;
    .restart local v28       #settings:Landroid/content/SharedPreferences;
    .restart local v29       #sourceURL:Ljava/lang/String;
    :cond_3c3
    :try_start_3c3
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_3c6
    .catchall {:try_start_3c3 .. :try_end_3c6} :catchall_845
    .catch Ljava/lang/Exception; {:try_start_3c3 .. :try_end_3c6} :catch_3c8
    .catch Ljava/lang/NullPointerException; {:try_start_3c3 .. :try_end_3c6} :catch_3d5
    .catch Ljava/net/MalformedURLException; {:try_start_3c3 .. :try_end_3c6} :catch_873
    .catch Ljava/io/FileNotFoundException; {:try_start_3c3 .. :try_end_3c6} :catch_85c

    goto/16 :goto_22b

    .line 200
    :catch_3c8
    move-exception v11

    .line 201
    .local v11, e:Ljava/lang/Exception;
    :try_start_3c9
    const-string v32, "DLNA"

    const-string v33, "Exception while cancelling"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d3
    .catchall {:try_start_3c9 .. :try_end_3d3} :catchall_845
    .catch Ljava/lang/NullPointerException; {:try_start_3c9 .. :try_end_3d3} :catch_3d5
    .catch Ljava/net/MalformedURLException; {:try_start_3c9 .. :try_end_3d3} :catch_873
    .catch Ljava/io/FileNotFoundException; {:try_start_3c9 .. :try_end_3d3} :catch_85c

    goto/16 :goto_22b

    .line 230
    .end local v11           #e:Ljava/lang/Exception;
    :catch_3d5
    move-exception v11

    goto :goto_39c

    .line 226
    .end local v4           #buf:[B
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v18           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v21           #inputURL:Ljava/net/URL;
    .end local v25           #readCount:I
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #settings:Landroid/content/SharedPreferences;
    .end local v29           #sourceURL:Ljava/lang/String;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :cond_3d7
    :try_start_3d7
    const-string v32, "DLNA"

    const-string v33, "isCancel == true"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e1
    .catchall {:try_start_3d7 .. :try_end_3e1} :catchall_4fe
    .catch Ljava/lang/NullPointerException; {:try_start_3d7 .. :try_end_3e1} :catch_87a
    .catch Ljava/net/MalformedURLException; {:try_start_3d7 .. :try_end_3e1} :catch_49e
    .catch Ljava/io/FileNotFoundException; {:try_start_3d7 .. :try_end_3e1} :catch_4cb

    .line 241
    if-eqz v8, :cond_3e6

    .line 242
    :try_start_3e3
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 243
    :cond_3e6
    if-eqz v12, :cond_3eb

    .line 244
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3eb
    .catchall {:try_start_3e3 .. :try_end_3eb} :catchall_813
    .catch Ljava/io/IOException; {:try_start_3e3 .. :try_end_3eb} :catch_82b
    .catch Ljava/lang/Exception; {:try_start_3e3 .. :try_end_3eb} :catch_81f

    .line 283
    .end local v27           #selectedItem:Lcom/samsung/api/ContentItem;
    :cond_3eb
    if-eqz v17, :cond_3f0

    .line 284
    :try_start_3ed
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_3f0
    if-eqz v20, :cond_3f5

    .line 287
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_3f5
    .catch Ljava/io/IOException; {:try_start_3ed .. :try_end_3f5} :catch_801
    .catch Ljava/lang/NullPointerException; {:try_start_3ed .. :try_end_3f5} :catch_807

    .line 295
    :cond_3f5
    :goto_3f5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 296
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v32, "finishProgress"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 298
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    const-wide/16 v32, 0x3e8

    :try_start_42d
    invoke-static/range {v32 .. v33}, Ljava/lang/Thread;->sleep(J)V
    :try_end_430
    .catch Ljava/lang/InterruptedException; {:try_start_42d .. :try_end_430} :catch_80d

    .line 307
    :goto_430
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/dlna/DLNAManager;->getUploadPath()Ljava/lang/String;

    move-result-object v24

    .line 308
    .local v24, path:Ljava/lang/String;
    if-lez v23, :cond_46f

    .line 309
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v32

    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.MEDIA_MOUNTED"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "file://"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v34, "where"

    const-string v35, "myfiles"

    invoke-virtual/range {v33 .. v35}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    :cond_46f
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD finishProgress:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->downloadThread:Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v14, v15

    .line 319
    .end local v15           #file:Ljava/io/File;
    .end local v19           #i$:Ljava/util/Iterator;
    .restart local v14       #file:Ljava/io/File;
    :goto_49d
    return-void

    .line 232
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v24           #path:Ljava/lang/String;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v27       #selectedItem:Lcom/samsung/api/ContentItem;
    :catch_49e
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v14, v15

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    move-object v5, v6

    .line 233
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    .local v11, e:Ljava/net/MalformedURLException;
    :goto_4a4
    :try_start_4a4
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD MalformedURLException:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4be
    .catchall {:try_start_4a4 .. :try_end_4be} :catchall_845

    .line 241
    if-eqz v8, :cond_4c3

    .line 242
    :try_start_4c0
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 243
    :cond_4c3
    if-eqz v12, :cond_4c8

    .line 244
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4c8
    .catchall {:try_start_4c0 .. :try_end_4c8} :catchall_71c
    .catch Ljava/io/IOException; {:try_start_4c0 .. :try_end_4c8} :catch_50f
    .catch Ljava/lang/Exception; {:try_start_4c0 .. :try_end_4c8} :catch_656

    :cond_4c8
    move-object v6, v5

    .line 245
    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_28a

    .line 234
    .end local v9           #count:I
    .end local v11           #e:Ljava/net/MalformedURLException;
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catch_4cb
    move-exception v13

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v14, v15

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    move-object v5, v6

    .line 235
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    .local v13, ex:Ljava/io/FileNotFoundException;
    :goto_4d1
    :try_start_4d1
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD FileNotFoundException:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v7, 0x0

    .line 237
    if-eqz v14, :cond_4f1

    .line 238
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_4f1
    .catchall {:try_start_4d1 .. :try_end_4f1} :catchall_845

    .line 241
    :cond_4f1
    if-eqz v8, :cond_4f6

    .line 242
    :try_start_4f3
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 243
    :cond_4f6
    if-eqz v12, :cond_4fb

    .line 244
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_4fb
    move-object v6, v5

    .line 245
    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_28a

    .line 241
    .end local v9           #count:I
    .end local v13           #ex:Ljava/io/FileNotFoundException;
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catchall_4fe
    move-exception v32

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v14, v15

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    :goto_504
    if-eqz v8, :cond_509

    .line 242
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 243
    :cond_509
    if-eqz v12, :cond_50e

    .line 244
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 241
    :cond_50e
    throw v32
    :try_end_50f
    .catchall {:try_start_4f3 .. :try_end_50f} :catchall_71c
    .catch Ljava/io/IOException; {:try_start_4f3 .. :try_end_50f} :catch_50f
    .catch Ljava/lang/Exception; {:try_start_4f3 .. :try_end_50f} :catch_656

    .line 267
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v27           #selectedItem:Lcom/samsung/api/ContentItem;
    :catch_50f
    move-exception v11

    move-object v6, v5

    .line 268
    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .local v11, e:Ljava/io/IOException;
    :goto_511
    :try_start_511
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD IOExeption:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz v14, :cond_530

    .line 270
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 272
    :cond_530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v22

    .line 273
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_543
    .catchall {:try_start_511 .. :try_end_543} :catchall_81b

    .line 274
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    :try_start_543
    const-string v32, "fail"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_567
    .catchall {:try_start_543 .. :try_end_567} :catchall_71c

    .line 283
    if-eqz v16, :cond_56c

    .line 284
    :try_start_569
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_56c
    if-eqz v20, :cond_571

    .line 287
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_571
    .catch Ljava/io/IOException; {:try_start_569 .. :try_end_571} :catch_7dd
    .catch Ljava/lang/NullPointerException; {:try_start_569 .. :try_end_571} :catch_7e3

    .line 295
    .end local v11           #e:Ljava/io/IOException;
    :cond_571
    :goto_571
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 296
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v32, "finishProgress"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 298
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    const-wide/16 v32, 0x3e8

    :try_start_5a9
    invoke-static/range {v32 .. v33}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5ac
    .catch Ljava/lang/InterruptedException; {:try_start_5a9 .. :try_end_5ac} :catch_7e9

    .line 307
    :goto_5ac
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/dlna/DLNAManager;->getUploadPath()Ljava/lang/String;

    move-result-object v24

    .line 308
    .restart local v24       #path:Ljava/lang/String;
    if-lez v23, :cond_5eb

    .line 309
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v32

    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.MEDIA_MOUNTED"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "file://"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v34, "where"

    const-string v35, "myfiles"

    invoke-virtual/range {v33 .. v35}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    :cond_5eb
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD finishProgress:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    :goto_60d
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->downloadThread:Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;

    goto/16 :goto_49d

    .line 258
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v24           #path:Ljava/lang/String;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v27       #selectedItem:Lcom/samsung/api/ContentItem;
    :cond_617
    :try_start_617
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_61c
    .catchall {:try_start_617 .. :try_end_61c} :catchall_81b
    .catch Ljava/io/IOException; {:try_start_617 .. :try_end_61c} :catch_832
    .catch Ljava/lang/Exception; {:try_start_617 .. :try_end_61c} :catch_827

    .line 259
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    :try_start_61c
    const-string v32, "onefiledonefail"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v32, "DLNA"

    const-string v33, "DOWNLOAD onefiledonefail"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 262
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_654
    .catchall {:try_start_61c .. :try_end_654} :catchall_71c
    .catch Ljava/io/IOException; {:try_start_61c .. :try_end_654} :catch_50f
    .catch Ljava/lang/Exception; {:try_start_61c .. :try_end_654} :catch_656

    goto/16 :goto_305

    .line 278
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v27           #selectedItem:Lcom/samsung/api/ContentItem;
    :catch_656
    move-exception v11

    .line 279
    .local v11, e:Ljava/lang/Exception;
    :goto_657
    :try_start_657
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD Exception:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_674
    .catchall {:try_start_657 .. :try_end_674} :catchall_71c

    .line 283
    if-eqz v16, :cond_679

    .line 284
    :try_start_676
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_679
    if-eqz v20, :cond_67e

    .line 287
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_67e
    .catch Ljava/io/IOException; {:try_start_676 .. :try_end_67e} :catch_7ef
    .catch Ljava/lang/NullPointerException; {:try_start_676 .. :try_end_67e} :catch_7f5

    .line 295
    .end local v11           #e:Ljava/lang/Exception;
    :cond_67e
    :goto_67e
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 296
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v32, "finishProgress"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 298
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    const-wide/16 v32, 0x3e8

    :try_start_6b6
    invoke-static/range {v32 .. v33}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6b9
    .catch Ljava/lang/InterruptedException; {:try_start_6b6 .. :try_end_6b9} :catch_7fb

    .line 307
    :goto_6b9
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/dlna/DLNAManager;->getUploadPath()Ljava/lang/String;

    move-result-object v24

    .line 308
    .restart local v24       #path:Ljava/lang/String;
    if-lez v23, :cond_6f8

    .line 309
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v32

    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.MEDIA_MOUNTED"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "file://"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v34, "where"

    const-string v35, "myfiles"

    invoke-virtual/range {v33 .. v35}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    :cond_6f8
    const-string v32, "DLNA"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DOWNLOAD finishProgress:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v32, v0

    goto/16 :goto_60d

    .line 282
    .end local v24           #path:Ljava/lang/String;
    :catchall_71c
    move-exception v32

    .line 283
    :goto_71d
    if-eqz v16, :cond_722

    .line 284
    :try_start_71f
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_722
    if-eqz v20, :cond_727

    .line 287
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_727
    .catch Ljava/io/IOException; {:try_start_71f .. :try_end_727} :catch_7cc
    .catch Ljava/lang/NullPointerException; {:try_start_71f .. :try_end_727} :catch_7d2

    .line 295
    :cond_727
    :goto_727
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 296
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v33, "finishProgress"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v33, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 298
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v33, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    const-wide/16 v33, 0x3e8

    :try_start_75f
    invoke-static/range {v33 .. v34}, Ljava/lang/Thread;->sleep(J)V
    :try_end_762
    .catch Ljava/lang/InterruptedException; {:try_start_75f .. :try_end_762} :catch_7d8

    .line 307
    :goto_762
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/app/dlna/DLNAManager;->getUploadPath()Ljava/lang/String;

    move-result-object v24

    .line 308
    .restart local v24       #path:Ljava/lang/String;
    if-lez v23, :cond_7a1

    .line 309
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v33

    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.MEDIA_MOUNTED"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "file://"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v35, "where"

    const-string v36, "myfiles"

    invoke-virtual/range {v34 .. v36}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    :cond_7a1
    const-string v33, "DLNA"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "DOWNLOAD finishProgress:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->downloadThread:Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;

    .line 282
    throw v32

    .line 289
    .end local v24           #path:Ljava/lang/String;
    :catch_7cc
    move-exception v11

    .line 290
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_727

    .line 291
    .end local v11           #e:Ljava/io/IOException;
    :catch_7d2
    move-exception v11

    .line 292
    .local v11, e:Ljava/lang/NullPointerException;
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_727

    .line 303
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_7d8
    move-exception v11

    .line 304
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_762

    .line 289
    .local v11, e:Ljava/io/IOException;
    :catch_7dd
    move-exception v11

    .line 290
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_571

    .line 291
    :catch_7e3
    move-exception v11

    .line 292
    .local v11, e:Ljava/lang/NullPointerException;
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_571

    .line 303
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_7e9
    move-exception v11

    .line 304
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5ac

    .line 289
    .local v11, e:Ljava/lang/Exception;
    :catch_7ef
    move-exception v11

    .line 290
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_67e

    .line 291
    .local v11, e:Ljava/lang/Exception;
    :catch_7f5
    move-exception v11

    .line 292
    .local v11, e:Ljava/lang/NullPointerException;
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_67e

    .line 303
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_7fb
    move-exception v11

    .line 304
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6b9

    .line 289
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v11           #e:Ljava/lang/InterruptedException;
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #i$:Ljava/util/Iterator;
    :catch_801
    move-exception v11

    .line 290
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3f5

    .line 291
    .end local v11           #e:Ljava/io/IOException;
    :catch_807
    move-exception v11

    .line 292
    .local v11, e:Ljava/lang/NullPointerException;
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3f5

    .line 303
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v11           #e:Ljava/lang/NullPointerException;
    .restart local v5       #bundle:Landroid/os/Bundle;
    :catch_80d
    move-exception v11

    .line 304
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_430

    .line 282
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v11           #e:Ljava/lang/InterruptedException;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :catchall_813
    move-exception v32

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v14, v15

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_71d

    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v19           #i$:Ljava/util/Iterator;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :catchall_81b
    move-exception v32

    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_71d

    .line 278
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #i$:Ljava/util/Iterator;
    :catch_81f
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v14, v15

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_657

    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v27       #selectedItem:Lcom/samsung/api/ContentItem;
    :catch_827
    move-exception v11

    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_657

    .line 267
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v27           #selectedItem:Lcom/samsung/api/ContentItem;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catch_82b
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v14, v15

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    goto/16 :goto_511

    .restart local v27       #selectedItem:Lcom/samsung/api/ContentItem;
    :catch_832
    move-exception v11

    goto/16 :goto_511

    .line 241
    .end local v9           #count:I
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v10       #count:I
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v21       #inputURL:Ljava/net/URL;
    .restart local v26       #response:Lorg/apache/http/HttpResponse;
    .restart local v28       #settings:Landroid/content/SharedPreferences;
    .restart local v29       #sourceURL:Ljava/lang/String;
    :catchall_835
    move-exception v32

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_504

    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    :catchall_83c
    move-exception v32

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_504

    .end local v9           #count:I
    .restart local v4       #buf:[B
    .restart local v10       #count:I
    .restart local v25       #readCount:I
    :catchall_841
    move-exception v32

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    goto/16 :goto_504

    .end local v4           #buf:[B
    .end local v18           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v21           #inputURL:Ljava/net/URL;
    .end local v25           #readCount:I
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #settings:Landroid/content/SharedPreferences;
    .end local v29           #sourceURL:Ljava/lang/String;
    :catchall_845
    move-exception v32

    goto/16 :goto_504

    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v4       #buf:[B
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v18       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v21       #inputURL:Ljava/net/URL;
    .restart local v25       #readCount:I
    .restart local v26       #response:Lorg/apache/http/HttpResponse;
    .restart local v28       #settings:Landroid/content/SharedPreferences;
    .restart local v29       #sourceURL:Ljava/lang/String;
    :catchall_848
    move-exception v32

    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_504

    .line 234
    .end local v4           #buf:[B
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v25           #readCount:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catch_84c
    move-exception v13

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_4d1

    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    :catch_853
    move-exception v13

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_4d1

    .end local v9           #count:I
    .restart local v4       #buf:[B
    .restart local v10       #count:I
    .restart local v25       #readCount:I
    :catch_858
    move-exception v13

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    goto/16 :goto_4d1

    :catch_85c
    move-exception v13

    goto/16 :goto_4d1

    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :catch_85f
    move-exception v13

    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_4d1

    .line 232
    .end local v4           #buf:[B
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v25           #readCount:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catch_863
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_4a4

    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    :catch_86a
    move-exception v11

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_4a4

    .end local v9           #count:I
    .restart local v4       #buf:[B
    .restart local v10       #count:I
    .restart local v25       #readCount:I
    :catch_86f
    move-exception v11

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    goto/16 :goto_4a4

    :catch_873
    move-exception v11

    goto/16 :goto_4a4

    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :catch_876
    move-exception v11

    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_4a4

    .line 230
    .end local v4           #buf:[B
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v18           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v21           #inputURL:Ljava/net/URL;
    .end local v25           #readCount:I
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #settings:Landroid/content/SharedPreferences;
    .end local v29           #sourceURL:Ljava/lang/String;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catch_87a
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v14, v15

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_39c

    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v18       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v21       #inputURL:Ljava/net/URL;
    .restart local v26       #response:Lorg/apache/http/HttpResponse;
    .restart local v28       #settings:Landroid/content/SharedPreferences;
    .restart local v29       #sourceURL:Ljava/lang/String;
    :catch_882
    move-exception v11

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_39c

    .end local v9           #count:I
    .restart local v4       #buf:[B
    .restart local v10       #count:I
    .restart local v25       #readCount:I
    :catch_887
    move-exception v11

    move v9, v10

    .end local v10           #count:I
    .restart local v9       #count:I
    goto/16 :goto_39c

    .end local v5           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :catch_88b
    move-exception v11

    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_39c

    .end local v4           #buf:[B
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v18           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v21           #inputURL:Ljava/net/URL;
    .end local v25           #readCount:I
    .end local v26           #response:Lorg/apache/http/HttpResponse;
    .end local v28           #settings:Landroid/content/SharedPreferences;
    .end local v29           #sourceURL:Ljava/lang/String;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :cond_88f
    move-object v5, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v5       #bundle:Landroid/os/Bundle;
    goto/16 :goto_305

    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v9           #count:I
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v21       #inputURL:Ljava/net/URL;
    .restart local v26       #response:Lorg/apache/http/HttpResponse;
    .restart local v28       #settings:Landroid/content/SharedPreferences;
    .restart local v29       #sourceURL:Ljava/lang/String;
    .restart local v30       #tempNumber:I
    :cond_892
    move-object v14, v15

    .end local v15           #file:Ljava/io/File;
    .restart local v14       #file:Ljava/io/File;
    goto/16 :goto_137
.end method
