.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private eventTimestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 57667
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 57777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->conversationId_:Ljava/lang/Object;

    .line 57668
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 57669
    return-void
.end method

.method static synthetic access$78300()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 1

    .prologue
    .line 57662
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 1

    .prologue
    .line 57674
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 57672
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    .registers 3

    .prologue
    .line 57695
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    .line 57696
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 57697
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 57699
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    .registers 6

    .prologue
    .line 57713
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 57714
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57715
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 57716
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 57717
    or-int/lit8 v2, v2, 0x1

    .line 57719
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->access$78502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57720
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 57721
    or-int/lit8 v2, v2, 0x2

    .line 57723
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->eventTimestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->eventTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->access$78602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;J)J

    .line 57724
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->access$78702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;I)I

    .line 57725
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 3

    .prologue
    .line 57678
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 57679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->conversationId_:Ljava/lang/Object;

    .line 57680
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->eventTimestamp_:J

    .line 57682
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57683
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 2

    .prologue
    .line 57801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57802
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->conversationId_:Ljava/lang/Object;

    .line 57804
    return-object p0
.end method

.method public clearEventTimestamp()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 3

    .prologue
    .line 57827
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57828
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->eventTimestamp_:J

    .line 57830
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 3

    .prologue
    .line 57687
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

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
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57782
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->conversationId_:Ljava/lang/Object;

    .line 57783
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 57784
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 57785
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->conversationId_:Ljava/lang/Object;

    .line 57788
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
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 57662
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    .registers 2

    .prologue
    .line 57691
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getEventTimestamp()J
    .registers 3

    .prologue
    .line 57818
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->eventTimestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 57779
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEventTimestamp()Z
    .registers 3

    .prologue
    .line 57815
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

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
    .line 57740
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
    .line 57662
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 57662
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

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
    .line 57662
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57748
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 57749
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 57754
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57756
    :sswitch_d
    return-object p0

    .line 57761
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57762
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 57766
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57767
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->eventTimestamp_:J

    goto :goto_0

    .line 57749
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 57729
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 57736
    :cond_6
    :goto_6
    return-object p0

    .line 57730
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 57731
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    .line 57733
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->hasEventTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57734
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getEventTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->setEventTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    goto :goto_6
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 57792
    if-nez p1, :cond_8

    .line 57793
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57795
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57796
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->conversationId_:Ljava/lang/Object;

    .line 57798
    return-object p0
.end method

.method public setEventTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57821
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->bitField0_:I

    .line 57822
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->eventTimestamp_:J

    .line 57824
    return-object p0
.end method
