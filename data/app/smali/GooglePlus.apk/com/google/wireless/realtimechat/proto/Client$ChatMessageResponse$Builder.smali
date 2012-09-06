.class public final Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private messageClientId_:Ljava/lang/Object;

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1178
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 1202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 1238
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->messageClientId_:Ljava/lang/Object;

    .line 1295
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 1023
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1024
    return-void
.end method

.method static synthetic access$1000()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 1

    .prologue
    .line 1017
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 1

    .prologue
    .line 1029
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1027
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 3

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    .line 1057
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1058
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1060
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 6

    .prologue
    .line 1074
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 1075
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1076
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1077
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1078
    or-int/lit8 v2, v2, 0x1

    .line 1080
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->access$1202(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 1081
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1082
    or-int/lit8 v2, v2, 0x2

    .line 1084
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->access$1302(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1086
    or-int/lit8 v2, v2, 0x4

    .line 1088
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->messageClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->messageClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->access$1402(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1090
    or-int/lit8 v2, v2, 0x8

    .line 1092
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->access$1502(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;J)J

    .line 1093
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1094
    or-int/lit8 v2, v2, 0x10

    .line 1096
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->access$1602(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->access$1702(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;I)I

    .line 1098
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 3

    .prologue
    .line 1033
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1034
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 1035
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1036
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 1037
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1038
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->messageClientId_:Ljava/lang/Object;

    .line 1039
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1040
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->timestamp_:J

    .line 1041
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 1043
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1044
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 2

    .prologue
    .line 1319
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1320
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 1322
    return-object p0
.end method

.method public clearMessageClientId()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 2

    .prologue
    .line 1262
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1263
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->messageClientId_:Ljava/lang/Object;

    .line 1265
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 2

    .prologue
    .line 1226
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1227
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 1229
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 2

    .prologue
    .line 1195
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1196
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 1198
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 3

    .prologue
    .line 1288
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->timestamp_:J

    .line 1291
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 3

    .prologue
    .line 1048
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 1301
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1302
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1303
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 1306
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2

    .prologue
    .line 1052
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->messageClientId_:Ljava/lang/Object;

    .line 1244
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1245
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1246
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->messageClientId_:Ljava/lang/Object;

    .line 1249
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 1208
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1209
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 1213
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 1279
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 1297
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMessageClientId()Z
    .registers 3

    .prologue
    .line 1240
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 1204
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1180
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 1276
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1122
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1017
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1131
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 1136
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1138
    :sswitch_d
    return-object p0

    .line 1143
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1144
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 1145
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 1146
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1147
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 1152
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1153
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 1157
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1158
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->messageClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 1162
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1163
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 1167
    :sswitch_48
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1168
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 1131
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x2a -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1102
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1118
    :cond_6
    :goto_6
    return-object p0

    .line 1103
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1104
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    .line 1106
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1107
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    .line 1109
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->hasMessageClientId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1110
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    .line 1112
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1113
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    .line 1115
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1116
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1310
    if-nez p1, :cond_8

    .line 1311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1313
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1314
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->conversationId_:Ljava/lang/Object;

    .line 1316
    return-object p0
.end method

.method public setMessageClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1253
    if-nez p1, :cond_8

    .line 1254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1256
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1257
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->messageClientId_:Ljava/lang/Object;

    .line 1259
    return-object p0
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1217
    if-nez p1, :cond_8

    .line 1218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1220
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1221
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 1223
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1186
    if-nez p1, :cond_8

    .line 1187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1189
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1190
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 1192
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1282
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->bitField0_:I

    .line 1283
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->timestamp_:J

    .line 1285
    return-object p0
.end method
