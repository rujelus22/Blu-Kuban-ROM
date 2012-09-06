.class public final Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$SuggestionTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$SuggestionType;",
        "Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Contact$SuggestionTypeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5356
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5456
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5357
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->maybeForceBuilderInitialization()V

    .line 5358
    return-void
.end method

.method static synthetic access$6800()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 1

    .prologue
    .line 5351
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 1

    .prologue
    .line 5363
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5361
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 3

    .prologue
    .line 5382
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    .line 5383
    .local v0, result:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5384
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5386
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 6

    .prologue
    .line 5400
    new-instance v1, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;-><init>(Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V

    .line 5401
    .local v1, result:Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    .line 5402
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5403
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5404
    or-int/lit8 v2, v2, 0x1

    .line 5406
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->access$7002(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5407
    #setter for: Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->access$7102(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;I)I

    .line 5408
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 2

    .prologue
    .line 5367
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5368
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5369
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    .line 5370
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 2

    .prologue
    .line 5473
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    .line 5474
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5476
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 3

    .prologue
    .line 5374
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

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
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5351
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;
    .registers 2

    .prologue
    .line 5378
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    .registers 2

    .prologue
    .line 5461
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5458
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

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
    .line 5420
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
    .line 5351
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5351
    check-cast p1, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

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
    .line 5351
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5428
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5429
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 5434
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5436
    :sswitch_d
    return-object p0

    .line 5441
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5442
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    move-result-object v2

    .line 5443
    .local v2, value:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    if-eqz v2, :cond_0

    .line 5444
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    .line 5445
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    goto :goto_0

    .line 5429
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SuggestionType;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 5412
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SuggestionType;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5416
    :cond_6
    :goto_6
    return-object p0

    .line 5413
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5414
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType;->getType()Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->setType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;

    goto :goto_6
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5464
    if-nez p1, :cond_8

    .line 5465
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5467
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->bitField0_:I

    .line 5468
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    .line 5470
    return-object p0
.end method
