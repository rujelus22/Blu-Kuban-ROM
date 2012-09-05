.class Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;
.super Landroid/os/HandlerThread;
.source "UNCSearchResultsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UNCSearchResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UNCDocSaveHandler"
.end annotation


# instance fields
.field lock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "name"

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    .line 787
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    .line 789
    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 767
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->doFinishLoadAttachment(J)V

    return-void
.end method

.method private doFinishLoadAttachment(J)V
    .registers 21
    .parameter "attachmentId"

    .prologue
    .line 808
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/email/activity/UNCSearchResultsList;->access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-static {v13, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 809
    .local v2, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mAccountId:J
    invoke-static {v13}, Lcom/android/email/activity/UNCSearchResultsList;->access$1500(Lcom/android/email/activity/UNCSearchResultsList;)J

    move-result-wide v13

    iget-wide v15, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v13 .. v16}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 825
    .local v3, attachmentUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 826
    .local v6, in:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 829
    .local v9, out:Ljava/io/OutputStream;
    :try_start_1e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/download/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 831
    .local v11, targetDir:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 832
    .local v12, targetDirectory:Ljava/io/File;
    const/4 v13, 0x1

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eq v13, v14, :cond_48

    .line 835
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 837
    :cond_48
    iget-object v13, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/email/activity/UNCSearchResultsList;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 840
    .local v5, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/email/activity/UNCSearchResultsList;->access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 841
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_f9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_63} :catch_b6
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_63} :catch_cb
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_63} :catch_e2

    .line 842
    .end local v9           #out:Ljava/io/OutputStream;
    .local v10, out:Ljava/io/OutputStream;
    :try_start_63
    invoke-static {v6, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 843
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/email/activity/UNCSearchResultsList;->access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0801a3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "/download"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(Ljava/lang/String;I)V
    invoke-static {v13, v14, v15}, Lcom/android/email/activity/UNCSearchResultsList;->access$1600(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;I)V

    .line 859
    new-instance v13, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    #getter for: Lcom/android/email/activity/UNCSearchResultsList;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/email/activity/UNCSearchResultsList;->access$1400(Lcom/android/email/activity/UNCSearchResultsList;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v13, v14, v5, v15}, Lcom/android/email/activity/UNCSearchResultsList$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    :try_end_a2
    .catchall {:try_start_63 .. :try_end_a2} :catchall_113
    .catch Landroid/content/ActivityNotFoundException; {:try_start_63 .. :try_end_a2} :catch_11c
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_a2} :catch_119
    .catch Ljava/lang/NullPointerException; {:try_start_63 .. :try_end_a2} :catch_116

    .line 876
    if-eqz v6, :cond_a7

    .line 878
    :try_start_a4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_10f

    .line 882
    :cond_a7
    :goto_a7
    if-eqz v10, :cond_ac

    .line 884
    :try_start_a9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_111

    :cond_ac
    :goto_ac
    move-object v9, v10

    .line 890
    .end local v5           #file:Ljava/io/File;
    .end local v10           #out:Ljava/io/OutputStream;
    .end local v11           #targetDir:Ljava/lang/String;
    .end local v12           #targetDirectory:Ljava/io/File;
    .restart local v9       #out:Ljava/io/OutputStream;
    :cond_ad
    :goto_ad
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const/4 v14, 0x0

    #setter for: Lcom/android/email/activity/UNCSearchResultsList;->mode:I
    invoke-static {v13, v14}, Lcom/android/email/activity/UNCSearchResultsList;->access$702(Lcom/android/email/activity/UNCSearchResultsList;I)I

    .line 892
    return-void

    .line 863
    :catch_b6
    move-exception v4

    .line 864
    .local v4, e:Landroid/content/ActivityNotFoundException;
    :goto_b7
    :try_start_b7
    const-string v13, "UNCSearchResultsList"

    const-string v14, "ActivityNotFoundException1"

    invoke-static {v13, v14}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_f9

    .line 876
    if-eqz v6, :cond_c3

    .line 878
    :try_start_c0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_109

    .line 882
    :cond_c3
    :goto_c3
    if-eqz v9, :cond_ad

    .line 884
    :try_start_c5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_ad

    .line 885
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :catch_c9
    move-exception v13

    goto :goto_ad

    .line 866
    :catch_cb
    move-exception v7

    .line 867
    .local v7, ioe:Ljava/io/IOException;
    :goto_cc
    :try_start_cc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v14, 0x7f08008e

    const/4 v15, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V
    invoke-static {v13, v14, v15}, Lcom/android/email/activity/UNCSearchResultsList;->access$1700(Lcom/android/email/activity/UNCSearchResultsList;II)V
    :try_end_d7
    .catchall {:try_start_cc .. :try_end_d7} :catchall_f9

    .line 876
    if-eqz v6, :cond_dc

    .line 878
    :try_start_d9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_10b

    .line 882
    :cond_dc
    :goto_dc
    if-eqz v9, :cond_ad

    .line 884
    :try_start_de
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_c9

    goto :goto_ad

    .line 869
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_e2
    move-exception v8

    .line 870
    .local v8, npe:Ljava/lang/NullPointerException;
    :goto_e3
    :try_start_e3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    const v14, 0x7f08008e

    const/4 v15, 0x1

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V
    invoke-static {v13, v14, v15}, Lcom/android/email/activity/UNCSearchResultsList;->access$1700(Lcom/android/email/activity/UNCSearchResultsList;II)V
    :try_end_ee
    .catchall {:try_start_e3 .. :try_end_ee} :catchall_f9

    .line 876
    if-eqz v6, :cond_f3

    .line 878
    :try_start_f0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_10d

    .line 882
    :cond_f3
    :goto_f3
    if-eqz v9, :cond_ad

    .line 884
    :try_start_f5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_c9

    goto :goto_ad

    .line 876
    .end local v8           #npe:Ljava/lang/NullPointerException;
    :catchall_f9
    move-exception v13

    :goto_fa
    if-eqz v6, :cond_ff

    .line 878
    :try_start_fc
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_ff} :catch_105

    .line 882
    :cond_ff
    :goto_ff
    if-eqz v9, :cond_104

    .line 884
    :try_start_101
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_104} :catch_107

    .line 876
    :cond_104
    :goto_104
    throw v13

    .line 879
    :catch_105
    move-exception v14

    goto :goto_ff

    .line 885
    :catch_107
    move-exception v14

    goto :goto_104

    .line 879
    .restart local v4       #e:Landroid/content/ActivityNotFoundException;
    :catch_109
    move-exception v13

    goto :goto_c3

    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    .restart local v7       #ioe:Ljava/io/IOException;
    :catch_10b
    move-exception v13

    goto :goto_dc

    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v8       #npe:Ljava/lang/NullPointerException;
    :catch_10d
    move-exception v13

    goto :goto_f3

    .end local v8           #npe:Ljava/lang/NullPointerException;
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #out:Ljava/io/OutputStream;
    .restart local v11       #targetDir:Ljava/lang/String;
    .restart local v12       #targetDirectory:Ljava/io/File;
    :catch_10f
    move-exception v13

    goto :goto_a7

    .line 885
    :catch_111
    move-exception v13

    goto :goto_ac

    .line 876
    :catchall_113
    move-exception v13

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_fa

    .line 869
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :catch_116
    move-exception v8

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_e3

    .line 866
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :catch_119
    move-exception v7

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_cc

    .line 863
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :catch_11c
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_b7
.end method


# virtual methods
.method public finishLoadAttachment(J)V
    .registers 6
    .parameter "attachmentId"

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, msg:Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 795
    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 796
    :try_start_10
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_24

    if-nez v1, :cond_19

    .line 798
    :try_start_14
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_27

    .line 802
    :cond_19
    :goto_19
    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_24

    .line 803
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_23

    .line 804
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 805
    :cond_23
    return-void

    .line 802
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 799
    :catch_27
    move-exception v1

    goto :goto_19
.end method

.method protected onLooperPrepared()V
    .registers 3

    .prologue
    .line 774
    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 775
    :try_start_3
    new-instance v0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler$1;-><init>(Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;)V

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->mHandler:Landroid/os/Handler;

    .line 782
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 783
    monitor-exit v1

    .line 784
    return-void

    .line 783
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method
