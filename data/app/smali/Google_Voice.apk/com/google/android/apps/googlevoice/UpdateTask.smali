.class public Lcom/google/android/apps/googlevoice/UpdateTask;
.super Lcom/googlex/common/task/Task;
.source "UpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/UpdateTask$1;,
        Lcom/google/android/apps/googlevoice/UpdateTask$AbortListener;,
        Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    }
.end annotation


# static fields
.field private static final DELTA:I = 0xa

.field static final MAX_DELAY_FOR_OUTGOING_SMS:J = 0x2710L

.field static final NUM_OF_TIMESTAMPS_ON_OUTGOING_SMS:I = 0x4

.field static final STATE_ABORT:I = 0x7

.field static final STATE_ABORTED:I = 0x8

.field static final STATE_COMPLETED:I = 0x5

.field static final STATE_DOWNLOAD_INIT:I = 0x3

.field static final STATE_DOWNLOAD_LOOP:I = 0x4

.field static final STATE_EXCEPTION:I = 0x6

.field static final STATE_INIT:I = 0x0

.field static final STATE_UPDATE_ACCOUNT:I = 0x2

.field static final STATE_UPLOAD_CHANGES:I = 0x1

.field static timestampsForOutgoingSms:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final abortListener:Lcom/google/android/apps/googlevoice/UpdateTask$AbortListener;

.field private accountBalance:I

.field private archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field public contactInfoMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private controlVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/googlevoice/UpdateTask$Control;",
            ">;"
        }
    .end annotation
.end field

.field private conversationMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private displayableAccountBalance:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

.field private labels:[Lcom/google/android/apps/googlevoice/core/Label;

.field private markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private final notifier:Lcom/google/android/apps/googlevoice/Notifier;

.field private restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private final scheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

.field private final smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

.field private final smsPhoneCallsByRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/googlevoice/net/SendSmsRpc;",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field private undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

.field private updateState:I

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateTask;->timestampsForOutgoingSms:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/googlex/common/task/TaskRunner;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/Notifier;Lcom/google/android/apps/googlevoice/UpdateTask$AbortListener;Lcom/google/android/apps/googlevoice/TaskScheduler;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;Lcom/google/android/apps/common/time/ClockUtils;)V
    .registers 12
    .parameter "runner"
    .parameter "voiceModel"
    .parameter "voicePreferences"
    .parameter "voiceService"
    .parameter "notifier"
    .parameter "abortListener"
    .parameter "taskScheduler"
    .parameter "smsOutboxManager"
    .parameter "clockUtils"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/googlex/common/task/Task;-><init>(Lcom/googlex/common/task/TaskRunner;)V

    .line 98
    iput v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->updateState:I

    .line 115
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 116
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 117
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 118
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    .line 119
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->abortListener:Lcom/google/android/apps/googlevoice/UpdateTask$AbortListener;

    .line 120
    iput-object p7, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->scheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    .line 121
    iput-object p8, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    .line 123
    iput-object p9, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 124
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 125
    return-void
.end method

.method private completeRequest(Lcom/google/android/apps/googlevoice/net/SendSmsRpc;)V
    .registers 8
    .parameter "request"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 168
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_13

    .line 169
    const-string v2, "UpdateTask.completeRequest(%s)"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 172
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 173
    .local v1, smsPhoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 174
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_36

    .line 175
    const-string v2, "  request has exception: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->getException()Ljava/lang/Exception;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 177
    :cond_36
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 178
    .local v0, smsException:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->onSendSmsFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->setException(Ljava/lang/Exception;)V

    .line 185
    .end local v0           #smsException:Ljava/lang/Exception;
    :goto_4a
    return-void

    .line 182
    :cond_4b
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->onSendSmsSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method private completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V
    .registers 10
    .parameter "request"
    .parameter "action"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_1a

    .line 151
    const-string v2, "UpdateTask.completeRequest(%s, %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 153
    :cond_1a
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 154
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_35

    .line 155
    const-string v2, "  request has exception: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getException()Ljava/lang/Exception;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 157
    :cond_35
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/UpdateTask;->setException(Ljava/lang/Exception;)V

    .line 164
    :cond_3c
    return-void

    .line 159
    :cond_3d
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 160
    .local v0, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    array-length v2, v0

    if-ge v1, v2, :cond_3c

    .line 161
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    aget-object v3, v0, v1

    invoke-interface {v2, v3, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->removeAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_42
.end method

.method private static getLimitForLabel(Lcom/google/android/apps/googlevoice/core/Label;)I
    .registers 3
    .parameter "label"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 136
    :cond_18
    const/4 v0, 0x0

    .line 138
    :goto_19
    return v0

    :cond_1a
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_19
.end method

.method private isWaitingForUploadChangesRequests()Z
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private runCompleted()V
    .registers 14

    .prologue
    .line 784
    sget-boolean v10, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v10, :cond_9

    .line 785
    const-string v10, "UpdateTask.runCompleted():"

    invoke-static {v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 788
    :cond_9
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v3, v10, :cond_48

    .line 789
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    invoke-virtual {v10, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;

    .line 790
    .local v0, control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    iget-object v10, v0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->conversationIds:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v2, v10, [Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 791
    .local v2, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_23
    iget-object v10, v0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->conversationIds:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v5, v10, :cond_40

    .line 792
    iget-object v10, v0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->conversationIds:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 793
    .local v1, conversationId:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->conversationMap:Ljava/util/Hashtable;

    invoke-virtual {v10, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/googlevoice/core/Conversation;

    aput-object v10, v2, v5

    .line 791
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 795
    .end local v1           #conversationId:Ljava/lang/String;
    :cond_40
    iget-object v10, v0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->label:Lcom/google/android/apps/googlevoice/core/Label;

    invoke-virtual {v10, v2}, Lcom/google/android/apps/googlevoice/core/Label;->setConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 797
    .end local v0           #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    .end local v2           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v5           #j:I
    :cond_48
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->accountBalance:I

    invoke-interface {v10, v11}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccountBalance(I)V

    .line 798
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->displayableAccountBalance:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setDisplayableAccountBalance(Ljava/lang/String;)V

    .line 802
    const/4 v9, 0x0

    .line 803
    .local v9, updatedSmsConversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;

    .line 804
    .restart local v0       #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    iget-object v10, v0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->label:Lcom/google/android/apps/googlevoice/core/Label;

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 805
    iget-object v10, v0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->label:Lcom/google/android/apps/googlevoice/core/Label;

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v9

    .line 809
    .end local v0           #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    :cond_7d
    if-nez v9, :cond_82

    .line 810
    const/4 v10, 0x0

    new-array v9, v10, [Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 813
    :cond_82
    const-wide/16 v7, 0x0

    .line 814
    .local v7, timeOfLastSmsLabelUpdate:J
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v11, "sms"

    invoke-interface {v10, v11}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v6

    .line 815
    .local v6, modelSmsLabel:Lcom/google/android/apps/googlevoice/core/Label;
    if-eqz v6, :cond_92

    .line 816
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v7

    .line 819
    :cond_92
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v10, v9, v7, v8}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->onModelDownloadCompleted([Lcom/google/android/apps/googlevoice/core/Conversation;J)V

    .line 822
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    if-eqz v10, :cond_bb

    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-lez v10, :cond_bb

    .line 823
    sget-boolean v10, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v10, :cond_ac

    .line 824
    const-string v10, "UpdateTask.runCompleted(): Updating model."

    invoke-static {v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 826
    :cond_ac
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->conversationMap:Ljava/util/Hashtable;

    iget-object v12, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    invoke-interface {v10, v11, v12}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->updateModel(Ljava/util/Hashtable;[Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 833
    :cond_b5
    :goto_b5
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v10}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->notifyListenersUpdateCompleted()V

    .line 834
    return-void

    .line 828
    :cond_bb
    sget-boolean v10, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v10, :cond_b5

    .line 829
    const-string v10, "UpdateTask.runCompleted(): Nothing downloaded, skipping model update."

    invoke-static {v10}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_b5
.end method

.method private runDownloadInit()V
    .registers 16

    .prologue
    .line 624
    sget-boolean v11, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v11, :cond_9

    .line 625
    const-string v11, "UpdateTask.runDownloadInit():"

    invoke-static {v11}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 628
    :cond_9
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    iput-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    .line 631
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    if-eqz v11, :cond_f7

    .line 632
    const/4 v8, 0x0

    .line 633
    .local v8, needToDownload:Z
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_19
    if-ge v5, v7, :cond_4c

    aget-object v9, v0, v5

    .line 634
    .local v9, newLabel:Lcom/google/android/apps/googlevoice/core/Label;
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v10

    .line 635
    .local v10, oldLabel:Lcom/google/android/apps/googlevoice/core/Label;
    if-eqz v10, :cond_35

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v11

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_b4

    .line 636
    :cond_35
    sget-boolean v11, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v11, :cond_4b

    .line 637
    const-string v11, "UpdateTask.runDownloadInit(): need to download because of newLabel \'%s\' vs oldLabel \'%s\'"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 640
    :cond_4b
    const/4 v8, 0x1

    .line 644
    .end local v9           #newLabel:Lcom/google/android/apps/googlevoice/core/Label;
    .end local v10           #oldLabel:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_4c
    if-eqz v8, :cond_e9

    .line 645
    sget-boolean v11, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v11, :cond_57

    .line 646
    const-string v11, "UpdateTask.runDownloadInit(): preparing to download"

    invoke-static {v11}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 648
    :cond_57
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    iput-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->conversationMap:Ljava/util/Hashtable;

    .line 649
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    iput-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->contactInfoMap:Ljava/util/Hashtable;

    .line 650
    const/4 v4, 0x0

    .local v4, i:I
    :goto_66
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    array-length v11, v11

    if-ge v4, v11, :cond_df

    .line 651
    new-instance v1, Lcom/google/android/apps/googlevoice/UpdateTask$Control;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lcom/google/android/apps/googlevoice/UpdateTask$Control;-><init>(Lcom/google/android/apps/googlevoice/UpdateTask$1;)V

    .line 652
    .local v1, control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aget-object v9, v11, v4

    .line 653
    .restart local v9       #newLabel:Lcom/google/android/apps/googlevoice/core/Label;
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v10

    .line 654
    .restart local v10       #oldLabel:Lcom/google/android/apps/googlevoice/core/Label;
    if-eqz v10, :cond_a1

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v11

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Label;->getTimestamp()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gtz v11, :cond_a1

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v11

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v12

    if-ne v11, v12, :cond_a1

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/Label;->getUnreadCount()I

    move-result v11

    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Label;->getUnreadCount()I

    move-result v12

    if-eq v11, v12, :cond_b8

    .line 657
    :cond_a1
    iput-object v9, v1, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->label:Lcom/google/android/apps/googlevoice/core/Label;

    .line 658
    const/4 v11, 0x0

    iput v11, v1, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    .line 659
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/UpdateTask;->getLimitForLabel(Lcom/google/android/apps/googlevoice/core/Label;)I

    move-result v11

    iput v11, v1, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->limit:I

    .line 671
    :cond_ac
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    invoke-virtual {v11, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 650
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 633
    .end local v1           #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    .end local v4           #i:I
    :cond_b4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_19

    .line 661
    .restart local v1       #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    .restart local v4       #i:I
    :cond_b8
    invoke-virtual {v10}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v3

    .line 662
    .local v3, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    iput-object v9, v1, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->label:Lcom/google/android/apps/googlevoice/core/Label;

    .line 663
    array-length v11, v3

    iput v11, v1, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    .line 664
    array-length v11, v3

    iput v11, v1, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->limit:I

    .line 665
    const/4 v6, 0x0

    .local v6, j:I
    :goto_c5
    array-length v11, v3

    if-ge v6, v11, :cond_ac

    .line 666
    aget-object v2, v3, v6

    .line 667
    .local v2, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->conversationMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object v11, v1, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->conversationIds:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 665
    add-int/lit8 v6, v6, 0x1

    goto :goto_c5

    .line 674
    .end local v1           #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    .end local v2           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v3           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v6           #j:I
    .end local v9           #newLabel:Lcom/google/android/apps/googlevoice/core/Label;
    .end local v10           #oldLabel:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_df
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 694
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #needToDownload:Z
    :goto_e3
    iget-object v11, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->scheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    invoke-interface {v11, p0}, Lcom/google/android/apps/googlevoice/TaskScheduler;->schedule(Lcom/googlex/common/task/Task;)V

    .line 695
    return-void

    .line 679
    .restart local v0       #arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #needToDownload:Z
    :cond_e9
    sget-boolean v11, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v11, :cond_f2

    .line 680
    const-string v11, "UpdateTask.runDownloadInit(): Nothing to download, skipping."

    invoke-static {v11}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 682
    :cond_f2
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    goto :goto_e3

    .line 688
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Label;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #needToDownload:Z
    :cond_f7
    sget-boolean v11, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v11, :cond_100

    .line 689
    const-string v11, "UpdateTask.runDownloadInit(): No labels, skipping download."

    invoke-static {v11}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 691
    :cond_100
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    goto :goto_e3
.end method

.method private runDownloadLoop()V
    .registers 23

    .prologue
    .line 698
    sget-boolean v18, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v18, :cond_9

    .line 699
    const-string v18, "UpdateTask.runDownloadLoop():"

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 702
    :cond_9
    const/16 v17, 0x0

    .line 703
    .local v17, runLoopException:Ljava/lang/Exception;
    const/4 v5, 0x1

    .line 705
    .local v5, completed:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 707
    .local v15, now:J
    const/4 v10, 0x0

    .local v10, i:I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_f6

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;

    .line 709
    .local v6, control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    iget-object v14, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 710
    .local v14, listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;
    if-eqz v14, :cond_81

    .line 711
    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->isCompletedOrException()Z

    move-result v18

    if-eqz v18, :cond_81

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v9

    .line 713
    .local v9, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    iget v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    move/from16 v18, v0

    if-nez v18, :cond_84

    sget-object v18, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_DEFAULT_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    :goto_49
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 716
    iget-wide v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->requestStarted:J

    move-wide/from16 v18, v0

    sub-long v18, v15, v18

    move-wide/from16 v0, v18

    invoke-interface {v9, v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setDuration(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 717
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->label:Lcom/google/android/apps/googlevoice/core/Label;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 718
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 720
    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->hasException()Z

    move-result v18

    if-eqz v18, :cond_87

    .line 721
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->getException()Ljava/lang/Exception;

    move-result-object v17

    .line 740
    :goto_7b
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 707
    .end local v9           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_81
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 713
    .restart local v9       #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_84
    sget-object v18, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_ADDITIONAL_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    goto :goto_49

    .line 723
    :cond_87
    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v8

    .line 724
    .local v8, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v8, :cond_92

    array-length v0, v8

    move/from16 v18, v0

    if-nez v18, :cond_9b

    .line 725
    :cond_92
    iget v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->limit:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    goto :goto_7b

    .line 727
    :cond_9b
    const/4 v12, 0x0

    .local v12, j:I
    :goto_9c
    array-length v0, v8

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_e8

    .line 728
    aget-object v7, v8, v12

    .line 729
    .local v7, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v4

    .line 730
    .local v4, calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    move-object v2, v4

    .local v2, arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    array-length v13, v2

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_ac
    if-ge v11, v13, :cond_c6

    aget-object v3, v2, v11

    .line 731
    .local v3, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-object/from16 v18, v0

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 730
    add-int/lit8 v11, v11, 0x1

    goto :goto_ac

    .line 733
    .end local v3           #call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_c6
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->refreshContactInfo()V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->conversationMap:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->conversationIds:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 727
    add-int/lit8 v12, v12, 0x1

    goto :goto_9c

    .line 737
    .end local v2           #arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v4           #calls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v7           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v11           #i$:I
    .end local v13           #len$:I
    :cond_e8
    iget v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    goto :goto_7b

    .line 746
    .end local v6           #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    .end local v8           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v9           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .end local v12           #j:I
    .end local v14           #listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;
    :cond_f6
    if-eqz v17, :cond_10f

    .line 747
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->scheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/TaskScheduler;->schedule(Lcom/googlex/common/task/Task;)V

    .line 781
    :cond_10e
    :goto_10e
    return-void

    .line 753
    :cond_10f
    const/4 v10, 0x0

    :goto_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_1f6

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->controlVector:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;

    .line 755
    .restart local v6       #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-object/from16 v18, v0

    if-eqz v18, :cond_136

    .line 756
    const/4 v5, 0x0

    .line 753
    :cond_133
    :goto_133
    add-int/lit8 v10, v10, 0x1

    goto :goto_110

    .line 757
    :cond_136
    iget v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    move/from16 v18, v0

    iget v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->limit:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_133

    .line 758
    sget-boolean v18, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v18, :cond_19a

    .line 759
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UpdateTask.runDownloadLoop(): label = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->label:Lcom/google/android/apps/googlevoice/core/Label;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 760
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UpdateTask.runDownloadLoop(): offset = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 761
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UpdateTask.runDownloadLoop(): limit = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->limit:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 763
    :cond_19a
    const/4 v5, 0x0

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createListConversationsRpc()Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 765
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->label:Lcom/google/android/apps/googlevoice/core/Label;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-interface/range {v18 .. v19}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setLabels([Ljava/lang/String;)V

    .line 766
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-object/from16 v18, v0

    iget v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->offset:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setOffset(I)V

    .line 767
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-interface/range {v18 .. v19}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setLimit(I)V

    .line 768
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setWantTranscript(Z)V

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->requestStarted:J

    .line 770
    iget-object v0, v6, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_133

    .line 776
    .end local v6           #control:Lcom/google/android/apps/googlevoice/UpdateTask$Control;
    :cond_1f6
    if-eqz v5, :cond_10e

    .line 777
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->scheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/TaskScheduler;->schedule(Lcom/googlex/common/task/Task;)V

    goto/16 :goto_10e
.end method

.method private runException()V
    .registers 3

    .prologue
    .line 837
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 838
    const-string v0, "UpdateTask.runException():"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 841
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->exception:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->notifyListenersUpdateException(Ljava/lang/Exception;)V

    .line 842
    return-void
.end method

.method private runInit()V
    .registers 20

    .prologue
    .line 247
    sget-boolean v15, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v15, :cond_9

    .line 248
    const-string v15, "UpdateTask.runInit():"

    invoke-static {v15}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 252
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->notifyListenersUpdateStarted()V

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 256
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "trash"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setAddLabels([Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "trash"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setRemoveLabels([Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "inbox"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setAddLabels([Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 262
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "inbox"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setRemoveLabels([Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 264
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "inbox"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setAddLabels([Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 266
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "unread"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setRemoveLabels([Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "unread"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setAddLabels([Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "starred"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setAddLabels([Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "starred"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setRemoveLabels([Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 274
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "spam"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setAddLabels([Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 276
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "spam"

    aput-object v18, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->setRemoveLabels([Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getActions()[Lcom/google/android/apps/googlevoice/core/Action;

    move-result-object v2

    .line 281
    .local v2, actions:[Lcom/google/android/apps/googlevoice/core/Action;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_17f
    array-length v15, v2

    if-ge v9, v15, :cond_25e

    .line 282
    sget-boolean v15, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v15, :cond_19e

    .line 283
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UpdateTask.runInit(): action = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v2, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 285
    :cond_19e
    aget-object v15, v2, v9

    invoke-virtual {v15}, Lcom/google/android/apps/googlevoice/core/Action;->getConversation()Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v4

    .line 286
    .local v4, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    aget-object v15, v2, v9

    invoke-virtual {v15}, Lcom/google/android/apps/googlevoice/core/Action;->getFlags()I

    move-result v8

    .line 287
    .local v8, flags:I
    sget-boolean v15, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v15, :cond_1c4

    .line 288
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UpdateTask.runInit(): flags = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 290
    :cond_1c4
    and-int/lit8 v15, v8, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d3

    .line 291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 293
    :cond_1d3
    and-int/lit8 v15, v8, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1e2

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 296
    :cond_1e2
    and-int/lit8 v15, v8, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f1

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 299
    :cond_1f1
    and-int/lit8 v15, v8, 0x8

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_200

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 302
    :cond_200
    and-int/lit8 v15, v8, 0x10

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_20f

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 305
    :cond_20f
    and-int/lit8 v15, v8, 0x20

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_21e

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 308
    :cond_21e
    and-int/lit16 v15, v8, 0x100

    const/16 v16, 0x100

    move/from16 v0, v16

    if-ne v15, v0, :cond_22d

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 311
    :cond_22d
    and-int/lit16 v15, v8, 0x200

    const/16 v16, 0x200

    move/from16 v0, v16

    if-ne v15, v0, :cond_23c

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 314
    :cond_23c
    and-int/lit8 v15, v8, 0x40

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ne v15, v0, :cond_24b

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 317
    :cond_24b
    and-int/lit16 v15, v8, 0x80

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_25a

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15, v4}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 281
    :cond_25a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_17f

    .line 323
    .end local v4           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v8           #flags:I
    :cond_25e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->getNextSmsMessagesToSend()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v3

    .local v3, arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v11, v3

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_268
    if-ge v10, v11, :cond_2ae

    aget-object v12, v3, v10

    .line 324
    .local v12, pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    iget-object v14, v12, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 325
    .local v14, smsToSend:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createSendSmsRpc()Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-result-object v13

    .line 327
    .local v13, sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    invoke-virtual {v14}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setMessage(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v14}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    iget-wide v0, v12, Lcom/google/android/apps/googlevoice/sms/PendingSms;->requestId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v15, v0, v1}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->addDestination(Ljava/lang/String;J)V

    .line 330
    invoke-virtual {v14}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setSubscriberNumber(Ljava/lang/String;)V

    .line 331
    const/4 v15, 0x0

    invoke-interface {v13, v15}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setErrorSmsSentOnFreeQuotaError(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v15, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_397

    .line 341
    .end local v12           #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v13           #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    .end local v14           #smsToSend:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_39b

    .line 342
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 347
    :goto_2be
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3a6

    .line 348
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 353
    :goto_2ce
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3b1

    .line 354
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 359
    :goto_2de
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3bc

    .line 360
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 365
    :goto_2ee
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3c7

    .line 366
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 371
    :goto_2fe
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3d2

    .line 372
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 377
    :goto_30e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3dd

    .line 378
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 383
    :goto_31e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3e8

    .line 384
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 389
    :goto_32e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3f3

    .line 390
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 395
    :goto_33e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_3fe

    .line 396
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 401
    :goto_34e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_35a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_409

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 403
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/googlevoice/net/SendSmsRpc;Lcom/google/android/apps/googlevoice/core/PhoneCall;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->getDelayForSendSmsRpc()J

    move-result-wide v5

    .line 404
    .local v5, delay:J
    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-lez v15, :cond_373

    .line 406
    :try_start_370
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_373
    .catch Ljava/lang/InterruptedException; {:try_start_370 .. :try_end_373} :catch_41f

    .line 410
    :cond_373
    :goto_373
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 411
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 412
    .restart local v14       #smsToSend:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-virtual {v14}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getConversationId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->onSendSmsStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->recordTimstampForOutgoingSms()V

    goto :goto_35a

    .line 323
    .end local v5           #delay:J
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/googlevoice/net/SendSmsRpc;Lcom/google/android/apps/googlevoice/core/PhoneCall;>;"
    .local v10, i$:I
    .restart local v12       #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .restart local v13       #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    :cond_397
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_268

    .line 344
    .end local v12           #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v13           #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    .end local v14           #smsToSend:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_39b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_2be

    .line 350
    :cond_3a6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_2ce

    .line 356
    :cond_3b1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_2de

    .line 362
    :cond_3bc
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_2ee

    .line 368
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_2fe

    .line 374
    :cond_3d2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_30e

    .line 380
    :cond_3dd
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_31e

    .line 386
    :cond_3e8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_32e

    .line 392
    :cond_3f3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_33e

    .line 398
    :cond_3fe
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto/16 :goto_34e

    .line 416
    .local v10, i$:Ljava/util/Iterator;
    :cond_409
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->isWaitingForUploadChangesRequests()Z

    move-result v15

    if-nez v15, :cond_41e

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/UpdateTask;->scheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lcom/google/android/apps/googlevoice/TaskScheduler;->schedule(Lcom/googlex/common/task/Task;)V

    .line 423
    :cond_41e
    return-void

    .line 407
    .restart local v5       #delay:J
    .restart local v7       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/googlevoice/net/SendSmsRpc;Lcom/google/android/apps/googlevoice/core/PhoneCall;>;"
    :catch_41f
    move-exception v15

    goto/16 :goto_373
.end method

.method private runUpdateAccount()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    if-eqz v0, :cond_57

    .line 561
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 562
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_19

    .line 563
    const-string v0, "UpdateTask: getAccountStatusRequest.isCompletedOrException() == true"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 565
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->hasException()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 566
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->setException(Ljava/lang/Exception;)V

    .line 567
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_48

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateTask: accountStatusRequest has exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 612
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_147

    .line 613
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 618
    :goto_52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->scheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/TaskScheduler;->schedule(Lcom/googlex/common/task/Task;)V

    .line 621
    :cond_57
    return-void

    .line 571
    :cond_58
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_61

    .line 572
    const-string v0, "UpdateTask: accountStatusRequest has completed"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 574
    :cond_61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getAccountBalance()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->accountBalance:I

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getDisplayableAccountBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->displayableAccountBalance:Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getLabels()[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 578
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_b3

    .line 579
    const-string v0, "account type: %s => %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 581
    const-string v0, "primaryDID: \'%s\' => \'%s\'"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getPrimaryDID()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 584
    :cond_b3
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getPrimaryDID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getPrimaryDID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 588
    :cond_d5
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getPrimaryDID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setSubscriberNumber(Ljava/lang/String;)V

    .line 591
    :cond_e0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getPrimaryDID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f5

    .line 594
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0, v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setSubscriberNumber(Ljava/lang/String;)V

    .line 597
    :cond_f5
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v1

    if-eq v0, v1, :cond_114

    .line 598
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccountType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/Notifier;->notifyAccountTypeChange(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 602
    :cond_114
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setAccountType(Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;)V

    .line 604
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isFullSubscriber()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->setIsFullSubscriber(Z)V

    .line 605
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_48

    .line 606
    const-string v0, "UpdateTask: accountStatusRequest has balance = %d, labels = %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->accountBalance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_48

    .line 615
    :cond_147
    iput-object v6, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    .line 616
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    goto/16 :goto_52
.end method

.method private runUploadChanges()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 448
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_b

    .line 449
    const-string v2, "UpdateTask.runUploadChanges():"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 452
    :cond_b
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_1f

    .line 453
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 454
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 455
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->deleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 459
    :cond_1f
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_32

    .line 460
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 461
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-direct {p0, v2, v5}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 462
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->undeleteConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 466
    :cond_32
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_46

    .line 467
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 468
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 469
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->archiveConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 473
    :cond_46
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_5b

    .line 474
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 475
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 476
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->restoreConversationRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 480
    :cond_5b
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_70

    .line 481
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 482
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 483
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationReadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 487
    :cond_70
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_85

    .line 488
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 489
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 490
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationUnreadRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 494
    :cond_85
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_9a

    .line 495
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 496
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v3, 0x100

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 497
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 501
    :cond_9a
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_af

    .line 502
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 503
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v3, 0x200

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 504
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotStarredRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 508
    :cond_af
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_c4

    .line 509
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 510
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v3, 0x40

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 511
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 515
    :cond_c4
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    if-eqz v2, :cond_d9

    .line 516
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 517
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    const/16 v3, 0x80

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;I)V

    .line 518
    iput-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->markConversationNotSpamRequest:Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;

    .line 522
    :cond_d9
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 523
    .local v0, requestIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/googlevoice/net/SendSmsRpc;>;"
    :cond_e3
    :goto_e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 524
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    .line 525
    .local v1, sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 526
    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/UpdateTask;->completeRequest(Lcom/google/android/apps/googlevoice/net/SendSmsRpc;)V

    .line 527
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_e3

    .line 531
    .end local v1           #sendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    :cond_fc
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_10c

    .line 532
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 533
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->scheduler:Lcom/google/android/apps/googlevoice/TaskScheduler;

    invoke-interface {v2, p0}, Lcom/google/android/apps/googlevoice/TaskScheduler;->schedule(Lcom/googlex/common/task/Task;)V

    .line 541
    :cond_10b
    :goto_10b
    return-void

    .line 534
    :cond_10c
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->isWaitingForUploadChangesRequests()Z

    move-result v2

    if-nez v2, :cond_10b

    .line 537
    invoke-virtual {p0, v5}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 538
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createGetAccountStatusRpc()Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    .line 539
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->getAccountStatusRequest:Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;

    invoke-interface {v2, p0}, Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto :goto_10b
.end method

.method private setException(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 143
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_9

    .line 145
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->exception:Ljava/lang/Exception;

    .line 147
    :cond_9
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .prologue
    .line 859
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 861
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->schedule()V

    .line 862
    return-void
.end method

.method getDelayForSendSmsRpc()J
    .registers 12

    .prologue
    const-wide/16 v3, 0x0

    .line 437
    sget-object v5, Lcom/google/android/apps/googlevoice/UpdateTask;->timestampsForOutgoingSms:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2b

    .line 438
    sget-object v5, Lcom/google/android/apps/googlevoice/UpdateTask;->timestampsForOutgoingSms:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 439
    .local v2, timestamp:Ljava/lang/Long;
    if-eqz v2, :cond_2b

    .line 440
    const-wide/16 v5, 0x2710

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v7}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    sub-long v0, v5, v7

    .line 441
    .local v0, delay:J
    cmp-long v5, v0, v3

    if-lez v5, :cond_29

    .line 444
    .end local v0           #delay:J
    .end local v2           #timestamp:Ljava/lang/Long;
    :goto_28
    return-wide v0

    .restart local v0       #delay:J
    .restart local v2       #timestamp:Ljava/lang/Long;
    :cond_29
    move-wide v0, v3

    .line 441
    goto :goto_28

    .end local v0           #delay:J
    .end local v2           #timestamp:Ljava/lang/Long;
    :cond_2b
    move-wide v0, v3

    .line 444
    goto :goto_28
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getSmsPhoneCallsByRequestForTest()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/googlevoice/net/SendSmsRpc;",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getUpdateState()I
    .registers 2

    .prologue
    .line 845
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->updateState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method recordTimstampForOutgoingSms()V
    .registers 4

    .prologue
    .line 428
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateTask;->timestampsForOutgoingSms:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v1}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateTask;->timestampsForOutgoingSms:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1d

    .line 430
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateTask;->timestampsForOutgoingSms:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 432
    :cond_1d
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 189
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1c

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateTask.run(): state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->updateState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 193
    :cond_1c
    iget v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->updateState:I

    packed-switch v0, :pswitch_data_6a

    .line 238
    const-string v0, "UpdateTask.run(): bad state"

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 241
    :goto_26
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_2f

    .line 242
    const-string v0, "UpdateTask.run(): return"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 244
    :cond_2f
    return-void

    .line 195
    :pswitch_30
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_39

    .line 196
    const-string v0, "UpdateTask.run(): aborting and notifying listener."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 198
    :cond_39
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->setUpdateState(I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->abortListener:Lcom/google/android/apps/googlevoice/UpdateTask$AbortListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/UpdateTask$AbortListener;->taskAborted(Lcom/google/android/apps/googlevoice/UpdateTask;)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->cancel()I

    goto :goto_26

    .line 206
    :pswitch_47
    const-string v0, "UpdateTask.run() while aborted: ignoring."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    goto :goto_26

    .line 210
    :pswitch_4d
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->runInit()V

    goto :goto_26

    .line 214
    :pswitch_51
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->runUploadChanges()V

    goto :goto_26

    .line 218
    :pswitch_55
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->runUpdateAccount()V

    goto :goto_26

    .line 222
    :pswitch_59
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->runDownloadInit()V

    goto :goto_26

    .line 226
    :pswitch_5d
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->runDownloadLoop()V

    goto :goto_26

    .line 230
    :pswitch_61
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->runCompleted()V

    goto :goto_26

    .line 234
    :pswitch_65
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask;->runException()V

    goto :goto_26

    .line 193
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_51
        :pswitch_55
        :pswitch_59
        :pswitch_5d
        :pswitch_61
        :pswitch_65
        :pswitch_30
        :pswitch_47
    .end packed-switch
.end method

.method setSmsPhoneCallsByRequestForTest(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/googlevoice/net/SendSmsRpc;",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, smsPhoneCallsByRequest:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/apps/googlevoice/net/SendSmsRpc;Lcom/google/android/apps/googlevoice/core/PhoneCall;>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 879
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->smsPhoneCallsByRequest:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 880
    return-void
.end method

.method public declared-synchronized setUpdateState(I)V
    .registers 6
    .parameter "newState"

    .prologue
    .line 849
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_18

    .line 850
    const-string v0, "UpdateTask.setState(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 852
    :cond_18
    iget v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->updateState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_25

    iget v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->updateState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_25

    .line 853
    iput p1, p0, Lcom/google/android/apps/googlevoice/UpdateTask;->updateState:I
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 855
    :cond_25
    monitor-exit p0

    return-void

    .line 849
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method
