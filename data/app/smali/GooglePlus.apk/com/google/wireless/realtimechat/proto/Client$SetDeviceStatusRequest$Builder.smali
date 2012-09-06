.class public final Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enabled_:Z

.field private phoneNumber_:Ljava/lang/Object;

.field private senderId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31589
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 31713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 31749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 31590
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->maybeForceBuilderInitialization()V

    .line 31591
    return-void
.end method

.method static synthetic access$43400()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 1

    .prologue
    .line 31584
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 1

    .prologue
    .line 31596
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 31594
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
    .registers 3

    .prologue
    .line 31619
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    .line 31620
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 31621
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 31623
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
    .registers 6

    .prologue
    .line 31637
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 31638
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31639
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 31640
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 31641
    or-int/lit8 v2, v2, 0x1

    .line 31643
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->access$43602(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31644
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 31645
    or-int/lit8 v2, v2, 0x2

    .line 31647
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->access$43702(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31648
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 31649
    or-int/lit8 v2, v2, 0x4

    .line 31651
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->enabled_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->enabled_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->access$43802(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;Z)Z

    .line 31652
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->access$43902(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;I)I

    .line 31653
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 2

    .prologue
    .line 31600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31601
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 31602
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31603
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 31604
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->enabled_:Z

    .line 31606
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31607
    return-object p0
.end method

.method public clearEnabled()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 2

    .prologue
    .line 31799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->enabled_:Z

    .line 31802
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 2

    .prologue
    .line 31773
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31774
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 31776
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 2

    .prologue
    .line 31737
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31738
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 31740
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 3

    .prologue
    .line 31611
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

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
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31584
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
    .registers 2

    .prologue
    .line 31615
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2

    .prologue
    .line 31790
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->enabled_:Z

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31754
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 31755
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 31756
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31757
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 31760
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

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31718
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 31719
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 31720
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31721
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 31724
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

.method public hasEnabled()Z
    .registers 3

    .prologue
    .line 31787
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 31751
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 31715
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

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
    .line 31671
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
    .line 31584
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 31584
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

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
    .line 31584
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31679
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 31680
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 31685
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31687
    :sswitch_d
    return-object p0

    .line 31692
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31693
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 31697
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31698
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 31702
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31703
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->enabled_:Z

    goto :goto_0

    .line 31680
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 31657
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 31667
    :cond_6
    :goto_6
    return-object p0

    .line 31658
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31659
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    .line 31661
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 31662
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    .line 31664
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31665
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->setEnabled(Z)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    goto :goto_6
.end method

.method public setEnabled(Z)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31793
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31794
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->enabled_:Z

    .line 31796
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31764
    if-nez p1, :cond_8

    .line 31765
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31767
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31768
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 31770
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31728
    if-nez p1, :cond_8

    .line 31729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31731
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->bitField0_:I

    .line 31732
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->senderId_:Ljava/lang/Object;

    .line 31734
    return-object p0
.end method
