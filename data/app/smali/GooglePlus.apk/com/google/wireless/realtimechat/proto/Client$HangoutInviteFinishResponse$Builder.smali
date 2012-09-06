.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 46039
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 46153
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 46177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 46040
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->maybeForceBuilderInitialization()V

    .line 46041
    return-void
.end method

.method static synthetic access$63700()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 1

    .prologue
    .line 46034
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 1

    .prologue
    .line 46046
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 46044
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 3

    .prologue
    .line 46067
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    .line 46068
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 46069
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 46071
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 6

    .prologue
    .line 46085
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 46086
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46087
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 46088
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 46089
    or-int/lit8 v2, v2, 0x1

    .line 46091
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->access$63902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 46092
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 46093
    or-int/lit8 v2, v2, 0x2

    .line 46095
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->access$64002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46096
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->access$64102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;I)I

    .line 46097
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 2

    .prologue
    .line 46050
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 46051
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 46052
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46053
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 46054
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46055
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 2

    .prologue
    .line 46201
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46202
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 46204
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 2

    .prologue
    .line 46170
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46171
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 46173
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 3

    .prologue
    .line 46059
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

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
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46034
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2

    .prologue
    .line 46063
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 46182
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 46183
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 46184
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 46185
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 46188
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
    .line 46158
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 46179
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

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

    .line 46155
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 46112
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
    .line 46034
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 46034
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

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
    .line 46034
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46120
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 46121
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 46126
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46128
    :sswitch_d
    return-object p0

    .line 46133
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 46134
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 46135
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 46136
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46137
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 46142
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46143
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 46121
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 46101
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 46108
    :cond_6
    :goto_6
    return-object p0

    .line 46102
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 46103
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    .line 46105
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46106
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    goto :goto_6
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46192
    if-nez p1, :cond_8

    .line 46193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46195
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46196
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 46198
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46161
    if-nez p1, :cond_8

    .line 46162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46164
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->bitField0_:I

    .line 46165
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 46167
    return-object p0
.end method
