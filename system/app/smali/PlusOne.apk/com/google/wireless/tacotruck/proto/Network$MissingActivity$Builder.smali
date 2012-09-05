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
    .line 5774
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5888
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 5924
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5775
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->maybeForceBuilderInitialization()V

    .line 5776
    return-void
.end method

.method static synthetic access$7000()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 1

    .prologue
    .line 5769
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 1

    .prologue
    .line 5781
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5779
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 3

    .prologue
    .line 5802
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    .line 5803
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5804
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5806
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 6

    .prologue
    .line 5820
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 5821
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5822
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5823
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5824
    or-int/lit8 v2, v2, 0x1

    .line 5826
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->access$7202(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5827
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5828
    or-int/lit8 v2, v2, 0x2

    .line 5830
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->access$7302(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5831
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->access$7402(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;I)I

    .line 5832
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2

    .prologue
    .line 5785
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 5787
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5788
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5789
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5790
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2

    .prologue
    .line 5912
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5913
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 5915
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 2

    .prologue
    .line 5941
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5942
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5944
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 3

    .prologue
    .line 5794
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
    .line 5769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5893
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 5894
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5895
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5896
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 5899
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
    .line 5769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 2

    .prologue
    .line 5798
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    .registers 2

    .prologue
    .line 5929
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5890
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
    .line 5926
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
    .line 5769
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

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
    .line 5769
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
    .line 5855
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5856
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 5861
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5863
    :sswitch_d
    return-object p0

    .line 5868
    :sswitch_e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5869
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 5873
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5874
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    move-result-object v2

    .line 5875
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    if-eqz v2, :cond_0

    .line 5876
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5877
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    goto :goto_0

    .line 5856
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
    .line 5836
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5843
    :cond_6
    :goto_6
    return-object p0

    .line 5837
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5838
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    .line 5840
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5841
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->setErrorCode(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5903
    if-nez p1, :cond_8

    .line 5904
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5906
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5907
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->activityId_:Ljava/lang/Object;

    .line 5909
    return-object p0
.end method

.method public setErrorCode(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5932
    if-nez p1, :cond_8

    .line 5933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5935
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->bitField0_:I

    .line 5936
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->errorCode_:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5938
    return-object p0
.end method
