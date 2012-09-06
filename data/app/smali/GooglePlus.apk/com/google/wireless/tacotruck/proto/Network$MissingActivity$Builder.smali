.class public final Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
        "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$MissingActivityOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6119
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 6269
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 6120
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->maybeForceBuilderInitialization()V

    .line 6121
    return-void
.end method

.method static synthetic access$7400()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 1

    .prologue
    .line 6114
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 1

    .prologue
    .line 6126
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6124
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 3

    .prologue
    .line 6147
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    .line 6148
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6149
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6151
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 6

    .prologue
    .line 6165
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 6166
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6167
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6168
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6169
    or-int/lit8 v2, v2, 0x1

    .line 6171
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->access$7602(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6172
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6173
    or-int/lit8 v2, v2, 0x2

    .line 6175
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->access$7702(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 6176
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->access$7802(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;I)I

    .line 6177
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2

    .prologue
    .line 6130
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 6132
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6133
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 6134
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6135
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2

    .prologue
    .line 6257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6258
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 6260
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2

    .prologue
    .line 6286
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6287
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 6289
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 3

    .prologue
    .line 6139
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

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
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6238
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 6239
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6240
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6241
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 6244
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
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6114
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 2

    .prologue
    .line 6143
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    .registers 2

    .prologue
    .line 6274
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6235
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasErrorCode()Z
    .registers 3

    .prologue
    .line 6271
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 6192
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
    .line 6114
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6114
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

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
    .line 6114
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6201
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 6206
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6208
    :sswitch_d
    return-object p0

    .line 6213
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6214
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 6218
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 6219
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    move-result-object v2

    .line 6220
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    if-eqz v2, :cond_0

    .line 6221
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6222
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    goto :goto_0

    .line 6201
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 6181
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6188
    :cond_6
    :goto_6
    return-object p0

    .line 6182
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6183
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    .line 6185
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6186
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->setErrorCode(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6248
    if-nez p1, :cond_8

    .line 6249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6251
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6252
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 6254
    return-object p0
.end method

.method public setErrorCode(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6277
    if-nez p1, :cond_8

    .line 6278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6280
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 6281
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 6283
    return-object p0
.end method
