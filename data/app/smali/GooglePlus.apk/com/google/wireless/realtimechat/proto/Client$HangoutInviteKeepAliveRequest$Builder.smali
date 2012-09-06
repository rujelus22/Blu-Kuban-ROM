.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inviteId_:Ljava/lang/Object;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43541
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 43655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 43691
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 43542
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->maybeForceBuilderInitialization()V

    .line 43543
    return-void
.end method

.method static synthetic access$60100()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 1

    .prologue
    .line 43536
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 1

    .prologue
    .line 43548
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 43546
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 3

    .prologue
    .line 43569
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    .line 43570
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 43571
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 43573
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 6

    .prologue
    .line 43587
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 43588
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43589
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 43590
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 43591
    or-int/lit8 v2, v2, 0x1

    .line 43593
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->inviteId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->inviteId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->access$60302(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43594
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 43595
    or-int/lit8 v2, v2, 0x2

    .line 43597
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->access$60402(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 43598
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->access$60502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;I)I

    .line 43599
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 2

    .prologue
    .line 43552
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 43553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 43554
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43555
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 43556
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43557
    return-object p0
.end method

.method public clearInviteId()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 2

    .prologue
    .line 43679
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43680
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getInviteId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 43682
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 2

    .prologue
    .line 43727
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 43729
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43730
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 3

    .prologue
    .line 43561
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

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
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43536
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2

    .prologue
    .line 43565
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43660
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 43661
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 43662
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 43663
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 43666
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

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 43696
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasInviteId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43657
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 43693
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

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
    .line 43614
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
    .line 43536
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43536
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

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
    .line 43536
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43622
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 43623
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 43628
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43630
    :sswitch_d
    return-object p0

    .line 43635
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43636
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->inviteId_:Ljava/lang/Object;

    goto :goto_0

    .line 43640
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 43641
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 43642
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 43644
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 43645
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    goto :goto_0

    .line 43623
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 43603
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 43610
    :cond_6
    :goto_6
    return-object p0

    .line 43604
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->hasInviteId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 43605
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getInviteId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    .line 43607
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43608
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    goto :goto_6
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 43715
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 43717
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 43723
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43724
    return-object p0

    .line 43720
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setInviteId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43670
    if-nez p1, :cond_8

    .line 43671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43673
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43674
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->inviteId_:Ljava/lang/Object;

    .line 43676
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 43709
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 43711
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43712
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 43699
    if-nez p1, :cond_8

    .line 43700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43702
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 43704
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->bitField0_:I

    .line 43705
    return-object p0
.end method
