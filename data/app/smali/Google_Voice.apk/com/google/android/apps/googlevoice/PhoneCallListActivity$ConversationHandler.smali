.class Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "PhoneCallListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/PhoneCallListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationHandler"
.end annotation


# instance fields
.field private synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

.field private synchronousSmsRequestStarted:J

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

.field private uniqueIdSuffix:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    .line 1468
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->uniqueIdSuffix:I

    .line 1474
    return-void
.end method

.method private createConversation()V
    .registers 7

    .prologue
    .line 1785
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshMultiContactInfo()V
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1787
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 1788
    .local v1, now:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TempId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->uniqueIdSuffix:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->uniqueIdSuffix:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, callAndConversationId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    new-instance v4, Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-direct {v4}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>()V

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v3, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$002(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 1790
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationId(Ljava/lang/String;)V

    .line 1791
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationTime(J)V

    .line 1793
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v3, v3, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    if-nez v3, :cond_7c

    .line 1794
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    new-instance v4, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-direct {v4}, Lcom/google/android/apps/googlevoice/core/ContactInfo;-><init>()V

    iput-object v4, v3, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1795
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v3, v3, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v4, v4, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->numberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 1796
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v5, v5, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-interface {v4, v5}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1798
    :cond_7c
    return-void
.end method

.method private createSmsPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 7

    .prologue
    .line 1802
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 1803
    .local v0, now:J
    new-instance v2, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-direct {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;-><init>()V

    .line 1804
    .local v2, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 1805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TempID_Sms_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->uniqueIdSuffix:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->uniqueIdSuffix:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setMessageId(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setStartTime(J)V

    .line 1807
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setSubscriberNumber(Ljava/lang/String;)V

    .line 1808
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v3, v3, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 1809
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setCallType(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)V

    .line 1810
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->READ:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setStatus(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;)V

    .line 1811
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v3, v3, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setMessageText(Ljava/lang/String;)V

    .line 1812
    return-object v2
.end method

.method private sendReply()V
    .registers 9

    .prologue
    .line 1817
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->phoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_2c

    .line 1819
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    .line 1820
    .local v0, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v5, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v0, v5}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 1821
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 1824
    .end local v0           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->createSmsPhoneCall()Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v4

    .line 1825
    .local v4, smsPhoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    if-nez v5, :cond_5f

    .line 1827
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->createLocalConversation()Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v6

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v5, v6}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$002(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 1828
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1829
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/apps/googlevoice/core/Conversation;->addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 1834
    :cond_5f
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;->generate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1836
    .local v2, requestId:J
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;->reset()V

    .line 1837
    new-instance v1, Lcom/google/android/apps/googlevoice/sms/PendingSms;

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/apps/googlevoice/sms/PendingSms;-><init>(Lcom/google/android/apps/googlevoice/core/PhoneCall;J)V

    .line 1838
    .local v1, pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->addPendingSms(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V

    .line 1840
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v5, v5, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1843
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->resetSmsCost()V
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1844
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshSmsCostIfNecessary()V
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1845
    return-void
.end method

.method private sendSynchronousReply()V
    .registers 10

    .prologue
    .line 1849
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    if-nez v5, :cond_11c

    .line 1850
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_38

    .line 1852
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    .line 1853
    .local v0, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v5, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v0, v5}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 1854
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 1858
    .end local v0           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_38
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v5

    const/16 v6, 0x3e9

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    .line 1861
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v6, v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v7, v7, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;->generate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 1865
    .local v3, requestId:J
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createSendSmsRpc()Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    .line 1866
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8f

    .line 1867
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v5, v5, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_84

    .line 1868
    const-string v5, "conversationId != null but impossible in sending to multiple recipients"

    invoke-static {v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 1872
    :cond_84
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setConversationId(Ljava/lang/String;)V

    .line 1874
    :cond_8f
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setSubscriberNumber(Ljava/lang/String;)V

    .line 1875
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v6, v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3, v4}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->addDestination(Ljava/lang/String;J)V

    .line 1876
    const/4 v1, 0x0

    .local v1, i:I
    :goto_ac
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v5, v5, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_dc

    .line 1877
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v5, v5, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1878
    .local v2, recipient:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipientsRequestIds:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2900(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1879
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3, v4}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->addDestination(Ljava/lang/String;J)V

    .line 1876
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .line 1881
    .end local v2           #recipient:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    :cond_dc
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    iget-object v6, v6, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setMessage(Ljava/lang/String;)V

    .line 1882
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->setErrorSmsSentOnFreeQuotaError(Z)V

    .line 1883
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSmsRequestStarted:J

    .line 1884
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->taskRunner:Lcom/googlex/common/task/TaskRunner;
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/googlex/common/task/TaskRunner;

    move-result-object v5

    if-eqz v5, :cond_11c

    .line 1885
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    new-instance v6, Lcom/google/android/apps/googlevoice/MessageTask;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->taskRunner:Lcom/googlex/common/task/TaskRunner;
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$3000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/googlex/common/task/TaskRunner;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/apps/googlevoice/MessageTask;-><init>(Lcom/googlex/common/task/TaskRunner;Landroid/os/Message;)V

    invoke-interface {v5, v6}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 1890
    .end local v1           #i:I
    .end local v3           #requestId:J
    :cond_11c
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->resetSmsCost()V
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1891
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshSmsCostIfNecessary()V
    invoke-static {v5}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1892
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .parameter "message"

    .prologue
    .line 1478
    sget-boolean v19, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v19, :cond_20

    .line 1479
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "message.what = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1482
    :cond_20
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_820

    .line 1779
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unhandled event id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 1781
    :cond_45
    :goto_45
    :sswitch_45
    return-void

    .line 1484
    :sswitch_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->refreshMultiContactInfo()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    goto :goto_45

    .line 1491
    :sswitch_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_45

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[02-9][0-9]{4,5}"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a8

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v19

    const/16 v20, 0x3ef

    invoke-interface/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto :goto_45

    .line 1501
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_be

    .line 1502
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->sendReply()V

    goto :goto_45

    .line 1504
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v19

    if-nez v19, :cond_cd

    .line 1505
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->createConversation()V

    .line 1507
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getConnectionInformation()Lcom/google/android/apps/googlevoice/ConnectionInformation;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ConnectionInformation;->hasNetworkConnection()Z

    move-result v19

    if-eqz v19, :cond_e6

    .line 1508
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->sendSynchronousReply()V

    goto/16 :goto_45

    .line 1510
    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v19

    const/16 v20, 0x3f0

    invoke-interface/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto/16 :goto_45

    .line 1517
    :sswitch_f7
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;

    .line 1518
    .local v13, lookupResult:Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;
    if-eqz v13, :cond_45

    .line 1521
    invoke-virtual {v13}, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;->getDestinationNumber()Ljava/lang/String;

    move-result-object v5

    .line 1522
    .local v5, destinationNumber:Ljava/lang/String;
    if-eqz v5, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getContactPhoneNumber()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->lastSmsCostLookupDestinationNumber:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_45

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;->getDisplayableCost()Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setDisplayableSmsCost(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Ljava/lang/String;)V

    goto/16 :goto_45

    .line 1532
    .end local v5           #destinationNumber:Ljava/lang/String;
    .end local v13           #lookupResult:Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;
    :sswitch_138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v19, v0

    if-eqz v19, :cond_149

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->close()V

    .line 1535
    :cond_149
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    goto/16 :goto_45

    .line 1539
    :sswitch_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v19, v0

    if-eqz v19, :cond_45

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v8

    .line 1541
    .local v8, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v19, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_SEND_SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSmsRequestStarted:J

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-interface {v8, v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setDuration(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 1543
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->sendingDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1900(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/app/ProgressDialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->hasException()Z

    move-result v19

    if-eqz v19, :cond_230

    .line 1548
    const-string v19, "sms fail"

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v19

    if-nez v19, :cond_1f2

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$002(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1558
    :cond_1f2
    const/16 v7, 0x3ea

    .line 1559
    .local v7, errorDialogId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->getException()Ljava/lang/Exception;

    move-result-object v6

    .line 1560
    .local v6, e:Ljava/lang/Exception;
    instance-of v0, v6, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    move/from16 v19, v0

    if-eqz v19, :cond_211

    .line 1561
    check-cast v6, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v6           #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->getNumber()I

    move-result v18

    .line 1562
    .local v18, statusCode:I
    packed-switch v18, :pswitch_data_89a

    .line 1571
    .end local v18           #statusCode:I
    :cond_211
    :goto_211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    .line 1626
    .end local v7           #errorDialogId:I
    :cond_220
    :goto_220
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    goto/16 :goto_45

    .line 1564
    .restart local v7       #errorDialogId:I
    .restart local v18       #statusCode:I
    :pswitch_22a
    const/16 v7, 0x3eb

    .line 1565
    goto :goto_211

    .line 1567
    :pswitch_22d
    const/16 v7, 0x3ec

    goto :goto_211

    .line 1574
    .end local v7           #errorDialogId:I
    .end local v18           #statusCode:I
    :cond_230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->requestIdGenerator:Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;->reset()V

    .line 1576
    sget-boolean v19, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v19, :cond_246

    .line 1577
    const-string v19, "sms pass"

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 1581
    :cond_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->messageText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    new-instance v16, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/apps/googlevoice/core/PhoneCall;-><init>()V

    .line 1585
    .local v16, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TempID_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setMessageId(Ljava/lang/String;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1800(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, v16

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setStartTime(J)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setSubscriberNumber(Ljava/lang/String;)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 1589
    sget-object v19, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setCallType(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)V

    .line 1590
    sget-object v19, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->READ:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setStatus(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setMessageText(Ljava/lang/String;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->isCompletedOrException()Z

    move-result v19

    if-nez v19, :cond_319

    .line 1594
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/google/android/apps/googlevoice/R$string;->sms_cancelled_notification_content:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_45

    .line 1600
    :cond_319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->synchronousSendSmsRequest:Lcom/google/android/apps/googlevoice/net/SendSmsRpc;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/net/SendSmsRpc;->getConversationId()Ljava/lang/String;

    move-result-object v20

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$102(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v14

    .line 1602
    .local v14, newConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-nez v14, :cond_3e3

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversationId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$100(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationId(Ljava/lang/String;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v20

    const-string v21, "sms"

    invoke-interface/range {v20 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/core/Conversation;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-interface/range {v19 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 1618
    :goto_3a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->additionalRecipients:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_220

    .line 1619
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    const-class v20, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1621
    .local v12, intent:Landroid/content/Intent;
    const-string v19, "com.google.android.apps.googlevoice.ConversationListActivity.LABEL"

    const-string v20, "inbox"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const/high16 v19, 0x400

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_220

    .line 1611
    .end local v12           #intent:Landroid/content/Intent;
    :cond_3e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static {v0, v14}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$002(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;Lcom/google/android/apps/googlevoice/core/Conversation;)Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    goto/16 :goto_3a1

    .line 1631
    .end local v8           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .end local v14           #newConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v16           #phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :sswitch_445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    goto/16 :goto_45

    .line 1635
    :sswitch_450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    goto/16 :goto_45

    .line 1640
    :sswitch_46c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x26

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_45

    .line 1644
    :sswitch_47f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->handler:Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x27

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_45

    .line 1648
    :sswitch_492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasUsablePhoneNumber()Z

    move-result v19

    if-eqz v19, :cond_45

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v8

    .line 1650
    .restart local v8       #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v19, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_REPLY_CALL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 1651
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1654
    .local v15, number:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v19, "android.intent.action.CALL"

    const-string v20, "tel"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v15, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1656
    .local v3, callIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_45

    .line 1662
    .end local v3           #callIntent:Landroid/content/Intent;
    .end local v8           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .end local v15           #number:Ljava/lang/String;
    :sswitch_4f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v10

    .line 1663
    .local v10, forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->clickToCallHelper:Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v10, v2}, Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;->placeClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;Ljava/lang/String;)V

    goto/16 :goto_45

    .line 1669
    .end local v10           #forwardingPhones:[Lcom/google/android/apps/googlevoice/core/Phone;
    :sswitch_531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->hasUsablePhoneNumber()Z

    move-result v19

    if-eqz v19, :cond_45

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->contactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1671
    .restart local v15       #number:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v19, "android.intent.action.SENDTO"

    const-string v20, "smsto"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v15, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1673
    .local v4, composeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_45

    .line 1679
    .end local v4           #composeIntent:Landroid/content/Intent;
    .end local v15           #number:Ljava/lang/String;
    :sswitch_57b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    goto/16 :goto_45

    .line 1685
    :sswitch_5b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    goto/16 :goto_45

    .line 1691
    :sswitch_5e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v19

    if-nez v19, :cond_5fa

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->finish()V

    .line 1694
    :cond_5fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1700(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v8

    .line 1695
    .restart local v8       #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v19, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->CONVERSATION_DELETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 1696
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsDeleted(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->finish()V

    goto/16 :goto_45

    .line 1705
    .end local v8           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :sswitch_654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsDeleted(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->finish()V

    goto/16 :goto_45

    .line 1712
    :sswitch_692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->finish()V

    goto/16 :goto_45

    .line 1719
    :sswitch_6d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->localModelView:Lcom/google/android/apps/googlevoice/model/LocalModelView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/model/LocalModelView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$000(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->finish()V

    goto/16 :goto_45

    .line 1726
    :sswitch_70e
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    const-class v20, Lcom/google/android/apps/googlevoice/SettingsActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1727
    .local v17, settingsIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_45

    .line 1731
    .end local v17           #settingsIntent:Landroid/content/Intent;
    :sswitch_730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    sget v20, Lcom/google/android/apps/googlevoice/R$string;->uri_help:I

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1732
    .local v11, helpUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_45

    .line 1736
    .end local v11           #helpUri:Landroid/net/Uri;
    :sswitch_756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2400(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsEclairOrEarlier()Z

    move-result v19

    if-eqz v19, :cond_78c

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    sget v20, Lcom/google/android/apps/googlevoice/R$string;->uri_feedback:I

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1738
    .local v9, feedbackUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_45

    .line 1740
    .end local v9           #feedbackUri:Landroid/net/Uri;
    :cond_78c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/system/FeedbackSender;->send(Landroid/app/Activity;)V

    goto/16 :goto_45

    .line 1746
    :sswitch_797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    const/16 v21, 0x15

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7b6

    const/16 v19, 0x1

    :goto_7ad
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->setSpeakerEnabled(Z)V

    goto/16 :goto_45

    :cond_7b6
    const/16 v19, 0x0

    goto :goto_7ad

    .line 1758
    :sswitch_7b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v19

    const/16 v20, 0x450

    invoke-interface/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto/16 :goto_45

    .line 1762
    :sswitch_7ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$300(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v19

    const/16 v20, 0x451

    invoke-interface/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto/16 :goto_45

    .line 1766
    :sswitch_7db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->dndBarView:Lcom/google/android/apps/googlevoice/activity/DndBarView;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2500(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/activity/DndBarView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #calls: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->updateView()V
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$1200(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)V

    goto/16 :goto_45

    .line 1771
    :sswitch_7fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackView:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_45

    .line 1775
    :sswitch_80e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/PhoneCallListActivity$ConversationHandler;->this$0:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->playbackView:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->access$2600(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_45

    .line 1482
    nop

    :sswitch_data_820
    .sparse-switch
        0x0 -> :sswitch_46
        0x1 -> :sswitch_64
        0x2 -> :sswitch_f7
        0x3 -> :sswitch_445
        0x4 -> :sswitch_153
        0x5 -> :sswitch_45
        0x6 -> :sswitch_45
        0xa -> :sswitch_450
        0xb -> :sswitch_46c
        0xc -> :sswitch_531
        0xd -> :sswitch_57b
        0xe -> :sswitch_5b0
        0xf -> :sswitch_5e5
        0x10 -> :sswitch_654
        0x11 -> :sswitch_692
        0x12 -> :sswitch_6d0
        0x15 -> :sswitch_797
        0x16 -> :sswitch_797
        0x1c -> :sswitch_7db
        0x1d -> :sswitch_7fd
        0x1e -> :sswitch_80e
        0x1f -> :sswitch_138
        0x20 -> :sswitch_70e
        0x21 -> :sswitch_730
        0x22 -> :sswitch_756
        0x23 -> :sswitch_47f
        0x26 -> :sswitch_492
        0x27 -> :sswitch_4f8
        0x450 -> :sswitch_7b9
        0x451 -> :sswitch_7ca
    .end sparse-switch

    .line 1562
    :pswitch_data_89a
    .packed-switch 0x10
        :pswitch_22a
        :pswitch_22d
    .end packed-switch
.end method
