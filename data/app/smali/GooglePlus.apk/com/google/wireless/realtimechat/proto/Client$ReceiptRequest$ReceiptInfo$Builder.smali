.class public final Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private eventTimestamp_:J

.field private type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9753
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9867
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 9754
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->maybeForceBuilderInitialization()V

    .line 9755
    return-void
.end method

.method static synthetic access$13000()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 1

    .prologue
    .line 9748
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 1

    .prologue
    .line 9760
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9758
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    .registers 3

    .prologue
    .line 9781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    .line 9782
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9783
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9785
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    .registers 6

    .prologue
    .line 9799
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 9800
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9801
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9802
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9803
    or-int/lit8 v2, v2, 0x1

    .line 9805
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->access$13202(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 9806
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 9807
    or-int/lit8 v2, v2, 0x2

    .line 9809
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->eventTimestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->eventTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->access$13302(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;J)J

    .line 9810
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->access$13402(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;I)I

    .line 9811
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 3

    .prologue
    .line 9764
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9765
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 9766
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9767
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->eventTimestamp_:J

    .line 9768
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9769
    return-object p0
.end method

.method public clearEventTimestamp()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 3

    .prologue
    .line 9905
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9906
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->eventTimestamp_:J

    .line 9908
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 2

    .prologue
    .line 9884
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9885
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 9887
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 3

    .prologue
    .line 9773
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

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
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    .registers 2

    .prologue
    .line 9777
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEventTimestamp()J
    .registers 3

    .prologue
    .line 9896
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->eventTimestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    .registers 2

    .prologue
    .line 9872
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    return-object v0
.end method

.method public hasEventTimestamp()Z
    .registers 3

    .prologue
    .line 9893
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9869
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

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
    .line 9826
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
    .line 9748
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9748
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

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
    .line 9748
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9834
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 9835
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 9840
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9842
    :sswitch_d
    return-object p0

    .line 9847
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 9848
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v2

    .line 9849
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    if-eqz v2, :cond_0

    .line 9850
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9851
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    goto :goto_0

    .line 9856
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9857
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->eventTimestamp_:J

    goto :goto_0

    .line 9835
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9815
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9822
    :cond_6
    :goto_6
    return-object p0

    .line 9816
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9817
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    .line 9819
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->hasEventTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9820
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->getEventTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->setEventTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    goto :goto_6
.end method

.method public setEventTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 9899
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9900
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->eventTimestamp_:J

    .line 9902
    return-object p0
.end method

.method public setType(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9875
    if-nez p1, :cond_8

    .line 9876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9878
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->bitField0_:I

    .line 9879
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->type_:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    .line 9881
    return-object p0
.end method
