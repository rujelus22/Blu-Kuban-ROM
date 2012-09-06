.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20828
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20942
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 20829
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 20830
    return-void
.end method

.method static synthetic access$27800()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 1

    .prologue
    .line 20823
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 1

    .prologue
    .line 20835
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20833
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 3

    .prologue
    .line 20856
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    .line 20857
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20858
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20860
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 6

    .prologue
    .line 20874
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 20875
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20876
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20877
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20878
    or-int/lit8 v2, v2, 0x1

    .line 20880
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->access$28002(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 20881
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 20882
    or-int/lit8 v2, v2, 0x2

    .line 20884
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->access$28102(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;J)J

    .line 20885
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->access$28202(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;I)I

    .line 20886
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 3

    .prologue
    .line 20839
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20840
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 20841
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20842
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->timestamp_:J

    .line 20843
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20844
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 2

    .prologue
    .line 20959
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20960
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 20962
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 3

    .prologue
    .line 20980
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20981
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->timestamp_:J

    .line 20983
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 3

    .prologue
    .line 20848
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

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
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20823
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2

    .prologue
    .line 20852
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 20947
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 20971
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20944
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

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
    .line 20968
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

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
    .line 20901
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
    .line 20823
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20823
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

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
    .line 20823
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20909
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20910
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 20915
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20917
    :sswitch_d
    return-object p0

    .line 20922
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 20923
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 20924
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 20925
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20926
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 20931
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20932
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 20910
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 20890
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 20897
    :cond_6
    :goto_6
    return-object p0

    .line 20891
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 20892
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    .line 20894
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20895
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20950
    if-nez p1, :cond_8

    .line 20951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20953
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20954
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 20956
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20974
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->bitField0_:I

    .line 20975
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->timestamp_:J

    .line 20977
    return-object p0
.end method
