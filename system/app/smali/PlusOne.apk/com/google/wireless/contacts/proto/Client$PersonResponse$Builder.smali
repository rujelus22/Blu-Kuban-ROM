.class public final Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$PersonResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$PersonResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$PersonResponse;",
        "Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$PersonResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private person_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 12588
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12691
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    .line 12589
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->maybeForceBuilderInitialization()V

    .line 12590
    return-void
.end method

.method static synthetic access$16900()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 1

    .prologue
    .line 12583
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 1

    .prologue
    .line 12595
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePersonIsMutable()V
    .registers 3

    .prologue
    .line 12694
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 12695
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    .line 12696
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    .line 12698
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 12593
    return-void
.end method


# virtual methods
.method public addAllPerson(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 12761
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Contact$MobileContact;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->ensurePersonIsMutable()V

    .line 12762
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12764
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12754
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->ensurePersonIsMutable()V

    .line 12755
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12757
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12737
    if-nez p2, :cond_8

    .line 12738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12740
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->ensurePersonIsMutable()V

    .line 12741
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12743
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 12747
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->ensurePersonIsMutable()V

    .line 12748
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12750
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 12727
    if-nez p1, :cond_8

    .line 12728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12730
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->ensurePersonIsMutable()V

    .line 12731
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12733
    return-object p0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    .registers 3

    .prologue
    .line 12614
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    .line 12615
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 12616
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12618
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12583
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    .registers 5

    .prologue
    .line 12632
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 12633
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    .line 12634
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 12635
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    .line 12636
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    .line 12638
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->access$17102(Lcom/google/wireless/contacts/proto/Client$PersonResponse;Ljava/util/List;)Ljava/util/List;

    .line 12639
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12583
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12583
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 2

    .prologue
    .line 12599
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    .line 12601
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    .line 12602
    return-object p0
.end method

.method public clearPerson()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 2

    .prologue
    .line 12767
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    .line 12768
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    .line 12770
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 12583
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 12583
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 3

    .prologue
    .line 12606
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

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
    .line 12583
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 12583
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12583
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    .registers 2

    .prologue
    .line 12610
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 12707
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getPersonCount()I
    .registers 2

    .prologue
    .line 12704
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12701
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 12583
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

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
    .line 12583
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 12667
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 12672
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12674
    :sswitch_d
    return-object p0

    .line 12679
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    .line 12680
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 12681
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->addPerson(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    goto :goto_0

    .line 12667
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 12643
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 12654
    :cond_6
    :goto_6
    return-object p0

    .line 12644
    :cond_7
    #getter for: Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->access$17100(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12645
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 12646
    #getter for: Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->access$17100(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    .line 12647
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 12649
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->ensurePersonIsMutable()V

    .line 12650
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Client$PersonResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->access$17100(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPerson(ILcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 12721
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->ensurePersonIsMutable()V

    .line 12722
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12724
    return-object p0
.end method

.method public setPerson(ILcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 12711
    if-nez p2, :cond_8

    .line 12712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12714
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->ensurePersonIsMutable()V

    .line 12715
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12717
    return-object p0
.end method
