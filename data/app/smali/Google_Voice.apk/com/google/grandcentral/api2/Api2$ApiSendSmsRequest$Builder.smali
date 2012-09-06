.class public final Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private conversationId_:Ljava/lang/Object;

.field private createPhonebookIfNotExist_:Z

.field private dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

.field private messageId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private outgoingDestination_:Lcom/google/protobuf/LazyStringList;

.field private sendErrorSmsOnFreeQuotaError_:Z

.field private smsMessage_:Ljava/lang/Object;

.field private subscriberDid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 7772
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7956
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 8009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 8062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 8115
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 8136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 8189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8242
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 8307
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->sendErrorSmsOnFreeQuotaError_:Z

    .line 8328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    .line 7773
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 7774
    return-void
.end method

.method static synthetic access$8400()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 1

    .prologue
    .line 7767
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 1

    .prologue
    .line 7779
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMessageIdIsMutable()V
    .registers 3

    .prologue
    .line 8330
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 8331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    .line 8332
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8334
    :cond_17
    return-void
.end method

.method private ensureOutgoingDestinationIsMutable()V
    .registers 3

    .prologue
    .line 8244
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 8245
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 8246
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8248
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7777
    return-void
.end method


# virtual methods
.method public addAllMessageId(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 8360
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureMessageIdIsMutable()V

    .line 8361
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8363
    return-object p0
.end method

.method public addAllOutgoingDestination(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 8284
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureOutgoingDestinationIsMutable()V

    .line 8285
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8287
    return-object p0
.end method

.method public addMessageId(J)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 8353
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureMessageIdIsMutable()V

    .line 8354
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8356
    return-object p0
.end method

.method public addOutgoingDestination(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8274
    if-nez p1, :cond_8

    .line 8275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8277
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureOutgoingDestinationIsMutable()V

    .line 8278
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 8280
    return-object p0
.end method

.method public addOutgoingDestinationBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8297
    if-nez p1, :cond_8

    .line 8298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8300
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureOutgoingDestinationIsMutable()V

    .line 8301
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 8303
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 3

    .prologue
    .line 7814
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    .line 7815
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7816
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7818
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 6

    .prologue
    .line 7822
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 7823
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7824
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7825
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7826
    or-int/lit8 v2, v2, 0x1

    .line 7828
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$8602(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7829
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 7830
    or-int/lit8 v2, v2, 0x2

    .line 7832
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$8702(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7833
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 7834
    or-int/lit8 v2, v2, 0x4

    .line 7836
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$8802(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7837
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 7838
    or-int/lit8 v2, v2, 0x8

    .line 7840
    :cond_35
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->createPhonebookIfNotExist_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->createPhonebookIfNotExist_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$8902(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Z)Z

    .line 7841
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 7842
    or-int/lit8 v2, v2, 0x10

    .line 7844
    :cond_42
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9002(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7845
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 7846
    or-int/lit8 v2, v2, 0x20

    .line 7848
    :cond_4f
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9102(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7849
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6b

    .line 7850
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 7852
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7854
    :cond_6b
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9202(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 7855
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_78

    .line 7856
    or-int/lit8 v2, v2, 0x40

    .line 7858
    :cond_78
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->sendErrorSmsOnFreeQuotaError_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->sendErrorSmsOnFreeQuotaError_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9302(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Z)Z

    .line 7859
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_93

    .line 7860
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    .line 7861
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7863
    :cond_93
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9402(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/util/List;)Ljava/util/List;

    .line 7864
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9502(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;I)I

    .line 7865
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 7783
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 7785
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 7787
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 7789
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7790
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 7791
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 7793
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 7795
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7796
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 7797
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7798
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->sendErrorSmsOnFreeQuotaError_:Z

    .line 7799
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7800
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    .line 7801
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7802
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 7992
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7993
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 7995
    return-object p0
.end method

.method public clearConversationId()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 8225
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8226
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8228
    return-object p0
.end method

.method public clearCreatePhonebookIfNotExist()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 8129
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 8132
    return-object p0
.end method

.method public clearDEPRECATEDOutgoingNumber()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 8045
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8046
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDEPRECATEDOutgoingNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 8048
    return-object p0
.end method

.method public clearMessageId()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 8366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    .line 8367
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8369
    return-object p0
.end method

.method public clearOutgoingDestination()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 8290
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 8291
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8293
    return-object p0
.end method

.method public clearSendErrorSmsOnFreeQuotaError()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 8321
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->sendErrorSmsOnFreeQuotaError_:Z

    .line 8324
    return-object p0
.end method

.method public clearSmsMessage()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 8172
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8173
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getSmsMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 8175
    return-object p0
.end method

.method public clearSubscriberDid()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 8098
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8099
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getSubscriberDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 8101
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3

    .prologue
    .line 7806
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

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
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7961
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 7962
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 7963
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 7964
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 7967
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
    .line 7972
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 7973
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7974
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7976
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 7979
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

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8194
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8195
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8196
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8197
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8200
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

.method public getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8205
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8206
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8207
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8209
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8212
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

.method public getCreatePhonebookIfNotExist()Z
    .registers 2

    .prologue
    .line 8120
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->createPhonebookIfNotExist_:Z

    return v0
.end method

.method public getDEPRECATEDOutgoingNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8014
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 8015
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8016
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8017
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 8020
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

.method public getDEPRECATEDOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8025
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 8026
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8027
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8029
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 8032
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 2

    .prologue
    .line 7810
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7767
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 8343
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageIdCount()I
    .registers 2

    .prologue
    .line 8340
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8337
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingDestination(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 8257
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOutgoingDestinationBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 8261
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingDestinationCount()I
    .registers 2

    .prologue
    .line 8254
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getOutgoingDestinationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8251
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSendErrorSmsOnFreeQuotaError()Z
    .registers 2

    .prologue
    .line 8312
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->sendErrorSmsOnFreeQuotaError_:Z

    return v0
.end method

.method public getSmsMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8141
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 8142
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8143
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8144
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 8147
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

.method public getSmsMessageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8152
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 8153
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8154
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8156
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 8159
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

.method public getSubscriberDid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8067
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 8068
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8069
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8070
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 8073
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

.method public getSubscriberDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8078
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 8079
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8080
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8082
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 8085
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

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7958
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 8191
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCreatePhonebookIfNotExist()Z
    .registers 3

    .prologue
    .line 8117
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDEPRECATEDOutgoingNumber()Z
    .registers 3

    .prologue
    .line 8011
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

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

.method public hasSendErrorSmsOnFreeQuotaError()Z
    .registers 3

    .prologue
    .line 8309
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSmsMessage()Z
    .registers 3

    .prologue
    .line 8138
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSubscriberDid()Z
    .registers 3

    .prologue
    .line 8064
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 7925
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 7933
    :cond_7
    :goto_7
    return v0

    .line 7929
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->hasSmsMessage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7933
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 7869
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7921
    :cond_6
    :goto_6
    return-object p0

    .line 7870
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7871
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7872
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$8600(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 7875
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasDEPRECATEDOutgoingNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7876
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7877
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$8700(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 7880
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasSubscriberDid()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 7881
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7882
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$8800(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 7885
    :cond_3d
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasCreatePhonebookIfNotExist()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 7886
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getCreatePhonebookIfNotExist()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    .line 7888
    :cond_4a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasSmsMessage()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 7889
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7890
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9000(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 7893
    :cond_5c
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 7894
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7895
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9100(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 7898
    :cond_6e
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9200(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 7899
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 7900
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9200(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 7901
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7908
    :cond_8c
    :goto_8c
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasSendErrorSmsOnFreeQuotaError()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 7909
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getSendErrorSmsOnFreeQuotaError()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->setSendErrorSmsOnFreeQuotaError(Z)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    .line 7911
    :cond_99
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9400(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7912
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 7913
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9400(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    .line 7914
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 7903
    :cond_b9
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureOutgoingDestinationIsMutable()V

    .line 7904
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9200(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8c

    .line 7916
    :cond_c6
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureMessageIdIsMutable()V

    .line 7917
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->access$9400(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7940
    const/4 v2, 0x0

    .line 7942
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 7947
    if-eqz v2, :cond_10

    .line 7948
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    .line 7951
    :cond_10
    return-object p0

    .line 7943
    :catch_11
    move-exception v1

    .line 7944
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-object v2, v0

    .line 7945
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 7947
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 7948
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

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
    .line 7767
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 7767
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

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
    .line 7767
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7983
    if-nez p1, :cond_8

    .line 7984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7986
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 7987
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 7989
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7999
    if-nez p1, :cond_8

    .line 8000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8002
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8003
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 8005
    return-object p0
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8216
    if-nez p1, :cond_8

    .line 8217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8219
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8220
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8222
    return-object p0
.end method

.method public setConversationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8232
    if-nez p1, :cond_8

    .line 8233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8235
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8236
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 8238
    return-object p0
.end method

.method public setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8123
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8124
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->createPhonebookIfNotExist_:Z

    .line 8126
    return-object p0
.end method

.method public setDEPRECATEDOutgoingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8036
    if-nez p1, :cond_8

    .line 8037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8039
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8040
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 8042
    return-object p0
.end method

.method public setDEPRECATEDOutgoingNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8052
    if-nez p1, :cond_8

    .line 8053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8055
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8056
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 8058
    return-object p0
.end method

.method public setMessageId(IJ)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8347
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureMessageIdIsMutable()V

    .line 8348
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->messageId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8350
    return-object p0
.end method

.method public setOutgoingDestination(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8265
    if-nez p2, :cond_8

    .line 8266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8268
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->ensureOutgoingDestinationIsMutable()V

    .line 8269
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8271
    return-object p0
.end method

.method public setSendErrorSmsOnFreeQuotaError(Z)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8315
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8316
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->sendErrorSmsOnFreeQuotaError_:Z

    .line 8318
    return-object p0
.end method

.method public setSmsMessage(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8163
    if-nez p1, :cond_8

    .line 8164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8166
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8167
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 8169
    return-object p0
.end method

.method public setSmsMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8179
    if-nez p1, :cond_8

    .line 8180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8182
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8183
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->smsMessage_:Ljava/lang/Object;

    .line 8185
    return-object p0
.end method

.method public setSubscriberDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8089
    if-nez p1, :cond_8

    .line 8090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8092
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8093
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 8095
    return-object p0
.end method

.method public setSubscriberDidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8105
    if-nez p1, :cond_8

    .line 8106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8108
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->bitField0_:I

    .line 8109
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->subscriberDid_:Ljava/lang/Object;

    .line 8111
    return-object p0
.end method
