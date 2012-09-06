.class public final Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$StreamActionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;",
        "Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$StreamActionDataOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26694
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26808
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 26844
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 26695
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->maybeForceBuilderInitialization()V

    .line 26696
    return-void
.end method

.method static synthetic access$35800()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 1

    .prologue
    .line 26689
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 1

    .prologue
    .line 26701
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26699
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 3

    .prologue
    .line 26722
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    .line 26723
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26724
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26726
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 6

    .prologue
    .line 26740
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 26741
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26742
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 26743
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 26744
    or-int/lit8 v2, v2, 0x1

    .line 26746
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->access$36002(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26747
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 26748
    or-int/lit8 v2, v2, 0x2

    .line 26750
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->access$36102(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 26751
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->access$36202(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;I)I

    .line 26752
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 2

    .prologue
    .line 26705
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 26707
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26708
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 26709
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26710
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 2

    .prologue
    .line 26832
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26833
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 26835
    return-object p0
.end method

.method public clearStreamView()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 2

    .prologue
    .line 26880
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 26882
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26883
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 3

    .prologue
    .line 26714
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

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
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26813
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 26814
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 26815
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26816
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 26819
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
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26689
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2

    .prologue
    .line 26718
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public getStreamView()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 2

    .prologue
    .line 26849
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26810
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStreamView()Z
    .registers 3

    .prologue
    .line 26846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

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
    .line 26767
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
    .line 26689
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26689
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

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
    .line 26689
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26775
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 26776
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 26781
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26783
    :sswitch_d
    return-object p0

    .line 26788
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26789
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 26793
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    .line 26794
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->hasStreamView()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 26795
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->getStreamView()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    .line 26797
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26798
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->setStreamView(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    goto :goto_0

    .line 26776
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 26756
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26763
    :cond_6
    :goto_6
    return-object p0

    .line 26757
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26758
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    .line 26760
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->hasStreamView()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26761
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getStreamView()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeStreamView(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    goto :goto_6
.end method

.method public mergeStreamView(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26868
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 26870
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 26876
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26877
    return-object p0

    .line 26873
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    goto :goto_1f
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26823
    if-nez p1, :cond_8

    .line 26824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26826
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26827
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 26829
    return-object p0
.end method

.method public setStreamView(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26862
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 26864
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26865
    return-object p0
.end method

.method public setStreamView(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26852
    if-nez p1, :cond_8

    .line 26853
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26855
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->streamView_:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    .line 26857
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 26858
    return-object p0
.end method
