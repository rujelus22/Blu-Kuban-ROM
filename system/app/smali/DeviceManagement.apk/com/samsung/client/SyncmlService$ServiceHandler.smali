.class final Lcom/samsung/client/SyncmlService$ServiceHandler;
.super Landroid/os/Handler;
.source "SyncmlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/SyncmlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/SyncmlService;


# direct methods
.method public constructor <init>(Lcom/samsung/client/SyncmlService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .parameter "msg"

    .prologue
    .line 160
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMessage before switch "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_392

    .line 312
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "INVALID MESSAGE TYPE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3f
    :goto_3f
    return-void

    .line 164
    :sswitch_40
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMessage EVT_SESS_PROG "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->sessStatus:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->sessErr:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->sessUpd:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 167
    .local v1, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7d
    if-ge v7, v1, :cond_c8

    .line 170
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Lcom/samsung/client/ISyncmlServiceDMCallback;

    sget v13, Lcom/samsung/client/SyncmlService;->sessStatus:I

    sget v14, Lcom/samsung/client/SyncmlService;->sessErr:I

    sget v15, Lcom/samsung/client/SyncmlService;->sessUpd:I

    invoke-interface {v12, v13, v14, v15}, Lcom/samsung/client/ISyncmlServiceDMCallback;->app_session_prog_cb(III)V

    .line 173
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app_session_prog_cb status = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->sessStatus:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", errcode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->sessErr:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_ba} :catch_bd

    .line 167
    :goto_ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 176
    :catch_bd
    move-exception v6

    .line 177
    .local v6, e:Landroid/os/RemoteException;
    const-string v12, "SyncmlService"

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba

    .line 180
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_c8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_3f

    .line 186
    .end local v1           #N:I
    .end local v7           #i:I
    :sswitch_d3
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMessage EVT_DL_PROG current = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->current:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", total = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->total:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 190
    .restart local v1       #N:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_104
    if-ge v7, v1, :cond_14f

    .line 193
    :try_start_106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Lcom/samsung/client/ISyncmlServiceDMCallback;

    sget v13, Lcom/samsung/client/SyncmlService;->id:I

    sget v14, Lcom/samsung/client/SyncmlService;->current:I

    sget v15, Lcom/samsung/client/SyncmlService;->total:I

    invoke-interface {v12, v13, v14, v15}, Lcom/samsung/client/ISyncmlServiceDMCallback;->fumo_dl_progress(III)V

    .line 196
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "valueChanged curr = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->current:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", total = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->total:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_141} :catch_144

    .line 190
    :goto_141
    add-int/lit8 v7, v7, 0x1

    goto :goto_104

    .line 199
    :catch_144
    move-exception v6

    .line 200
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v12, "SyncmlService"

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_141

    .line 203
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_3f

    .line 208
    .end local v1           #N:I
    .end local v7           #i:I
    :sswitch_15a
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UPDATE_FW id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/client/SyncmlService;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 210
    .restart local v1       #N:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_17f
    if-ge v7, v1, :cond_1a2

    .line 213
    :try_start_181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Lcom/samsung/client/ISyncmlServiceDMCallback;

    sget v13, Lcom/samsung/client/SyncmlService;->id:I

    sget-object v14, Lcom/samsung/client/SyncmlService;->description:Ljava/lang/String;

    invoke-interface {v12, v13, v14}, Lcom/samsung/client/ISyncmlServiceDMCallback;->fumo_update_fw(ILjava/lang/String;)V
    :try_end_194
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_194} :catch_197

    .line 210
    :goto_194
    add-int/lit8 v7, v7, 0x1

    goto :goto_17f

    .line 216
    :catch_197
    move-exception v6

    .line 217
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v12, "SyncmlService"

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_194

    .line 220
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_3f

    .line 226
    .end local v1           #N:I
    .end local v7           #i:I
    :sswitch_1ad
    const-string v12, "SyncmlService"

    const-string v13, "OMADM Response incoming!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 228
    .local v2, ar:Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_1d4

    .line 229
    const-string v12, "SyncmlService"

    const-string v13, "AsyncResult Exception Occur!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v12, "SyncmlService"

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v12, v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 233
    :cond_1d4
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v12, :cond_1e1

    .line 234
    const-string v12, "SyncmlService"

    const-string v13, "ar.result == NULL!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 238
    :cond_1e1
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v4, v12

    check-cast v4, [B

    .line 239
    .local v4, buf:[B
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "buf length = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 244
    .local v3, bais:Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    .local v5, dis:Ljava/io/DataInputStream;
    :try_start_20b
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 248
    .local v8, id:B
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 250
    .local v10, len:I
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "len= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-array v9, v10, [B

    .line 252
    .local v9, irr:[B
    invoke-virtual {v5, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 253
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_265
    array-length v12, v9

    if-ge v7, v12, :cond_285

    .line 254
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-byte v14, v9, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    add-int/lit8 v7, v7, 0x1

    goto :goto_265

    .line 256
    :cond_285
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    #calls: Lcom/samsung/client/SyncmlService;->HexBytes2Bytes([B)[B
    invoke-static {v12, v9}, Lcom/samsung/client/SyncmlService;->access$000(Lcom/samsung/client/SyncmlService;[B)[B

    move-result-object v9

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    div-int/lit8 v13, v10, 0x2

    #calls: Lcom/samsung/client/SyncmlService;->processRilResponse(B[BI)V
    invoke-static {v12, v8, v9, v13}, Lcom/samsung/client/SyncmlService;->access$100(Lcom/samsung/client/SyncmlService;B[BI)V
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_296} :catch_298

    goto/16 :goto_3f

    .line 258
    .end local v7           #i:I
    .end local v8           #id:B
    .end local v9           #irr:[B
    .end local v10           #len:I
    :catch_298
    move-exception v6

    .line 259
    .local v6, e:Ljava/lang/Exception;
    const-string v12, "SyncmlService"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 266
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #buf:[B
    .end local v5           #dis:Ljava/io/DataInputStream;
    .end local v6           #e:Ljava/lang/Exception;
    :sswitch_2a4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 267
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_332

    .line 268
    const-string v12, "SyncmlService"

    const-string v13, "AsyncResult Exception Occur!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v12, "SyncmlService"

    const-string v13, "OMADM IPC UNAVAILABLE!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ipc_available = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/samsung/client/SyncmlService;->access$200()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/samsung/client/SyncmlService;->access$200()Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 274
    .restart local v1       #N:I
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "N = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_301
    if-ge v7, v1, :cond_320

    .line 278
    :try_start_303
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Lcom/samsung/client/ISyncmlServiceDMCallback;

    invoke-interface {v12}, Lcom/samsung/client/ISyncmlServiceDMCallback;->ipc_layer_unavailable()V
    :try_end_312
    .catch Landroid/os/RemoteException; {:try_start_303 .. :try_end_312} :catch_315

    .line 275
    :goto_312
    add-int/lit8 v7, v7, 0x1

    goto :goto_301

    .line 281
    :catch_315
    move-exception v6

    .line 282
    .local v6, e:Landroid/os/RemoteException;
    const-string v12, "SyncmlService"

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_312

    .line 285
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/client/SyncmlService$ServiceHandler;->this$0:Lcom/samsung/client/SyncmlService;

    iget-object v12, v12, Lcom/samsung/client/SyncmlService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 286
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/samsung/client/SyncmlService;->access$202(Z)Z

    .line 287
    const/4 v12, 0x1

    sput-boolean v12, Lcom/samsung/client/SyncmlService;->resourcesCleaned:Z

    goto/16 :goto_3f

    .line 291
    .end local v1           #N:I
    .end local v7           #i:I
    :cond_332
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v12, :cond_343

    .line 292
    const-string v12, "SyncmlService"

    const-string v13, "ar.result == NULL! - No answer for MSL response"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/samsung/client/SyncmlService;->access$202(Z)Z

    goto/16 :goto_3f

    .line 298
    :cond_343
    const-string v12, "SyncmlService"

    const-string v13, "ar.result"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/samsung/client/SyncmlService;->access$202(Z)Z

    .line 300
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v4, v12

    check-cast v4, [B

    .line 302
    .restart local v4       #buf:[B
    new-instance v11, Ljava/lang/String;

    const-string v12, ""

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 303
    .local v11, str:Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_35d
    array-length v12, v4

    if-ge v7, v12, :cond_377

    .line 304
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-byte v13, v4, v7

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 303
    add-int/lit8 v7, v7, 0x1

    goto :goto_35d

    .line 307
    :cond_377
    const-string v12, "SyncmlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 161
    nop

    :sswitch_data_392
    .sparse-switch
        0x5 -> :sswitch_40
        0x12 -> :sswitch_d3
        0x67 -> :sswitch_15a
        0x7d0 -> :sswitch_1ad
        0x7d1 -> :sswitch_2a4
    .end sparse-switch
.end method
