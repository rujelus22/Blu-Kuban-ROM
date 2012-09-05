.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19065
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 19161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 19066
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->maybeForceBuilderInitialization()V

    .line 19067
    return-void
.end method

.method static synthetic access$25700()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 1

    .prologue
    .line 19060
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 1

    .prologue
    .line 19072
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 19070
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    .registers 3

    .prologue
    .line 19091
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    .line 19092
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 19093
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 19095
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19060
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    .registers 6

    .prologue
    .line 19109
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 19110
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    .line 19111
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 19112
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 19113
    or-int/lit8 v2, v2, 0x1

    .line 19115
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->access$25902(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19116
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->access$26002(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;I)I

    .line 19117
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19060
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19060
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 2

    .prologue
    .line 19076
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 19077
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 19078
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    .line 19079
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 2

    .prologue
    .line 19185
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    .line 19186
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 19188
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 19060
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 19060
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 3

    .prologue
    .line 19083
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

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
    .line 19060
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 19166
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 19167
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 19168
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19169
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 19172
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
    .line 19060
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19060
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;
    .registers 2

    .prologue
    .line 19087
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19163
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 19060
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

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
    .line 19060
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 19138
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 19143
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19145
    :sswitch_d
    return-object p0

    .line 19150
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    .line 19151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 19138
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 19121
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 19125
    :cond_6
    :goto_6
    return-object p0

    .line 19122
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19123
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 19176
    if-nez p1, :cond_8

    .line 19177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19179
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->bitField0_:I

    .line 19180
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 19182
    return-object p0
.end method
