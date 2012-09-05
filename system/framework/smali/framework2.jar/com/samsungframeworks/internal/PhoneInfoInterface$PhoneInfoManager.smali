.class Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;
.super Landroid/os/Handler;
.source "PhoneInfoInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/PhoneInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneInfoManager"
.end annotation


# instance fields
.field private mDataconnection:[I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private property:Ljava/lang/String;

.field private test:I

.field final synthetic this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

.field private waiting:I


# direct methods
.method public constructor <init>(Lcom/samsungframeworks/internal/PhoneInfoInterface;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    .line 1187
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1160
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waiting:I

    .line 1162
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->test:I

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1188
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1190
    return-void
.end method


# virtual methods
.method getDataProfileReturnValue()I
    .registers 3

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mDataconnection:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method getPropertyValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->property:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 1199
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_e8

    .line 1257
    :cond_6
    :goto_6
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->notifyTo()V

    .line 1258
    return-void

    .line 1201
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1203
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2f

    .line 1204
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ril get fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iput-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->property:Ljava/lang/String;

    goto :goto_6

    .line 1208
    :cond_2f
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    #getter for: Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I
    invoke-static {v2}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->access$000(Lcom/samsungframeworks/internal/PhoneInfoInterface;)I

    move-result v2

    if-eq v1, v2, :cond_5f

    .line 1209
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd sync fail in handle Message, you miss a commands."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->this$0:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    #getter for: Lcom/samsungframeworks/internal/PhoneInfoInterface;->curCmd:I
    invoke-static {v3}, Lcom/samsungframeworks/internal/PhoneInfoInterface;->access$000(Lcom/samsungframeworks/internal/PhoneInfoInterface;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iput-object v4, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->property:Ljava/lang/String;

    .line 1214
    :cond_5f
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->property:Ljava/lang/String;

    goto :goto_6

    .line 1218
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1220
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 1221
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ril set fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1227
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1229
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_b9

    .line 1230
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data connection get fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mDataconnection:[I

    .line 1232
    iget-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mDataconnection:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_6

    .line 1236
    :cond_b9
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->mDataconnection:[I

    goto/16 :goto_6

    .line 1240
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_c3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1242
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 1243
    const-string v1, "PhoneInfoInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data connection set fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1199
    nop

    :pswitch_data_e8
    .packed-switch -0x1
        :pswitch_6
        :pswitch_6
        :pswitch_a
        :pswitch_66
        :pswitch_8a
        :pswitch_c3
        :pswitch_6
    .end packed-switch
.end method

.method declared-synchronized notifyTo()V
    .registers 3

    .prologue
    .line 1180
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waiting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waiting:I

    .line 1182
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 1184
    :cond_c
    monitor-exit p0

    return-void

    .line 1180
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 1

    .prologue
    .line 1194
    return-void
.end method

.method declared-synchronized waitResponse(I)V
    .registers 4
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1175
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/samsungframeworks/internal/PhoneInfoInterface$PhoneInfoManager;->waiting:I

    .line 1176
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 1177
    monitor-exit p0

    return-void

    .line 1175
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
