.class public final Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiStatus;",
        "Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiStatusOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private status_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 752
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 640
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->maybeForceBuilderInitialization()V

    .line 641
    return-void
.end method

.method static synthetic access$400()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 1

    .prologue
    .line 634
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 1

    .prologue
    .line 646
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 644
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 3

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    .line 668
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 669
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 671
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 6

    .prologue
    .line 675
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 676
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 677
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 678
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 679
    or-int/lit8 v2, v2, 0x1

    .line 681
    :cond_10
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->status_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiStatus;->status_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->access$602(Lcom/google/grandcentral/api2/Api2$ApiStatus;I)I

    .line 682
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 683
    or-int/lit8 v2, v2, 0x2

    .line 685
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->access$702(Lcom/google/grandcentral/api2/Api2$ApiStatus;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->access$802(Lcom/google/grandcentral/api2/Api2$ApiStatus;I)I

    .line 687
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 2

    .prologue
    .line 650
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 651
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->status_:I

    .line 652
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 654
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 655
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 2

    .prologue
    .line 788
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 789
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 791
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 2

    .prologue
    .line 745
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->status_:I

    .line 748
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 3

    .prologue
    .line 659
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

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
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 758
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 759
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 763
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 768
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 769
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 770
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 772
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 775
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 663
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 736
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->status_:I

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    .line 754
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

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

    .line 733
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

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
    .line 704
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->hasStatus()Z

    move-result v0

    if-nez v0, :cond_8

    .line 706
    const/4 v0, 0x0

    .line 708
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 691
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 700
    :cond_6
    :goto_6
    return-object p0

    .line 692
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 693
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->setStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 695
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 696
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 697
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->access$700(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    const/4 v2, 0x0

    .line 717
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 722
    if-eqz v2, :cond_10

    .line 723
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 726
    :cond_10
    return-object p0

    .line 718
    :catch_11
    move-exception v1

    .line 719
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-object v2, v0

    .line 720
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 722
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 723
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    :cond_21
    throw v3
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
    .line 634
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 634
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

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
    .line 634
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 779
    if-nez p1, :cond_8

    .line 780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 782
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 783
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 785
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 795
    if-nez p1, :cond_8

    .line 796
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 798
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 799
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 801
    return-object p0
.end method

.method public setStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 739
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->bitField0_:I

    .line 740
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->status_:I

    .line 742
    return-object p0
.end method
