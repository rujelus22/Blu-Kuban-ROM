.class public final Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ProfileRequestMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;",
        "Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$ProfileRequestMaskOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private includeLocationMapUrl_:Z

.field private includeLocationPoints_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5340
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationMapUrl_:Z

    .line 5341
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->maybeForceBuilderInitialization()V

    .line 5342
    return-void
.end method

.method static synthetic access$6600()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 1

    .prologue
    .line 5335
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 1

    .prologue
    .line 5347
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5345
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    .registers 3

    .prologue
    .line 5368
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    .line 5369
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5370
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5372
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5335
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    .registers 6

    .prologue
    .line 5386
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;-><init>(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 5387
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5388
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5389
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5390
    or-int/lit8 v2, v2, 0x1

    .line 5392
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationPoints_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationPoints_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->access$6802(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;Z)Z

    .line 5393
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5394
    or-int/lit8 v2, v2, 0x2

    .line 5396
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationMapUrl_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationMapUrl_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->access$6902(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;Z)Z

    .line 5397
    #setter for: Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->access$7002(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;I)I

    .line 5398
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5335
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5335
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 2

    .prologue
    .line 5351
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationPoints_:Z

    .line 5353
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationMapUrl_:Z

    .line 5355
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5356
    return-object p0
.end method

.method public clearIncludeLocationMapUrl()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 2

    .prologue
    .line 5485
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationMapUrl_:Z

    .line 5488
    return-object p0
.end method

.method public clearIncludeLocationPoints()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 2

    .prologue
    .line 5464
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationPoints_:Z

    .line 5467
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5335
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5335
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 3

    .prologue
    .line 5360
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

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
    .line 5335
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5335
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5335
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    .registers 2

    .prologue
    .line 5364
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeLocationMapUrl()Z
    .registers 2

    .prologue
    .line 5476
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationMapUrl_:Z

    return v0
.end method

.method public getIncludeLocationPoints()Z
    .registers 2

    .prologue
    .line 5455
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationPoints_:Z

    return v0
.end method

.method public hasIncludeLocationMapUrl()Z
    .registers 3

    .prologue
    .line 5473
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

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

.method public hasIncludeLocationPoints()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5452
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

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
    .line 5335
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

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
    .line 5335
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5421
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 5422
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 5427
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5429
    :sswitch_d
    return-object p0

    .line 5434
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5435
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationPoints_:Z

    goto :goto_0

    .line 5439
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationMapUrl_:Z

    goto :goto_0

    .line 5422
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 5402
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5409
    :cond_6
    :goto_6
    return-object p0

    .line 5403
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->hasIncludeLocationPoints()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5404
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getIncludeLocationPoints()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->setIncludeLocationPoints(Z)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    .line 5406
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->hasIncludeLocationMapUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5407
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getIncludeLocationMapUrl()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->setIncludeLocationMapUrl(Z)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    goto :goto_6
.end method

.method public setIncludeLocationMapUrl(Z)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5479
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5480
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationMapUrl_:Z

    .line 5482
    return-object p0
.end method

.method public setIncludeLocationPoints(Z)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5458
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->bitField0_:I

    .line 5459
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->includeLocationPoints_:Z

    .line 5461
    return-object p0
.end method
