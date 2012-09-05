.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeUriVcardList(Ljava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field success:Z

.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

.field uriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iput-object p2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->val$uris:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->success:Z

    .line 1721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->uriList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 1725
    const/16 v16, 0x0

    .line 1726
    .local v16, tmpCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->val$uris:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_167

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Parcelable;

    .line 1728
    .local v17, uri:Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getFilesDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 1729
    .local v9, filePath:Ljava/lang/String;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyymmdd_hhmmss"

    sget-object v21, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1730
    .local v10, formatter:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1731
    .local v4, currentTime:Ljava/util/Date;
    invoke-virtual {v10, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1732
    .local v5, dTime:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/VCard_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".vcf"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, pathFinal:Ljava/lang/String;
    move-object/from16 v18, v17

    .line 1733
    check-cast v18, Landroid/net/Uri;

    .line 1734
    .local v18, uriFinal:Landroid/net/Uri;
    add-int/lit8 v16, v16, 0x1

    .line 1735
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1738
    .local v19, vcardFile:Ljava/io/File;
    const/4 v12, 0x0

    .line 1739
    .local v12, iStream:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1743
    .local v7, fStream:Ljava/io/FileOutputStream;
    :try_start_80
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :changeUriVcard 1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 1745
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :changeUriVcard 2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v20

    if-eqz v20, :cond_b7

    .line 1749
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->success:Z

    .line 1861
    .end local v4           #currentTime:Ljava/util/Date;
    .end local v5           #dTime:Ljava/lang/String;
    .end local v7           #fStream:Ljava/io/FileOutputStream;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #formatter:Ljava/text/SimpleDateFormat;
    .end local v12           #iStream:Ljava/io/InputStream;
    .end local v14           #pathFinal:Ljava/lang/String;
    .end local v17           #uri:Landroid/os/Parcelable;
    .end local v18           #uriFinal:Landroid/net/Uri;
    .end local v19           #vcardFile:Ljava/io/File;
    :goto_b6
    return-void

    .line 1753
    .restart local v4       #currentTime:Ljava/util/Date;
    .restart local v5       #dTime:Ljava/lang/String;
    .restart local v7       #fStream:Ljava/io/FileOutputStream;
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v12       #iStream:Ljava/io/InputStream;
    .restart local v14       #pathFinal:Ljava/lang/String;
    .restart local v17       #uri:Landroid/os/Parcelable;
    .restart local v18       #uriFinal:Landroid/net/Uri;
    .restart local v19       #vcardFile:Ljava/io/File;
    :cond_b7
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :changeUriVcard 3"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_c7

    .line 1755
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 1757
    :cond_c7
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :changeUriVcard 4"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_d5} :catch_1fc

    .line 1759
    .end local v7           #fStream:Ljava/io/FileOutputStream;
    .local v8, fStream:Ljava/io/FileOutputStream;
    :try_start_d5
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :changeUriVcard 5"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v20

    if-eqz v20, :cond_fb

    .line 1763
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->success:Z
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_ee} :catch_135

    .line 1764
    if-eqz v8, :cond_f9

    .line 1768
    :try_start_f0
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f3} :catch_135

    .line 1769
    const/4 v7, 0x0

    .end local v8           #fStream:Ljava/io/FileOutputStream;
    .restart local v7       #fStream:Ljava/io/FileOutputStream;
    goto :goto_b6

    .line 1771
    .end local v7           #fStream:Ljava/io/FileOutputStream;
    .restart local v8       #fStream:Ljava/io/FileOutputStream;
    :catch_f5
    move-exception v6

    .line 1773
    .local v6, e:Ljava/io/IOException;
    :try_start_f6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6           #e:Ljava/io/IOException;
    :cond_f9
    :goto_f9
    move-object v7, v8

    .end local v8           #fStream:Ljava/io/FileOutputStream;
    .restart local v7       #fStream:Ljava/io/FileOutputStream;
    goto :goto_b6

    .line 1778
    .end local v7           #fStream:Ljava/io/FileOutputStream;
    .restart local v8       #fStream:Ljava/io/FileOutputStream;
    :cond_fb
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :changeUriVcard 6"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/16 v20, 0x7d0

    move/from16 v0, v20

    new-array v2, v0, [B

    .line 1781
    .local v2, buf:[B
    const/4 v3, 0x0

    .line 1783
    .local v3, bytesRead:I
    :cond_109
    :goto_109
    const/16 v20, 0x0

    const/16 v21, 0x7d0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1cc

    .line 1785
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v20

    if-eqz v20, :cond_1a7

    .line 1787
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->success:Z
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_129} :catch_135

    .line 1788
    if-eqz v8, :cond_f9

    .line 1792
    :try_start_12b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_130
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_135

    .line 1793
    const/4 v7, 0x0

    .end local v8           #fStream:Ljava/io/FileOutputStream;
    .restart local v7       #fStream:Ljava/io/FileOutputStream;
    goto :goto_b6

    .line 1795
    .end local v7           #fStream:Ljava/io/FileOutputStream;
    .restart local v8       #fStream:Ljava/io/FileOutputStream;
    :catch_130
    move-exception v6

    .line 1797
    .restart local v6       #e:Ljava/io/IOException;
    :try_start_131
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_135

    goto :goto_f9

    .line 1811
    .end local v2           #buf:[B
    .end local v3           #bytesRead:I
    .end local v6           #e:Ljava/io/IOException;
    :catch_135
    move-exception v6

    move-object v7, v8

    .line 1813
    .end local v8           #fStream:Ljava/io/FileOutputStream;
    .local v6, e:Ljava/lang/Exception;
    .restart local v7       #fStream:Ljava/io/FileOutputStream;
    :goto_137
    const-string v20, "[FT]-Client"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "FTCDeviceListActivity :changeUriVcard Thread Exception : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->success:Z

    .line 1816
    .end local v6           #e:Ljava/lang/Exception;
    :goto_159
    if-eqz v7, :cond_15f

    .line 1820
    :try_start_15b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_1d5

    .line 1821
    const/4 v7, 0x0

    .line 1829
    :cond_15f
    :goto_15f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->success:Z

    move/from16 v20, v0

    if-nez v20, :cond_1da

    .line 1840
    .end local v4           #currentTime:Ljava/util/Date;
    .end local v5           #dTime:Ljava/lang/String;
    .end local v7           #fStream:Ljava/io/FileOutputStream;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #formatter:Ljava/text/SimpleDateFormat;
    .end local v12           #iStream:Ljava/io/InputStream;
    .end local v14           #pathFinal:Ljava/lang/String;
    .end local v17           #uri:Landroid/os/Parcelable;
    .end local v18           #uriFinal:Landroid/net/Uri;
    .end local v19           #vcardFile:Ljava/io/File;
    :cond_167
    const/4 v13, 0x0

    .line 1841
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->success:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1eb

    .line 1843
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-string v20, "android.intent.action.FTC_SAVEFILE_SUCCESS"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :VCF Create Success:"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :goto_180
    const-string v20, "StringUri"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->uriList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x3f5

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->removeDialog(I)V

    goto/16 :goto_b6

    .line 1802
    .end local v13           #intent:Landroid/content/Intent;
    .restart local v2       #buf:[B
    .restart local v3       #bytesRead:I
    .restart local v4       #currentTime:Ljava/util/Date;
    .restart local v5       #dTime:Ljava/lang/String;
    .restart local v8       #fStream:Ljava/io/FileOutputStream;
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v12       #iStream:Ljava/io/InputStream;
    .restart local v14       #pathFinal:Ljava/lang/String;
    .restart local v17       #uri:Landroid/os/Parcelable;
    .restart local v18       #uriFinal:Landroid/net/Uri;
    .restart local v19       #vcardFile:Ljava/io/File;
    :cond_1a7
    if-lez v3, :cond_109

    .line 1804
    const/16 v20, 0x0

    :try_start_1ab
    move/from16 v0, v20

    invoke-virtual {v8, v2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1805
    const-string v20, "[FT]-Client"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "FTCDeviceListActivity :fStream.write:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_109

    .line 1808
    :cond_1cc
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :changeUriVcard 7"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1d3} :catch_135

    move-object v7, v8

    .line 1815
    .end local v8           #fStream:Ljava/io/FileOutputStream;
    .restart local v7       #fStream:Ljava/io/FileOutputStream;
    goto :goto_159

    .line 1823
    .end local v2           #buf:[B
    .end local v3           #bytesRead:I
    :catch_1d5
    move-exception v6

    .line 1825
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15f

    .line 1835
    .end local v6           #e:Ljava/io/IOException;
    :cond_1da
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 1836
    .local v15, result:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;->uriList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1848
    .end local v4           #currentTime:Ljava/util/Date;
    .end local v5           #dTime:Ljava/lang/String;
    .end local v7           #fStream:Ljava/io/FileOutputStream;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #formatter:Ljava/text/SimpleDateFormat;
    .end local v12           #iStream:Ljava/io/InputStream;
    .end local v14           #pathFinal:Ljava/lang/String;
    .end local v15           #result:Landroid/net/Uri;
    .end local v17           #uri:Landroid/os/Parcelable;
    .end local v18           #uriFinal:Landroid/net/Uri;
    .end local v19           #vcardFile:Ljava/io/File;
    .restart local v13       #intent:Landroid/content/Intent;
    :cond_1eb
    new-instance v13, Landroid/content/Intent;

    .end local v13           #intent:Landroid/content/Intent;
    const-string v20, "android.intent.action.FTC_SAVEFILE_FAIL"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1849
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v20, "[FT]-Client"

    const-string v21, "FTCDeviceListActivity :VCF Create Fail:"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    .line 1811
    .end local v13           #intent:Landroid/content/Intent;
    .restart local v4       #currentTime:Ljava/util/Date;
    .restart local v5       #dTime:Ljava/lang/String;
    .restart local v7       #fStream:Ljava/io/FileOutputStream;
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v12       #iStream:Ljava/io/InputStream;
    .restart local v14       #pathFinal:Ljava/lang/String;
    .restart local v17       #uri:Landroid/os/Parcelable;
    .restart local v18       #uriFinal:Landroid/net/Uri;
    .restart local v19       #vcardFile:Ljava/io/File;
    :catch_1fc
    move-exception v6

    goto/16 :goto_137
.end method
