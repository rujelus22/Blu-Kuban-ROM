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


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24670
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 24766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 24671
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->maybeForceBuilderInitialization()V

    .line 24672
    return-void
.end method

.method static synthetic access$33400()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 1

    .prologue
    .line 24665
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 1

    .prologue
    .line 24677
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 24675
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 3

    .prologue
    .line 24696
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    .line 24697
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 24698
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 24700
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 6

    .prologue
    .line 24714
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 24715
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 24716
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 24717
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 24718
    or-int/lit8 v2, v2, 0x1

    .line 24720
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->access$33602(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24721
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->access$33702(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;I)I

    .line 24722
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 2

    .prologue
    .line 24681
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 24682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 24683
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 24684
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 2

    .prologue
    .line 24790
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 24791
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 24793
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 24665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 24665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 3

    .prologue
    .line 24688
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
    .line 24665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 24771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 24772
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 24773
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 24774
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 24777
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
    .line 24665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    .registers 2

    .prologue
    .line 24692
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24768
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

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
    .line 24665
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

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
    .line 24665
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24742
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 24743
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 24748
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24750
    :sswitch_d
    return-object p0

    .line 24755
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 24756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 24743
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 24726
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 24730
    :cond_6
    :goto_6
    return-object p0

    .line 24727
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24728
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 24781
    if-nez p1, :cond_8

    .line 24782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24784
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->bitField0_:I

    .line 24785
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData$Builder;->activityId_:Ljava/lang/Object;

    .line 24787
    return-object p0
.end method
