.class public final Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileAddressBookRequestEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

.field private static final serialVersionUID:J


# instance fields
.field private addressBookKey_:Ljava/lang/Object;

.field private bitField0_:I

.field private firstName_:Ljava/lang/Object;

.field private id_:Lcom/google/protobuf/LazyStringList;

.field private lastName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9066
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    .line 9067
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->initFields()V

    .line 9068
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8479
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8609
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->memoizedIsInitialized:B

    .line 8635
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->memoizedSerializedSize:I

    .line 8480
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8474
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8481
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8609
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->memoizedIsInitialized:B

    .line 8635
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->memoizedSerializedSize:I

    .line 8481
    return-void
.end method

.method static synthetic access$11702(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8474
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->addressBookKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11800(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8474
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8474
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8474
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->firstName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8474
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->lastName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8474
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

    return p1
.end method

.method private getAddressBookKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8514
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->addressBookKey_:Ljava/lang/Object;

    .line 8515
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8516
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8518
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->addressBookKey_:Ljava/lang/Object;

    .line 8521
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

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    .registers 1

    .prologue
    .line 8485
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    return-object v0
.end method

.method private getFirstNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8560
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->firstName_:Ljava/lang/Object;

    .line 8561
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8562
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8564
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->firstName_:Ljava/lang/Object;

    .line 8567
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

.method private getLastNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8592
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->lastName_:Ljava/lang/Object;

    .line 8593
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8594
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8596
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->lastName_:Ljava/lang/Object;

    .line 8599
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

.method private initFields()V
    .registers 2

    .prologue
    .line 8604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->addressBookKey_:Ljava/lang/Object;

    .line 8605
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    .line 8606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->firstName_:Ljava/lang/Object;

    .line 8607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->lastName_:Ljava/lang/Object;

    .line 8608
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 1

    .prologue
    .line 8740
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->access$11500()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8743
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddressBookKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8500
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->addressBookKey_:Ljava/lang/Object;

    .line 8501
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8502
    check-cast v1, Ljava/lang/String;

    .line 8510
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8504
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8506
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8507
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8508
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->addressBookKey_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8510
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8474
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;
    .registers 2

    .prologue
    .line 8489
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8546
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->firstName_:Ljava/lang/Object;

    .line 8547
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8548
    check-cast v1, Ljava/lang/String;

    .line 8556
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8550
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8552
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8553
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8554
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->firstName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8556
    goto :goto_8
.end method

.method public getId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 8536
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdCount()I
    .registers 2

    .prologue
    .line 8533
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

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
    .line 8530
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8578
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->lastName_:Ljava/lang/Object;

    .line 8579
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8580
    check-cast v1, Ljava/lang/String;

    .line 8588
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8582
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8584
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8585
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8586
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->lastName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8588
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 8637
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->memoizedSerializedSize:I

    .line 8638
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 8663
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 8640
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 8641
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 8642
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getAddressBookKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 8646
    :cond_19
    const/4 v0, 0x0

    .line 8647
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_31

    .line 8648
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 8647
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 8651
    :cond_31
    add-int/2addr v2, v0

    .line 8652
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 8654
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4e

    .line 8655
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 8658
    :cond_4e
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v6, :cond_5d

    .line 8659
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getLastNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 8662
    :cond_5d
    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->memoizedSerializedSize:I

    move v3, v2

    .line 8663
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public hasAddressBookKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8497
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

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
    .line 8543
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

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

.method public hasLastName()Z
    .registers 3

    .prologue
    .line 8575
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 8611
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->memoizedIsInitialized:B

    .line 8612
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8615
    :goto_8
    return v1

    .line 8612
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8614
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8474
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 2

    .prologue
    .line 8741
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8474
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;
    .registers 2

    .prologue
    .line 8745
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 8670
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8620
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getSerializedSize()I

    .line 8621
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 8622
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getAddressBookKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8624
    :cond_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 8625
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->id_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8624
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 8627
    :cond_28
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_36

    .line 8628
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8630
    :cond_36
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 8631
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookRequestEntry;->getLastNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8633
    :cond_43
    return-void
.end method
