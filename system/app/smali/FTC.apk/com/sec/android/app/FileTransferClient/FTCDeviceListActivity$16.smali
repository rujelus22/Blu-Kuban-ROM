.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeUriVcard(Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

.field final synthetic val$pathFinal:Ljava/lang/String;

.field final synthetic val$uriFinal:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1905
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iput-object p2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;->val$pathFinal:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;->val$uriFinal:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1909
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;->val$pathFinal:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1912
    .local v9, vcardFile:Ljava/io/File;
    const/4 v8, 0x1

    .line 1913
    .local v8, success:Z
    const/4 v5, 0x0

    .line 1914
    .local v5, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1917
    .local v3, fStream:Ljava/io/FileOutputStream;
    :try_start_a
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :changeUriVcard 1"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;->val$uriFinal:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1919
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :changeUriVcard 2"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_34

    .line 1923
    const/4 v8, 0x0

    .line 2024
    :cond_33
    :goto_33
    return-void

    .line 1927
    :cond_34
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :changeUriVcard 3"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_44

    .line 1929
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1931
    :cond_44
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :changeUriVcard 4"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_50} :catch_129

    .line 1933
    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .local v4, fStream:Ljava/io/FileOutputStream;
    :try_start_50
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :changeUriVcard 5"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5e} :catch_9b

    move-result v10

    if-eqz v10, :cond_6f

    .line 1937
    const/4 v8, 0x0

    .line 1938
    if-eqz v4, :cond_6d

    .line 1942
    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_69
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_9b

    .line 1943
    const/4 v3, 0x0

    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    goto :goto_33

    .line 1945
    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .restart local v4       #fStream:Ljava/io/FileOutputStream;
    :catch_69
    move-exception v2

    .line 1947
    .local v2, e:Ljava/io/IOException;
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_6d
    :goto_6d
    move-object v3, v4

    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    goto :goto_33

    .line 1952
    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .restart local v4       #fStream:Ljava/io/FileOutputStream;
    :cond_6f
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :changeUriVcard 6"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/16 v10, 0x7d0

    new-array v0, v10, [B

    .line 1955
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 1957
    .local v1, bytesRead:I
    :cond_7b
    :goto_7b
    const/4 v10, 0x0

    const/16 v11, 0x7d0

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_10b

    .line 1959
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8b} :catch_9b

    move-result v10

    if-eqz v10, :cond_eb

    .line 1961
    const/4 v8, 0x0

    .line 1962
    if-eqz v4, :cond_6d

    .line 1966
    :try_start_91
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_96
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_9b

    .line 1967
    const/4 v3, 0x0

    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    goto :goto_33

    .line 1969
    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .restart local v4       #fStream:Ljava/io/FileOutputStream;
    :catch_96
    move-exception v2

    .line 1971
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_97
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_6d

    .line 1985
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    .end local v2           #e:Ljava/io/IOException;
    :catch_9b
    move-exception v2

    move-object v3, v4

    .line 1987
    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    :goto_9d
    const-string v10, "[FT]-Client"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FTCDeviceListActivity :changeUriVcard Thread Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const/4 v8, 0x0

    .line 1991
    .end local v2           #e:Ljava/lang/Exception;
    :goto_b6
    if-eqz v8, :cond_114

    .line 1993
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.FTC_SAVEFILE_SUCCESS"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :VCF Create Success"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :goto_c6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    .local v7, stringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    const-string v10, "StringUri"

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2006
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-virtual {v10, v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2011
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v11, 0x3f5

    invoke-virtual {v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->removeDialog(I)V

    .line 2012
    if-eqz v3, :cond_33

    .line 2016
    :try_start_e5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_123

    .line 2017
    const/4 v3, 0x0

    goto/16 :goto_33

    .line 1976
    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #stringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v0       #buf:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #fStream:Ljava/io/FileOutputStream;
    :cond_eb
    if-lez v1, :cond_7b

    .line 1978
    const/4 v10, 0x0

    :try_start_ee
    invoke-virtual {v4, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1979
    const-string v10, "[FT]-Client"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FTCDeviceListActivity :fStream.write:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b

    .line 1982
    :cond_10b
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :changeUriVcard 7"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_112} :catch_9b

    move-object v3, v4

    .line 1989
    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    goto :goto_b6

    .line 1998
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    :cond_114
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.FTC_SAVEFILE_FAIL"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1999
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v10, "[FT]-Client"

    const-string v11, "FTCDeviceListActivity :VCF Create Fail"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 2019
    .restart local v7       #stringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :catch_123
    move-exception v2

    .line 2021
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_33

    .line 1985
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #stringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :catch_129
    move-exception v2

    goto/16 :goto_9d
.end method
