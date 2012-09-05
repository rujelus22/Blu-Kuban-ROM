.class Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;
.super Ljava/lang/Thread;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/dlnaservice/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressDialogThreadAtMultiUpload"
.end annotation


# instance fields
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

.field private targetDMSUdn:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dlna/dlnaservice/Uploader;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "targetDMSUdn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, selectedItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/ContentItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->selectedItemsList:Ljava/util/ArrayList;

    .line 100
    iput-object p3, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->targetDMSUdn:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    .prologue
    .line 105
    const/16 v19, 0x0

    .line 106
    .local v19, message:Landroid/os/Message;
    const/4 v6, 0x0

    .line 107
    .local v6, bundle:Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 108
    .local v9, contentLen:I
    const/4 v10, 0x1

    .line 109
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCancel:Z
    invoke-static/range {v27 .. v28}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$002(Lcom/sec/android/app/dlna/dlnaservice/Uploader;Z)Z

    .line 110
    const-wide/16 v27, 0x0

    invoke-static/range {v27 .. v28}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$102(J)J

    .line 112
    const-string v27, "DLNA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Upload - RUN() MediaSize - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$100()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->selectedItemsList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/api/ContentItem;
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_47} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_47} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_31 .. :try_end_47} :catch_448

    .line 117
    .local v22, selectedItem:Lcom/samsung/api/ContentItem;
    :try_start_47
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/api/ContentResource;->getSize()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_4c1
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_52} :catch_56
    .catch Ljava/net/MalformedURLException; {:try_start_47 .. :try_end_52} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_52} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_47 .. :try_end_52} :catch_448

    move-result v18

    .line 121
    .local v18, itemLength:I
    :goto_53
    add-int v9, v9, v18

    goto :goto_3b

    .line 118
    .end local v18           #itemLength:I
    :catch_56
    move-exception v12

    .line 119
    .local v12, e:Ljava/lang/NumberFormatException;
    const/16 v18, 0x0

    .restart local v18       #itemLength:I
    goto :goto_53

    .line 123
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .end local v18           #itemLength:I
    .end local v22           #selectedItem:Lcom/samsung/api/ContentItem;
    :cond_5a
    :try_start_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v19

    .line 124
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_5a .. :try_end_6d} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6d} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_5a .. :try_end_6d} :catch_448

    .line 125
    .end local v6           #bundle:Landroid/os/Bundle;
    .local v7, bundle:Landroid/os/Bundle;
    :try_start_6d
    const-string v27, "total"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->selectedItemsList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_93
    .catchall {:try_start_6d .. :try_end_93} :catchall_525
    .catch Ljava/net/MalformedURLException; {:try_start_6d .. :try_end_93} :catch_547
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_93} :catch_53b
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_6d .. :try_end_93} :catch_52f

    move-result-object v15

    move v11, v10

    .end local v10           #count:I
    .local v11, count:I
    :goto_95
    :try_start_95
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_ba

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/api/ContentItem;

    .line 130
    .restart local v22       #selectedItem:Lcom/samsung/api/ContentItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCancel:Z
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$000(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15d

    .line 131
    const-string v27, "DLNA"

    const-string v28, "Cancel upload !!!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v22           #selectedItem:Lcom/samsung/api/ContentItem;
    :cond_ba
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$100()J

    move-result-wide v27

    int-to-long v0, v9

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-gez v27, :cond_55b

    .line 248
    const-string v27, "DLNA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MediaSize - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$100()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 250
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_f6
    .catchall {:try_start_95 .. :try_end_f6} :catchall_528
    .catch Ljava/net/MalformedURLException; {:try_start_95 .. :try_end_f6} :catch_54a
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_f6} :catch_53e
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_95 .. :try_end_f6} :catch_532

    .line 251
    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :try_start_f6
    const-string v27, "fail"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_117
    .catchall {:try_start_f6 .. :try_end_117} :catchall_52c
    .catch Ljava/net/MalformedURLException; {:try_start_f6 .. :try_end_117} :catch_54e
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_117} :catch_542
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_f6 .. :try_end_117} :catch_536

    .line 277
    :goto_117
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 278
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v27, "finishProgressAll"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 280
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->uploaderThread:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    move v10, v11

    .line 284
    .end local v11           #count:I
    .end local v15           #i$:Ljava/util/Iterator;
    .restart local v10       #count:I
    :goto_15c
    return-void

    .line 135
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v10           #count:I
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v11       #count:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v22       #selectedItem:Lcom/samsung/api/ContentItem;
    :cond_15d
    :try_start_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v19

    .line 136
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_170
    .catchall {:try_start_15d .. :try_end_170} :catchall_528
    .catch Ljava/net/MalformedURLException; {:try_start_15d .. :try_end_170} :catch_54a
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_170} :catch_53e
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_15d .. :try_end_170} :catch_532

    .line 137
    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :try_start_170
    const-string v27, "contentName"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_184
    .catchall {:try_start_170 .. :try_end_184} :catchall_52c
    .catch Ljava/net/MalformedURLException; {:try_start_170 .. :try_end_184} :catch_54e
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_184} :catch_542
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_170 .. :try_end_184} :catch_536

    move-result-object v28

    add-int/lit8 v10, v11, 0x1

    .end local v11           #count:I
    .restart local v10       #count:I
    :try_start_187
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->selectedItemsList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v23

    .line 143
    .local v23, sourceUrl:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->targetDMSUdn:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "DLNA.ORG_AnyContainer"

    const-string v30, "0"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/api/DigitalMediaControllerAPI;->createObject(Lcom/samsung/api/ContentItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 145
    .local v25, targetUrl:Ljava/lang/String;
    if-nez v25, :cond_26f

    .line 146
    new-instance v27, Ljava/net/MalformedURLException;

    invoke-direct/range {v27 .. v27}, Ljava/net/MalformedURLException;-><init>()V

    throw v27
    :try_end_1ee
    .catchall {:try_start_187 .. :try_end_1ee} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_187 .. :try_end_1ee} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_1ee} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_187 .. :try_end_1ee} :catch_448

    .line 255
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v22           #selectedItem:Lcom/samsung/api/ContentItem;
    .end local v23           #sourceUrl:Ljava/lang/String;
    .end local v25           #targetUrl:Ljava/lang/String;
    :catch_1ee
    move-exception v12

    move-object v7, v6

    .line 256
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .local v12, e:Ljava/net/MalformedURLException;
    :goto_1f0
    :try_start_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 257
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_205
    .catchall {:try_start_1f0 .. :try_end_205} :catchall_525

    .line 258
    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :try_start_205
    const-string v27, "fail"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 261
    invoke-virtual {v12}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_229
    .catchall {:try_start_205 .. :try_end_229} :catchall_4c1

    .line 277
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 278
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v27, "finishProgressAll"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 280
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    .end local v12           #e:Ljava/net/MalformedURLException;
    :goto_265
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->uploaderThread:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    goto/16 :goto_15c

    .line 149
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v22       #selectedItem:Lcom/samsung/api/ContentItem;
    .restart local v23       #sourceUrl:Ljava/lang/String;
    .restart local v25       #targetUrl:Ljava/lang/String;
    :cond_26f
    :try_start_26f
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 150
    .local v16, inputURL:Ljava/net/URL;
    new-instance v26, Ljava/net/URL;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 152
    .local v26, url:Ljava/net/URL;
    const-string v27, "Android"

    invoke-static/range {v27 .. v27}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    .line 153
    .local v8, client:Landroid/net/http/AndroidHttpClient;
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 155
    .local v14, getRequest:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v8, v14}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 156
    .local v21, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 158
    .local v13, entity:Lorg/apache/http/HttpEntity;
    const v27, 0x4b000

    move/from16 v0, v27

    new-array v5, v0, [B

    .line 160
    .local v5, b:[B
    new-instance v17, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v28

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v29

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;-><init>(Lcom/sec/android/app/dlna/dlnaservice/Uploader;Ljava/io/InputStream;J)V

    .line 162
    .local v17, isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
    new-instance v27, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v8, v13, v2}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload$1;-><init>(Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/HttpEntity;Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->setWriteEventHandler(Lcom/sec/android/app/dlna/dlnaservice/IWriteChanged;)V

    .line 198
    new-instance v20, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 199
    .local v20, postRequest:Lorg/apache/http/client/methods/HttpPost;
    const-string v27, "Expect"

    const-string v28, "100-continue"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v27, "User-Agent"

    invoke-static {}, Lcom/samsung/http/HTTP;->getUserAgentValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v27, "Content-Type"

    const-string v28, "application/x-www-form-urlencoded"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_30b
    .catchall {:try_start_26f .. :try_end_30b} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_26f .. :try_end_30b} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_30b} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_26f .. :try_end_30b} :catch_448

    .line 205
    :try_start_30b
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 206
    if-eqz v21, :cond_35a

    .line 207
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    .line 208
    .local v24, statusCode:I
    const/16 v27, 0xc8

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_36d

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 210
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_338
    .catchall {:try_start_30b .. :try_end_338} :catchall_437
    .catch Ljava/lang/Exception; {:try_start_30b .. :try_end_338} :catch_3a5

    .line 211
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    :try_start_338
    const-string v27, "onefiledone"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_359
    .catchall {:try_start_338 .. :try_end_359} :catchall_553
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_359} :catch_557

    move-object v6, v7

    .line 226
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v24           #statusCode:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    :cond_35a
    :goto_35a
    if-eqz v8, :cond_35f

    .line 227
    :try_start_35c
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_35f
    .catchall {:try_start_35c .. :try_end_35f} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_35c .. :try_end_35f} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_35f} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_35c .. :try_end_35f} :catch_448

    .line 229
    :cond_35f
    if-eqz v13, :cond_364

    .line 231
    :try_start_361
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_364
    .catchall {:try_start_361 .. :try_end_364} :catchall_4c1
    .catch Ljava/io/IOException; {:try_start_361 .. :try_end_364} :catch_519
    .catch Ljava/net/MalformedURLException; {:try_start_361 .. :try_end_364} :catch_1ee
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_361 .. :try_end_364} :catch_448

    .line 237
    :cond_364
    :goto_364
    if-eqz v17, :cond_369

    .line 239
    :try_start_366
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->consumeContent()V
    :try_end_369
    .catchall {:try_start_366 .. :try_end_369} :catchall_4c1
    .catch Ljava/io/IOException; {:try_start_366 .. :try_end_369} :catch_51f
    .catch Ljava/net/MalformedURLException; {:try_start_366 .. :try_end_369} :catch_1ee
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_366 .. :try_end_369} :catch_448

    :cond_369
    :goto_369
    move v11, v10

    .end local v10           #count:I
    .restart local v11       #count:I
    move-object v7, v6

    .line 245
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    goto/16 :goto_95

    .line 215
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v11           #count:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #count:I
    .restart local v24       #statusCode:I
    :cond_36d
    :try_start_36d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 216
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_382
    .catchall {:try_start_36d .. :try_end_382} :catchall_437
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_382} :catch_3a5

    .line 217
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    :try_start_382
    const-string v27, "fail"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_3a3
    .catchall {:try_start_382 .. :try_end_3a3} :catchall_553
    .catch Ljava/lang/Exception; {:try_start_382 .. :try_end_3a3} :catch_557

    move-object v6, v7

    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto :goto_35a

    .line 223
    .end local v24           #statusCode:I
    :catch_3a5
    move-exception v12

    .line 224
    .local v12, e:Ljava/lang/Exception;
    :goto_3a6
    :try_start_3a6
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_3a9
    .catchall {:try_start_3a6 .. :try_end_3a9} :catchall_437

    .line 226
    if-eqz v8, :cond_3ae

    .line 227
    :try_start_3ab
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_3ae
    .catchall {:try_start_3ab .. :try_end_3ae} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_3ab .. :try_end_3ae} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_3ab .. :try_end_3ae} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_3ab .. :try_end_3ae} :catch_448

    .line 229
    :cond_3ae
    if-eqz v13, :cond_3b3

    .line 231
    :try_start_3b0
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3b3
    .catchall {:try_start_3b0 .. :try_end_3b3} :catchall_4c1
    .catch Ljava/io/IOException; {:try_start_3b0 .. :try_end_3b3} :catch_513
    .catch Ljava/net/MalformedURLException; {:try_start_3b0 .. :try_end_3b3} :catch_1ee
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_3b0 .. :try_end_3b3} :catch_448

    .line 237
    .end local v12           #e:Ljava/lang/Exception;
    :cond_3b3
    :goto_3b3
    if-eqz v17, :cond_369

    .line 239
    :try_start_3b5
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->consumeContent()V
    :try_end_3b8
    .catchall {:try_start_3b5 .. :try_end_3b8} :catchall_4c1
    .catch Ljava/io/IOException; {:try_start_3b5 .. :try_end_3b8} :catch_3b9
    .catch Ljava/net/MalformedURLException; {:try_start_3b5 .. :try_end_3b8} :catch_1ee
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_3b5 .. :try_end_3b8} :catch_448

    goto :goto_369

    .line 240
    :catch_3b9
    move-exception v12

    .line 241
    .local v12, e:Ljava/io/IOException;
    :try_start_3ba
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3bd
    .catchall {:try_start_3ba .. :try_end_3bd} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_3ba .. :try_end_3bd} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_3ba .. :try_end_3bd} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_3ba .. :try_end_3bd} :catch_448

    goto :goto_369

    .line 262
    .end local v5           #b:[B
    .end local v8           #client:Landroid/net/http/AndroidHttpClient;
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #inputURL:Ljava/net/URL;
    .end local v17           #isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
    .end local v20           #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v22           #selectedItem:Lcom/samsung/api/ContentItem;
    .end local v23           #sourceUrl:Ljava/lang/String;
    .end local v25           #targetUrl:Ljava/lang/String;
    .end local v26           #url:Ljava/net/URL;
    :catch_3be
    move-exception v12

    move-object v7, v6

    .line 263
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v12       #e:Ljava/io/IOException;
    :goto_3c0
    :try_start_3c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 264
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_3d5
    .catchall {:try_start_3c0 .. :try_end_3d5} :catchall_525

    .line 265
    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :try_start_3d5
    const-string v27, "fail"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 268
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f9
    .catchall {:try_start_3d5 .. :try_end_3f9} :catchall_4c1

    .line 277
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 278
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v27, "finishProgressAll"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 280
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    goto/16 :goto_265

    .line 226
    .end local v12           #e:Ljava/io/IOException;
    .restart local v5       #b:[B
    .restart local v8       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #inputURL:Ljava/net/URL;
    .restart local v17       #isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
    .restart local v20       #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v21       #response:Lorg/apache/http/HttpResponse;
    .restart local v22       #selectedItem:Lcom/samsung/api/ContentItem;
    .restart local v23       #sourceUrl:Ljava/lang/String;
    .restart local v25       #targetUrl:Ljava/lang/String;
    .restart local v26       #url:Ljava/net/URL;
    :catchall_437
    move-exception v27

    :goto_438
    if-eqz v8, :cond_43d

    .line 227
    :try_start_43a
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_43d
    .catchall {:try_start_43a .. :try_end_43d} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_43a .. :try_end_43d} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_43a .. :try_end_43d} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_43a .. :try_end_43d} :catch_448

    .line 229
    :cond_43d
    if-eqz v13, :cond_442

    .line 231
    :try_start_43f
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_442
    .catchall {:try_start_43f .. :try_end_442} :catchall_4c1
    .catch Ljava/io/IOException; {:try_start_43f .. :try_end_442} :catch_507
    .catch Ljava/net/MalformedURLException; {:try_start_43f .. :try_end_442} :catch_1ee
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_43f .. :try_end_442} :catch_448

    .line 237
    :cond_442
    :goto_442
    if-eqz v17, :cond_447

    .line 239
    :try_start_444
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;->consumeContent()V
    :try_end_447
    .catchall {:try_start_444 .. :try_end_447} :catchall_4c1
    .catch Ljava/io/IOException; {:try_start_444 .. :try_end_447} :catch_50d
    .catch Ljava/net/MalformedURLException; {:try_start_444 .. :try_end_447} :catch_1ee
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_444 .. :try_end_447} :catch_448

    .line 226
    :cond_447
    :goto_447
    :try_start_447
    throw v27
    :try_end_448
    .catchall {:try_start_447 .. :try_end_448} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_447 .. :try_end_448} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_447 .. :try_end_448} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_447 .. :try_end_448} :catch_448

    .line 269
    .end local v5           #b:[B
    .end local v8           #client:Landroid/net/http/AndroidHttpClient;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #inputURL:Ljava/net/URL;
    .end local v17           #isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
    .end local v20           #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v22           #selectedItem:Lcom/samsung/api/ContentItem;
    .end local v23           #sourceUrl:Ljava/lang/String;
    .end local v25           #targetUrl:Ljava/lang/String;
    .end local v26           #url:Ljava/net/URL;
    :catch_448
    move-exception v12

    move-object v7, v6

    .line 270
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .local v12, e:Lcom/samsung/api/DMCAPIException;
    :goto_44a
    :try_start_44a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 271
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_45f
    .catchall {:try_start_44a .. :try_end_45f} :catchall_525

    .line 272
    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    :try_start_45f
    const-string v27, "fail"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 275
    invoke-virtual {v12}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V
    :try_end_483
    .catchall {:try_start_45f .. :try_end_483} :catchall_4c1

    .line 277
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 278
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v27, "finishProgressAll"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 280
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v27, v0

    goto/16 :goto_265

    .line 277
    .end local v12           #e:Lcom/samsung/api/DMCAPIException;
    :catchall_4c1
    move-exception v27

    :goto_4c2
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 278
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v28, "finishProgressAll"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v28, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 280
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v28, v0

    #getter for: Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;
    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->this$0:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->uploaderThread:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    .line 277
    throw v27

    .line 232
    .restart local v5       #b:[B
    .restart local v8       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #inputURL:Ljava/net/URL;
    .restart local v17       #isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
    .restart local v20       #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v21       #response:Lorg/apache/http/HttpResponse;
    .restart local v22       #selectedItem:Lcom/samsung/api/ContentItem;
    .restart local v23       #sourceUrl:Ljava/lang/String;
    .restart local v25       #targetUrl:Ljava/lang/String;
    .restart local v26       #url:Ljava/net/URL;
    :catch_507
    move-exception v12

    .line 233
    .local v12, e:Ljava/io/IOException;
    :try_start_508
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_442

    .line 240
    .end local v12           #e:Ljava/io/IOException;
    :catch_50d
    move-exception v12

    .line 241
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_447

    .line 232
    .local v12, e:Ljava/lang/Exception;
    :catch_513
    move-exception v12

    .line 233
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3b3

    .line 232
    .end local v12           #e:Ljava/io/IOException;
    :catch_519
    move-exception v12

    .line 233
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_364

    .line 240
    .end local v12           #e:Ljava/io/IOException;
    :catch_51f
    move-exception v12

    .line 241
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_523
    .catchall {:try_start_508 .. :try_end_523} :catchall_4c1
    .catch Ljava/net/MalformedURLException; {:try_start_508 .. :try_end_523} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_508 .. :try_end_523} :catch_3be
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_508 .. :try_end_523} :catch_448

    goto/16 :goto_369

    .line 277
    .end local v5           #b:[B
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #client:Landroid/net/http/AndroidHttpClient;
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #inputURL:Ljava/net/URL;
    .end local v17           #isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
    .end local v20           #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v22           #selectedItem:Lcom/samsung/api/ContentItem;
    .end local v23           #sourceUrl:Ljava/lang/String;
    .end local v25           #targetUrl:Ljava/lang/String;
    .end local v26           #url:Ljava/net/URL;
    .restart local v7       #bundle:Landroid/os/Bundle;
    :catchall_525
    move-exception v27

    move-object v6, v7

    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto :goto_4c2

    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v10           #count:I
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v11       #count:I
    .restart local v15       #i$:Ljava/util/Iterator;
    :catchall_528
    move-exception v27

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    move-object v6, v7

    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto :goto_4c2

    .end local v10           #count:I
    .restart local v11       #count:I
    :catchall_52c
    move-exception v27

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    goto :goto_4c2

    .line 269
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    :catch_52f
    move-exception v12

    goto/16 :goto_44a

    .end local v10           #count:I
    .restart local v11       #count:I
    :catch_532
    move-exception v12

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    goto/16 :goto_44a

    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v10           #count:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v11       #count:I
    :catch_536
    move-exception v12

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    move-object v7, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    goto/16 :goto_44a

    .line 262
    :catch_53b
    move-exception v12

    goto/16 :goto_3c0

    .end local v10           #count:I
    .restart local v11       #count:I
    :catch_53e
    move-exception v12

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    goto/16 :goto_3c0

    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v10           #count:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v11       #count:I
    :catch_542
    move-exception v12

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    move-object v7, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    goto/16 :goto_3c0

    .line 255
    :catch_547
    move-exception v12

    goto/16 :goto_1f0

    .end local v10           #count:I
    .restart local v11       #count:I
    :catch_54a
    move-exception v12

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    goto/16 :goto_1f0

    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v10           #count:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v11       #count:I
    :catch_54e
    move-exception v12

    move v10, v11

    .end local v11           #count:I
    .restart local v10       #count:I
    move-object v7, v6

    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    goto/16 :goto_1f0

    .line 226
    .restart local v5       #b:[B
    .restart local v8       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #inputURL:Ljava/net/URL;
    .restart local v17       #isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
    .restart local v20       #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v21       #response:Lorg/apache/http/HttpResponse;
    .restart local v22       #selectedItem:Lcom/samsung/api/ContentItem;
    .restart local v23       #sourceUrl:Ljava/lang/String;
    .restart local v24       #statusCode:I
    .restart local v25       #targetUrl:Ljava/lang/String;
    .restart local v26       #url:Ljava/net/URL;
    :catchall_553
    move-exception v27

    move-object v6, v7

    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_438

    .line 223
    .end local v6           #bundle:Landroid/os/Bundle;
    .restart local v7       #bundle:Landroid/os/Bundle;
    :catch_557
    move-exception v12

    move-object v6, v7

    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_3a6

    .end local v5           #b:[B
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #client:Landroid/net/http/AndroidHttpClient;
    .end local v10           #count:I
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #inputURL:Ljava/net/URL;
    .end local v17           #isentity:Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;
    .end local v20           #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v22           #selectedItem:Lcom/samsung/api/ContentItem;
    .end local v23           #sourceUrl:Ljava/lang/String;
    .end local v24           #statusCode:I
    .end local v25           #targetUrl:Ljava/lang/String;
    .end local v26           #url:Ljava/net/URL;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v11       #count:I
    :cond_55b
    move-object v6, v7

    .end local v7           #bundle:Landroid/os/Bundle;
    .restart local v6       #bundle:Landroid/os/Bundle;
    goto/16 :goto_117
.end method
