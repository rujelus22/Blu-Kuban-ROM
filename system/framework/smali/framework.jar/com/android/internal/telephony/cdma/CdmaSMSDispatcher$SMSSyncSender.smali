.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;
.super Landroid/os/Handler;
.source "CdmaSMSDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMSSyncSender"
.end annotation


# static fields
.field static final EVENT_SENT:I = 0x1


# instance fields
.field mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private property:Ljava/lang/String;

.field private smsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 5
    .parameter
    .parameter "looper"
    .parameter "dispatcher"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 802
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    .line 803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    .line 804
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 805
    return-void
.end method


# virtual methods
.method public addSendQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 9
    .parameter "tracker"

    .prologue
    const/4 v6, 0x1

    .line 814
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSendQueue 1 : smsQueue.size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-ne v3, v6, :cond_74

    .line 817
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 818
    .local v0, map:Ljava/util/HashMap;
    const-string/jumbo v3, "pdu"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 820
    .local v1, pdu:[B
    const-string v3, "CDMA"

    const-string v4, "SMS send"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 823
    .local v2, reply:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 824
    :try_start_43
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v3, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSendQueue 2 : smsQueue.size ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_71

    .line 827
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 836
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:[B
    .end local v2           #reply:Landroid/os/Message;
    :goto_70
    return-void

    .line 826
    .restart local v0       #map:Ljava/util/HashMap;
    .restart local v1       #pdu:[B
    .restart local v2       #reply:Landroid/os/Message;
    :catchall_71
    move-exception v3

    :try_start_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v3

    .line 831
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:[B
    .end local v2           #reply:Landroid/os/Message;
    :cond_74
    const-string v3, "CDMA"

    const-string v4, "SMS add"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 833
    :try_start_7e
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    monitor-exit v4

    goto :goto_70

    :catchall_85
    move-exception v3

    monitor-exit v4
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_85

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 841
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 843
    .local v1, ar:Landroid/os/AsyncResult;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_1d4

    .line 935
    const-string v7, "CDMA"

    const-string v8, "handleMessage: default"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_13
    return-void

    .line 845
    :pswitch_14
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 847
    .local v6, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 848
    .local v5, reply:Landroid/os/Message;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 849
    const-string v7, "CDMA"

    const-string/jumbo v8, "sent the SMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_12a

    .line 852
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #ar:Landroid/os/AsyncResult;
    check-cast v1, Landroid/os/AsyncResult;

    .line 854
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const-string v8, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_12a

    .line 859
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v7, :cond_8c

    .line 860
    iput v10, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 861
    iget-object v3, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 862
    .local v3, map:Ljava/util/HashMap;
    const-string/jumbo v7, "pdu"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v4, v7

    check-cast v4, [B

    .line 864
    .local v4, pdu:[B
    const-string v7, "CDMA"

    const-string/jumbo v8, "retry the current SMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0, v10, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 866
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_13

    .line 870
    .end local v3           #map:Ljava/util/HashMap;
    .end local v4           #pdu:[B
    :cond_8c
    const-string v7, "CDMA"

    const-string v8, "SMS time out in CdmaSMSDispatcher"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 875
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 876
    :cond_9b
    :goto_9b
    :try_start_9b
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_124

    .line 877
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage 1 : smsQueue.size ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_9b .. :try_end_c1} :catchall_127

    .line 879
    :try_start_c1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 880
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9b

    .line 882
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v6, v0

    .line 883
    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 884
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 885
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iput-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 886
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iput-object v6, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 887
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    iput-object v9, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 890
    const-string v7, "CDMA"

    const-string/jumbo v9, "mark the next SMS time out failed"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z
    :try_end_10a
    .catchall {:try_start_c1 .. :try_end_10a} :catchall_127
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c1 .. :try_end_10a} :catch_10b

    goto :goto_9b

    .line 894
    :catch_10b
    move-exception v2

    .line 896
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_10c
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SEND_SMS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_124
    monitor-exit v8

    goto/16 :goto_13

    :catchall_127
    move-exception v7

    monitor-exit v8
    :try_end_129
    .catchall {:try_start_10c .. :try_end_129} :catchall_127

    throw v7

    .line 906
    :cond_12a
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 908
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 909
    :try_start_132
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage 2 : smsQueue.size ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_155
    .catchall {:try_start_132 .. :try_end_155} :catchall_1b7

    move-result v7

    if-nez v7, :cond_1b4

    .line 913
    :try_start_158
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 914
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage 3 : smsQueue.size ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b4

    .line 917
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v6, v0

    .line 918
    iget-object v3, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 919
    .restart local v3       #map:Ljava/util/HashMap;
    const-string/jumbo v7, "pdu"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v4, v0

    .line 921
    .restart local v4       #pdu:[B
    const-string v7, "CDMA"

    const-string/jumbo v9, "send the next SMS in handleMessage"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 923
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_1b4
    .catchall {:try_start_158 .. :try_end_1b4} :catchall_1b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_158 .. :try_end_1b4} :catch_1ba

    .line 931
    .end local v3           #map:Ljava/util/HashMap;
    .end local v4           #pdu:[B
    :cond_1b4
    :goto_1b4
    :try_start_1b4
    monitor-exit v8

    goto/16 :goto_13

    :catchall_1b7
    move-exception v7

    monitor-exit v8
    :try_end_1b9
    .catchall {:try_start_1b4 .. :try_end_1b9} :catchall_1b7

    throw v7

    .line 926
    :catch_1ba
    move-exception v2

    .line 928
    .restart local v2       #e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1bb
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SEND_SMS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d3
    .catchall {:try_start_1bb .. :try_end_1d3} :catchall_1b7

    goto :goto_1b4

    .line 843
    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch
.end method

.method public run()V
    .registers 1

    .prologue
    .line 810
    return-void
.end method
