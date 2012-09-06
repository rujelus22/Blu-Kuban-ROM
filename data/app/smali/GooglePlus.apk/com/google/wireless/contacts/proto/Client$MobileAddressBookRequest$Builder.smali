.class public final Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private entry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9241
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    .line 9242
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->maybeForceBuilderInitialization()V

    .line 9243
    return-void
.end method

.method static synthetic access$12300()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 1

    .prologue
    .line 9236
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 1

    .prologue
    .line 9248
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEntryIsMutable()V
    .registers 3

    .prologue
    .line 9347
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 9348
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    .line 9349
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    .line 9351
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9246
    return-void
.end method


# virtual methods
.method public addAllEntry(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 9414
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->ensureEntryIsMutable()V

    .line 9415
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9417
    return-object p0
.end method

.method public addEntry(ILcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 9407
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->ensureEntryIsMutable()V

    .line 9408
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9410
    return-object p0
.end method

.method public addEntry(ILcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9390
    if-nez p2, :cond_8

    .line 9391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9393
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->ensureEntryIsMutable()V

    .line 9394
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9396
    return-object p0
.end method

.method public addEntry(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 9400
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->ensureEntryIsMutable()V

    .line 9401
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9403
    return-object p0
.end method

.method public addEntry(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9380
    if-nez p1, :cond_8

    .line 9381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9383
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->ensureEntryIsMutable()V

    .line 9384
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9386
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
    .registers 3

    .prologue
    .line 9267
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v0

    .line 9268
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9269
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9271
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
    .registers 5

    .prologue
    .line 9285
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 9286
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    .line 9287
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 9288
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    .line 9289
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    .line 9291
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->access$12502(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;Ljava/util/List;)Ljava/util/List;

    .line 9292
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 2

    .prologue
    .line 9252
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    .line 9254
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    .line 9255
    return-object p0
.end method

.method public clearEntry()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 2

    .prologue
    .line 9420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    .line 9421
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    .line 9423
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 3

    .prologue
    .line 9259
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

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
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9236
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;
    .registers 2

    .prologue
    .line 9263
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 9360
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    return-object v0
.end method

.method public getEntryCount()I
    .registers 2

    .prologue
    .line 9357
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEntryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9354
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 9311
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
    .line 9236
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9236
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

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
    .line 9236
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 9320
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 9325
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9327
    :sswitch_d
    return-object p0

    .line 9332
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    .line 9333
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9334
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->addEntry(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;

    goto :goto_0

    .line 9320
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9296
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9307
    :cond_6
    :goto_6
    return-object p0

    .line 9297
    :cond_7
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->access$12500(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9298
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 9299
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->access$12500(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    .line 9300
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 9302
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->ensureEntryIsMutable()V

    .line 9303
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->entry_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;->access$12500(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setEntry(ILcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 9374
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->ensureEntryIsMutable()V

    .line 9375
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9377
    return-object p0
.end method

.method public setEntry(ILcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9364
    if-nez p2, :cond_8

    .line 9365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9367
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->ensureEntryIsMutable()V

    .line 9368
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequest$Builder;->entry_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9370
    return-object p0
.end method
