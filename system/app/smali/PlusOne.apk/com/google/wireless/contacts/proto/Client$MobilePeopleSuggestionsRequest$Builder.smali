.class public final Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;",
        "Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7548
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7449
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 7450
    return-void
.end method

.method static synthetic access$9700()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 1

    .prologue
    .line 7443
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 1

    .prologue
    .line 7455
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 7453
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    .registers 3

    .prologue
    .line 7474
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    .line 7475
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7476
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7478
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    .registers 6

    .prologue
    .line 7492
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 7493
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    .line 7494
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7495
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 7496
    or-int/lit8 v2, v2, 0x1

    .line 7498
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->access$9902(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7499
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->access$10002(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;I)I

    .line 7500
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 7459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 7460
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7461
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    .line 7462
    return-object p0
.end method

.method public clearFallbackSuggestionType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 2

    .prologue
    .line 7584
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7586
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    .line 7587
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 7443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 7443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 3

    .prologue
    .line 7466
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

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
    .line 7443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 7443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;
    .registers 2

    .prologue
    .line 7470
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 2

    .prologue
    .line 7553
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    return-object v0
.end method

.method public hasFallbackSuggestionType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7550
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeFallbackSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 7572
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 7574
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7580
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    .line 7581
    return-object p0

    .line 7577
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    goto :goto_1f
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
    .line 7443
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

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
    .line 7443
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7520
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7521
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 7526
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7528
    :sswitch_d
    return-object p0

    .line 7533
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    .line 7534
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->hasFallbackSuggestionType()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 7535
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->getFallbackSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    .line 7537
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7538
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->setFallbackSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    goto :goto_0

    .line 7521
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 7504
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7508
    :cond_6
    :goto_6
    return-object p0

    .line 7505
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->hasFallbackSuggestionType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7506
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest;->getFallbackSuggestionType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->mergeFallbackSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;

    goto :goto_6
.end method

.method public setFallbackSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 7566
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7568
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    .line 7569
    return-object p0
.end method

.method public setFallbackSuggestionType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7556
    if-nez p1, :cond_8

    .line 7557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7559
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->fallbackSuggestionType_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .line 7561
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsRequest$Builder;->bitField0_:I

    .line 7562
    return-object p0
.end method
