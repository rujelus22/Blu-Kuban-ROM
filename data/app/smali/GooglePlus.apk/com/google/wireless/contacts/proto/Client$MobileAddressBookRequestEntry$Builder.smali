.class public final Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private addressBookKey_:Ljava/lang/Object;

.field private bitField0_:I

.field private firstName_:Ljava/lang/Object;

.field private id_:Lcom/google/protobuf/LazyStringList;

.field private lastName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 8752
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 8935
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    .line 8991
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->firstName_:Ljava/lang/Object;

    .line 9027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->lastName_:Ljava/lang/Object;

    .line 8753
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->maybeForceBuilderInitialization()V

    .line 8754
    return-void
.end method

.method static synthetic access$11500()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 1

    .prologue
    .line 8747
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 1

    .prologue
    .line 8759
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;-><init>()V

    return-object v0
.end method

.method private ensureIdIsMutable()V
    .registers 3

    .prologue
    .line 8937
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 8938
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    .line 8939
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8941
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 8757
    return-void
.end method


# virtual methods
.method public addAllId(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;"
        }
    .end annotation

    .prologue
    .line 8973
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->ensureIdIsMutable()V

    .line 8974
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8976
    return-object p0
.end method

.method public addId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8963
    if-nez p1, :cond_8

    .line 8964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8966
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->ensureIdIsMutable()V

    .line 8967
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 8969
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    .registers 3

    .prologue
    .line 8784
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    .line 8785
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8786
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8788
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    .registers 6

    .prologue
    .line 8802
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 8803
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8804
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8805
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 8806
    or-int/lit8 v2, v2, 0x1

    .line 8808
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->addressBookKey_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->addressBookKey_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->access$11702(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8809
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 8810
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    .line 8812
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8814
    :cond_2b
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->access$11802(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 8815
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 8816
    or-int/lit8 v2, v2, 0x2

    .line 8818
    :cond_37
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->firstName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->firstName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->access$11902(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8819
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 8820
    or-int/lit8 v2, v2, 0x4

    .line 8822
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->lastName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->lastName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->access$12002(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8823
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->access$12102(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;I)I

    .line 8824
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 2

    .prologue
    .line 8763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 8765
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8766
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    .line 8767
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8768
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->firstName_:Ljava/lang/Object;

    .line 8769
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->lastName_:Ljava/lang/Object;

    .line 8771
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8772
    return-object p0
.end method

.method public clearAddressBookKey()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 2

    .prologue
    .line 8923
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8924
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getAddressBookKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 8926
    return-object p0
.end method

.method public clearFirstName()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 2

    .prologue
    .line 9015
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 9016
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->firstName_:Ljava/lang/Object;

    .line 9018
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 2

    .prologue
    .line 8979
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    .line 8980
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8982
    return-object p0
.end method

.method public clearLastName()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 2

    .prologue
    .line 9051
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 9052
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->lastName_:Ljava/lang/Object;

    .line 9054
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 3

    .prologue
    .line 8776
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

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
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBookKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8904
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 8905
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8906
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8907
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 8910
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8747
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    .registers 2

    .prologue
    .line 8780
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8996
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->firstName_:Ljava/lang/Object;

    .line 8997
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 8998
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8999
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->firstName_:Ljava/lang/Object;

    .line 9002
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

.method public getId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 8950
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdCount()I
    .registers 2

    .prologue
    .line 8947
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getIdList()Ljava/util/List;
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
    .line 8944
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9032
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->lastName_:Ljava/lang/Object;

    .line 9033
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9034
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9035
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->lastName_:Ljava/lang/Object;

    .line 9038
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

.method public hasAddressBookKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8901
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 8993
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

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

.method public hasLastName()Z
    .registers 3

    .prologue
    .line 9029
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 8852
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
    .line 8747
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8747
    check-cast p1, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

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
    .line 8747
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8860
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 8861
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 8866
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8868
    :sswitch_d
    return-object p0

    .line 8873
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8874
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->addressBookKey_:Ljava/lang/Object;

    goto :goto_0

    .line 8878
    :sswitch_1b
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->ensureIdIsMutable()V

    .line 8879
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 8883
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8884
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->firstName_:Ljava/lang/Object;

    goto :goto_0

    .line 8888
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8889
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->lastName_:Ljava/lang/Object;

    goto :goto_0

    .line 8861
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 8828
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 8848
    :cond_6
    :goto_6
    return-object p0

    .line 8829
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->hasAddressBookKey()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8830
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getAddressBookKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->setAddressBookKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    .line 8832
    :cond_14
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->access$11800(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 8833
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 8834
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->access$11800(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    .line 8835
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8842
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 8843
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    .line 8845
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8846
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->setLastName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    goto :goto_6

    .line 8837
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->ensureIdIsMutable()V

    .line 8838
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->access$11800(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public setAddressBookKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 8914
    if-nez p1, :cond_8

    .line 8915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8917
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 8918
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 8920
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9006
    if-nez p1, :cond_8

    .line 9007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9009
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 9010
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->firstName_:Ljava/lang/Object;

    .line 9012
    return-object p0
.end method

.method public setId(ILjava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8954
    if-nez p2, :cond_8

    .line 8955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8957
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->ensureIdIsMutable()V

    .line 8958
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8960
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9042
    if-nez p1, :cond_8

    .line 9043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9045
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->bitField0_:I

    .line 9046
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->lastName_:Ljava/lang/Object;

    .line 9048
    return-object p0
.end method
