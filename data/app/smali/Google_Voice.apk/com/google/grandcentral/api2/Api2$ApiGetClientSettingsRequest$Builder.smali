.class public final Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34611
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 34694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34612
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 34613
    return-void
.end method

.method static synthetic access$41300()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 34606
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 34618
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34616
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 3

    .prologue
    .line 34637
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v0

    .line 34638
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 34639
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 34641
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 6

    .prologue
    .line 34645
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 34646
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    .line 34647
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 34648
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 34649
    or-int/lit8 v2, v2, 0x1

    .line 34651
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->access$41502(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34652
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->access$41602(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;I)I

    .line 34653
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 34622
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34623
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34624
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    .line 34625
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 34730
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    .line 34731
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34733
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 3

    .prologue
    .line 34629
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

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
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34699
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34700
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 34701
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34702
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34705
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
    .line 34710
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34711
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34712
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34714
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34717
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 2

    .prologue
    .line 34633
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34606
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34696
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

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
    .line 34667
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 34669
    const/4 v0, 0x0

    .line 34671
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 34657
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34663
    :cond_6
    :goto_6
    return-object p0

    .line 34658
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34659
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    .line 34660
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->access$41500(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34678
    const/4 v2, 0x0

    .line 34680
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 34685
    if-eqz v2, :cond_10

    .line 34686
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    .line 34689
    :cond_10
    return-object p0

    .line 34681
    :catch_11
    move-exception v1

    .line 34682
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    move-object v2, v0

    .line 34683
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 34685
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 34686
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

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
    .line 34606
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34606
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

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
    .line 34606
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34721
    if-nez p1, :cond_8

    .line 34722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34724
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    .line 34725
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34727
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34737
    if-nez p1, :cond_8

    .line 34738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34740
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->bitField0_:I

    .line 34741
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 34743
    return-object p0
.end method
