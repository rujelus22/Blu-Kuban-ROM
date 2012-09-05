.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponseOrBuilder;"
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
    .line 13653
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13767
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 13654
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->maybeForceBuilderInitialization()V

    .line 13655
    return-void
.end method

.method static synthetic access$18200()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 1

    .prologue
    .line 13648
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 1

    .prologue
    .line 13660
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13658
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 3

    .prologue
    .line 13681
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    .line 13682
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13683
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13685
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 6

    .prologue
    .line 13699
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 13700
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13701
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13702
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13703
    or-int/lit8 v2, v2, 0x1

    .line 13705
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->access$18402(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 13706
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13707
    or-int/lit8 v2, v2, 0x2

    .line 13709
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->access$18502(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;J)J

    .line 13710
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->access$18602(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;I)I

    .line 13711
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 3

    .prologue
    .line 13664
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13665
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 13666
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13667
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->timestamp_:J

    .line 13668
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13669
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 2

    .prologue
    .line 13784
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13785
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 13787
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 3

    .prologue
    .line 13805
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13806
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->timestamp_:J

    .line 13808
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 3

    .prologue
    .line 13673
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

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
    .line 13648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 13648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13648
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2

    .prologue
    .line 13677
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 13772
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 13796
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13769
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

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
    .line 13793
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

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
    .line 13648
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

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
    .line 13648
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13734
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13735
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 13740
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13742
    :sswitch_d
    return-object p0

    .line 13747
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 13748
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 13749
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 13750
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13751
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 13756
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13757
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->timestamp_:J

    goto :goto_0

    .line 13735
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 13715
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13722
    :cond_6
    :goto_6
    return-object p0

    .line 13716
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13717
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    .line 13719
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13720
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    goto :goto_6
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13775
    if-nez p1, :cond_8

    .line 13776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13778
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13779
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 13781
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->bitField0_:I

    .line 13800
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->timestamp_:J

    .line 13802
    return-object p0
.end method
