.class Lcom/sec/android/app/FileTransferServer/FTSService$2;
.super Landroid/os/Handler;
.source "FTSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/FTSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/FTSService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/FTSService;)V
    .registers 2
    .parameter

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 1175
    const/4 v3, 0x0

    .line 1176
    .local v3, sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    const/4 v2, 0x0

    .line 1177
    .local v2, item:Lcom/samsung/android/application/fileshare/api/TransferItem;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_202

    .line 1297
    :goto_7
    return-void

    .line 1182
    :sswitch_8
    :try_start_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/application/fileshare/api/FileShareException;

    .line 1183
    .local v1, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Handler:FILE_SHARE_ERROR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService : stop Device :FILE_SHARE_ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V
    invoke-static {v4}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$100(Lcom/sec/android/app/FileTransferServer/FTSService;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_35

    goto :goto_7

    .line 1187
    .end local v1           #e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :catch_35
    move-exception v1

    .line 1189
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_SHARE_ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1193
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_4f
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :Handler : FILE_SHARE_DEVICE_START"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1196
    :sswitch_57
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :Handler : FILE_SHARE_DEVICE_STOP - success stack is stop"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1203
    :sswitch_5f
    :try_start_5f
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :Handler : FILE_SHARE_CREATE_SESSION_REQUEST"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-object v3, v0

    .line 1205
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    invoke-static {v4, v3}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1000(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_71} :catch_72

    goto :goto_7

    .line 1207
    :catch_72
    move-exception v1

    .line 1209
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_SHARE_CREATE_SESSION_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1215
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_8d
    :try_start_8d
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :Handler : FILE_SHARE_CLOSE_SESSION_REQUEST"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-object v3, v0

    .line 1217
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    const/4 v5, 0x0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionClosed(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V
    invoke-static {v4, v3, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$800(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_a0} :catch_a2

    goto/16 :goto_7

    .line 1219
    :catch_a2
    move-exception v1

    .line 1221
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_SHARE_CLOSE_SESSION_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1227
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_bd
    :try_start_bd
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-object v3, v0

    .line 1228
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Handler : FILE_SHARE_CANCEL_SESSION_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    const/16 v5, 0x5de

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_sender(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    invoke-static {v4, v3, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$900(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_e6} :catch_e8

    goto/16 :goto_7

    .line 1231
    :catch_e8
    move-exception v1

    .line 1233
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_SHARE_CANCEL_SESSION_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1240
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_103
    :try_start_103
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :Handler : FILE_TRANSFER_REQUESTED"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/application/fileshare/api/TransferItem;

    move-object v2, v0

    .line 1242
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFileReady(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    invoke-static {v4, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1100(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_115} :catch_117

    goto/16 :goto_7

    .line 1244
    :catch_117
    move-exception v1

    .line 1246
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_TRANSFER_REQUESTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1252
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_132
    :try_start_132
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :Handler : FILE_TRANSFER_STARTED"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/application/fileshare/api/TransferItem;

    move-object v2, v0

    .line 1254
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFileStart(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    invoke-static {v4, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1200(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_144} :catch_146

    goto/16 :goto_7

    .line 1256
    :catch_146
    move-exception v1

    .line 1258
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_TRANSFER_STARTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1264
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_161
    :try_start_161
    const-string v4, "[FT]-Server"

    const-string v5, "FTSService :Handler : FILE_TRANSFER_FINISHED"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/application/fileshare/api/TransferItem;

    move-object v2, v0

    .line 1266
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFileDone(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    invoke-static {v4, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1300(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_173} :catch_175

    goto/16 :goto_7

    .line 1268
    :catch_175
    move-exception v1

    .line 1270
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_TRANSFER_FINISHED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1276
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_190
    :try_start_190
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/application/fileshare/api/TransferItem;

    move-object v2, v0

    .line 1277
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionFileProgress(Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    invoke-static {v4, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1400(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_19b} :catch_19d

    goto/16 :goto_7

    .line 1279
    :catch_19d
    move-exception v1

    .line 1281
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_TRANSFER_PROGRESS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1287
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_1b8
    :try_start_1b8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/samsung/android/application/fileshare/api/TransferItem;

    move-object v2, v0

    .line 1288
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Handler : FILE_TRANSFER_FAILED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/api/TransferItem;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v4, p0, Lcom/sec/android/app/FileTransferServer/FTSService$2;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    const/16 v5, 0x5df

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_item(Lcom/samsung/android/application/fileshare/api/TransferItem;I)V
    invoke-static {v4, v2, v5}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1500(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/TransferItem;I)V
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1e5} :catch_1e7

    goto/16 :goto_7

    .line 1291
    :catch_1e7
    move-exception v1

    .line 1293
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "[FT]-Server"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSService :Exception on handler : FILE_TRANSFER_FAILED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1177
    :sswitch_data_202
    .sparse-switch
        0x1b59 -> :sswitch_4f
        0x1b5a -> :sswitch_57
        0x1b5c -> :sswitch_5f
        0x1b5d -> :sswitch_8d
        0x1b5e -> :sswitch_bd
        0x1b5f -> :sswitch_103
        0x1b60 -> :sswitch_132
        0x1b61 -> :sswitch_161
        0x1b62 -> :sswitch_1b8
        0x1b63 -> :sswitch_190
        0x270f -> :sswitch_8
    .end sparse-switch
.end method
