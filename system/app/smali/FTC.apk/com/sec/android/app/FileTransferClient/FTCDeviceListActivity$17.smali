.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeUriToFileUri(Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$uriFinal:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2087
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iput-object p2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->val$uriFinal:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 2091
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->val$fileName:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2094
    .local v7, mediaFile:Ljava/io/File;
    const/4 v8, 0x1

    .line 2095
    .local v8, success:Z
    const/4 v5, 0x0

    .line 2096
    .local v5, iStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 2099
    .local v3, fStream:Ljava/io/FileOutputStream;
    :try_start_a
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->val$uriFinal:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 2101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 2103
    const/4 v8, 0x0

    .line 2179
    :goto_25
    return-void

    .line 2107
    :cond_26
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 2108
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2110
    :cond_2f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_109

    .line 2112
    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .local v4, fStream:Ljava/io/FileOutputStream;
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 2114
    const/4 v8, 0x0

    .line 2115
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2116
    const/4 v3, 0x0

    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    goto :goto_25

    .line 2120
    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .restart local v4       #fStream:Ljava/io/FileOutputStream;
    :cond_44
    const/16 v9, 0x7d0

    new-array v0, v9, [B

    .line 2121
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 2123
    .local v1, bytesRead:I
    :cond_49
    :goto_49
    const/4 v9, 0x0

    const/16 v10, 0x7d0

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_e0

    .line 2125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-eqz v9, :cond_62

    .line 2127
    const/4 v8, 0x0

    .line 2128
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2129
    const/4 v3, 0x0

    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    goto :goto_25

    .line 2133
    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .restart local v4       #fStream:Ljava/io/FileOutputStream;
    :cond_62
    if-lez v1, :cond_49

    .line 2135
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2136
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCDeviceListActivity :fStream.write:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_80} :catch_81

    goto :goto_49

    .line 2141
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    :catch_81
    move-exception v2

    move-object v3, v4

    .line 2143
    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    :goto_83
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCDeviceListActivity :changeUriVcard Thread Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const/4 v8, 0x0

    .line 2148
    .end local v2           #e:Ljava/lang/Exception;
    :goto_9c
    if-eqz v3, :cond_a2

    .line 2151
    :try_start_9e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_e2

    .line 2152
    const/4 v3, 0x0

    .line 2160
    :cond_a2
    :goto_a2
    if-eqz v8, :cond_e7

    .line 2162
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.FTC_SAVEFILE_SUCCESS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2163
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCDeviceListActivity :MEDIA Create Success:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->val$uriFinal:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :goto_c5
    const-string v9, "StringUri"

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2173
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-virtual {v9, v6}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2178
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const/16 v10, 0x3f5

    invoke-virtual {v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->removeDialog(I)V

    goto/16 :goto_25

    .end local v3           #fStream:Ljava/io/FileOutputStream;
    .end local v6           #intent:Landroid/content/Intent;
    .restart local v0       #buf:[B
    .restart local v1       #bytesRead:I
    .restart local v4       #fStream:Ljava/io/FileOutputStream;
    :cond_e0
    move-object v3, v4

    .line 2145
    .end local v4           #fStream:Ljava/io/FileOutputStream;
    .restart local v3       #fStream:Ljava/io/FileOutputStream;
    goto :goto_9c

    .line 2154
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    :catch_e2
    move-exception v2

    .line 2156
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 2167
    .end local v2           #e:Ljava/io/IOException;
    :cond_e7
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.FTC_SAVEFILE_FAIL"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2168
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCDeviceListActivity :MEDIA Create Fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;->val$uriFinal:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 2141
    .end local v6           #intent:Landroid/content/Intent;
    :catch_109
    move-exception v2

    goto/16 :goto_83
.end method
