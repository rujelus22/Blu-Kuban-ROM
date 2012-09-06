.class public Lcom/google/android/apps/plus/realtimechat/BunchCommands;
.super Ljava/lang/Object;
.source "BunchCommands.java"


# static fields
.field public static final MAX_EVENTS_PER_REQUEST:I

.field private static final SESSION_ID:Ljava/lang/String;

.field private static mRequestId:S


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 55
    const-wide/high16 v0, 0x4039

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->MAX_EVENTS_PER_REQUEST:I

    .line 58
    const-string v0, "%s%08x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "c:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->SESSION_ID:Ljava/lang/String;

    .line 61
    sput-short v4, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->mRequestId:S

    return-void
.end method

.method private static createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 8

    .prologue
    .line 431
    sget-object v2, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->SESSION_ID:Ljava/lang/String;

    monitor-enter v2

    .line 432
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->SESSION_ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-short v6, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->mRequestId:S

    add-int/lit8 v7, v6, 0x1

    int-to-short v7, v7

    sput-short v7, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->mRequestId:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, clientId:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 434
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public static createConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 11
    .parameter "conversation"
    .parameter "messageClientId"
    .parameter "messageText"
    .parameter "photoUrl"
    .parameter "isRetry"

    .prologue
    .line 103
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    .line 104
    .local v0, builder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 105
    invoke-virtual {v0, p4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 106
    if-eqz p3, :cond_57

    .line 107
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v4

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setPhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->addContent(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 114
    :goto_1f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setConversationClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v3

    .line 119
    .local v3, request:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 120
    .local v2, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v3, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    goto :goto_47

    .line 110
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v3           #request:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    :cond_57
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->addContent(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    goto :goto_1f

    .line 122
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #request:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    :cond_63
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    return-object v4
.end method

.method public static createUser(Ljava/lang/String;J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 6
    .parameter "registrationId"
    .parameter "androidId"

    .prologue
    .line 73
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    .line 75
    .local v0, userCreationRequestBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    if-eqz p0, :cond_31

    .line 76
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setDeviceType(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setRegistrationType(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setAndroidRegistrationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setAndroidId(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setLocale(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->setDeviceRegistration(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    .line 85
    :cond_31
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getConversationList(J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 5
    .parameter "since"

    .prologue
    .line 128
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->SINCE:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 137
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;->ID:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 11
    .parameter "conversationId"
    .parameter "from"
    .parameter "to"
    .parameter "maxEvents"

    .prologue
    const-wide/16 v3, 0x0

    .line 146
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setCount(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;->LATEST:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setOrder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Order;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    .line 151
    .local v0, eventStreamRequestBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    cmp-long v1, p1, v3

    if-eqz v1, :cond_1b

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setStart(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 154
    :cond_1b
    cmp-long v1, p3, v3

    if-eqz v1, :cond_22

    .line 155
    invoke-virtual {v0, p3, p4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->setEnd(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 157
    :cond_22
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    return-object v1
.end method

.method public static getOOBSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3

    .prologue
    .line 349
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ONLY_NEW:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->setSuggestionsType(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getSuggestionsRequest(Ljava/util/Collection;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, participantIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->addAllParticipantId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static getUserInfo(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3
    .parameter "participantId"

    .prologue
    .line 64
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    .line 67
    .local v0, request:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    return-object v1
.end method

.method public static inviteParticipants(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 7
    .parameter "conversationId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, participants:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v1

    .line 194
    .local v1, inviteBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 195
    .local v2, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    goto :goto_c

    .line 202
    .end local v2           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_38
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    return-object v3
.end method

.method public static leaveConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 208
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static ping(J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 4
    .parameter "timestamp"

    .prologue
    .line 247
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static presenceRequest(Ljava/lang/String;ZZ)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 6
    .parameter "conversationId"
    .parameter "isPresent"
    .parameter "reciprocate"

    .prologue
    .line 305
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->setReciprocate(Z)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v2

    if-eqz p1, :cond_21

    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->FOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    :goto_14
    invoke-virtual {v2, v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0

    :cond_21
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->UNFOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    goto :goto_14
.end method

.method public static replyToInviteRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 5
    .parameter "conversationId"
    .parameter "userId"

    .prologue
    .line 279
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;->ACCEPT:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;

    .line 280
    .local v0, reply:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->setReply(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Reply;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->setReplyToId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    return-object v1
.end method

.method public static retry(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 14
    .parameter "request"

    .prologue
    const/4 v12, 0x1

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->SESSION_ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":%x"

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-short v10, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->mRequestId:S

    add-int/lit8 v11, v10, 0x1

    int-to-short v11, v11

    sput-short v11, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->mRequestId:S

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, clientId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasChatMessageRequest()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 360
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->retryChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v3

    .line 363
    .local v3, newChatMsg:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v6

    .line 385
    .end local v3           #newChatMsg:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    :goto_48
    return-object v6

    .line 367
    :cond_49
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRequest()Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 368
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v1

    .line 369
    .local v1, convRequest:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->retryChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v3

    .line 371
    .local v3, newChatMsg:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getConversationClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setConversationClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v4

    .line 376
    .local v4, newConv:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getParticipantList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 377
    .local v5, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v4, v5}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    goto :goto_7f

    .line 379
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_8f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v6

    goto :goto_48

    .line 385
    .end local v1           #convRequest:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #newChatMsg:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .end local v4           #newConv:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    :cond_a0
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v6

    goto :goto_48
.end method

.method private static retryChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 5
    .parameter "chatMsg"

    .prologue
    const/4 v3, 0x0

    .line 411
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    .line 412
    .local v0, builder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 413
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 414
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 415
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContentCount()I

    move-result v2

    if-lez v2, :cond_45

    .line 416
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v1

    .line 417
    .local v1, contentBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    invoke-virtual {p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasPhotoUrl()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 418
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setPhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    .line 424
    :goto_42
    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->addContent(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 426
    .end local v1           #contentBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    :cond_45
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    return-object v2

    .line 422
    .restart local v1       #contentBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    :cond_4a
    invoke-virtual {p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    goto :goto_42
.end method

.method private static retryChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 5
    .parameter "chatMsg"

    .prologue
    const/4 v3, 0x0

    .line 392
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    .line 393
    .local v0, builder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getMessageClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 394
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 395
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 396
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getContentCount()I

    move-result v2

    if-lez v2, :cond_45

    .line 397
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v1

    .line 398
    .local v1, contentBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    invoke-virtual {p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasPhotoUrl()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 399
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setPhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    .line 405
    :goto_42
    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->addContent(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 407
    .end local v1           #contentBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    :cond_45
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    return-object v2

    .line 403
    .restart local v1       #contentBuilder:Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    :cond_4a
    invoke-virtual {p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    goto :goto_42
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 8
    .parameter "conversationId"
    .parameter "messageClientId"
    .parameter "text"
    .parameter "photoUrl"
    .parameter "isRetry"

    .prologue
    .line 173
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    .line 174
    .local v0, builder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 175
    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 176
    invoke-virtual {v0, p4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->setRetry(Z)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 177
    if-eqz p3, :cond_2f

    .line 178
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->setUrl(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setPhotoMetadata(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->addContent(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 185
    :goto_22
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    return-object v1

    .line 181
    :cond_2f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->setText(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->addContent(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    goto :goto_22
.end method

.method public static sendReadReceipts(Ljava/lang/String;Ljava/util/List;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 10
    .parameter "conversationId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, timestamps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 231
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 232
    .local v4, timestamp:Ljava/lang/Long;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->setEventTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-virtual {v5, v6}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v1

    .line 236
    .local v1, info:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 238
    .end local v1           #info:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    .end local v4           #timestamp:Ljava/lang/Long;
    :cond_2f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->addAllReceiptInfo(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v3

    .line 241
    .local v3, receiptBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v5

    return-object v5
.end method

.method public static sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 8
    .parameter "conversationId"
    .parameter "timestamp"
    .parameter "type"

    .prologue
    .line 216
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->setEventTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    .line 220
    .local v0, info:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->addReceiptInfo(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v1

    .line 223
    .local v1, receiptBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v2

    return-object v2
.end method

.method public static setAcl(I)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 4
    .parameter "acl"

    .prologue
    .line 297
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->setAcl(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static setConversationMuted(Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 4
    .parameter "conversationId"
    .parameter "isMuted"

    .prologue
    .line 256
    if-eqz p1, :cond_9

    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->MUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    .line 258
    .local v0, type:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    :goto_4
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->setConversationPreference(Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    return-object v1

    .line 256
    .end local v0           #type:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;
    :cond_9
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;->UNMUTE:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;

    goto :goto_4
.end method

.method public static setConversationName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 4
    .parameter "conversationId"
    .parameter "name"

    .prologue
    .line 289
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->setNewDisplayName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method private static setConversationPreference(Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 4
    .parameter "conversationId"
    .parameter "type"

    .prologue
    .line 270
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Type;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static tileEventRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 10
    .parameter "conversationId"
    .parameter "tileType"
    .parameter "tileVersion"
    .parameter "tileEventType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;"
        }
    .end annotation

    .prologue
    .line 323
    .local p4, tileEventData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setTileType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setTileVersion(I)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->setEventType(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    .line 329
    .local v0, builder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    .local v1, eventData:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->addEventData(Lcom/google/wireless/realtimechat/proto/Data$KeyValue$Builder;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    goto :goto_1c

    .line 335
    .end local v1           #eventData:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_44
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    return-object v3
.end method

.method public static typingRequest(Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 4
    .parameter "conversationId"
    .parameter "type"

    .prologue
    .line 314
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public static unregisterDevice(Ljava/lang/String;J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 6
    .parameter "registrationId"
    .parameter "androidId"

    .prologue
    .line 91
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setDeviceType(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->UNREGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setRegistrationType(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setAndroidId(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    .line 96
    .local v0, deviceRegistration:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createBunchClientRequestBuilderWithClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    return-object v1
.end method
