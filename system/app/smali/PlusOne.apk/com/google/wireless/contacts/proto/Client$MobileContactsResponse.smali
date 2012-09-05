.class public final Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileContactsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileContactsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;,
        Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContact;",
            ">;"
        }
    .end annotation
.end field

.field private invalidId_:Lcom/google/protobuf/LazyStringList;

.field private isContiguousSet_:Z

.field private key_:Ljava/lang/Object;

.field private lastContactIndex_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private numberWithoutPublicProfiles_:I

.field private serverTime_:J

.field private syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5155
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 5156
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->initFields()V

    .line 5157
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4294
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4476
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->memoizedIsInitialized:B

    .line 4514
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->memoizedSerializedSize:I

    .line 4295
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4296
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4476
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->memoizedIsInitialized:B

    .line 4514
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->memoizedSerializedSize:I

    .line 4296
    return-void
.end method

.method static synthetic access$5602(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->serverTime_:J

    return-wide p1
.end method

.method static synthetic access$5702(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->lastContactIndex_:I

    return p1
.end method

.method static synthetic access$5902(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->isContiguousSet_:Z

    return p1
.end method

.method static synthetic access$6002(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->numberWithoutPublicProfiles_:I

    return p1
.end method

.method static synthetic access$6100(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4289
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4289
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4289
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 1

    .prologue
    .line 4300
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4380
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->key_:Ljava/lang/Object;

    .line 4381
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4382
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4384
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->key_:Ljava/lang/Object;

    .line 4387
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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4467
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->serverTime_:J

    .line 4468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->key_:Ljava/lang/Object;

    .line 4469
    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->lastContactIndex_:I

    .line 4470
    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->isContiguousSet_:Z

    .line 4471
    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->numberWithoutPublicProfiles_:I

    .line 4472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    .line 4473
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    .line 4474
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->FULL:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    .line 4475
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 1

    .prologue
    .line 4635
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->access$5400()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4638
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4593
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->access$5300(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContact(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 4435
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public getContactCount()I
    .registers 2

    .prologue
    .line 4432
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactList()Ljava/util/List;
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
    .line 4425
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getContactOrBuilder(I)Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 4439
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;

    return-object v0
.end method

.method public getContactOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Contact$MobileContactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4429
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 2

    .prologue
    .line 4304
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    return-object v0
.end method

.method public getInvalidId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 4453
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidIdCount()I
    .registers 2

    .prologue
    .line 4450
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getInvalidIdList()Ljava/util/List;
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
    .line 4447
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getIsContiguousSet()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4408
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->isContiguousSet_:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4366
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->key_:Ljava/lang/Object;

    .line 4367
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4368
    check-cast v1, Ljava/lang/String;

    .line 4376
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4370
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4372
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4373
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4374
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4376
    goto :goto_8
.end method

.method public getLastContactIndex()I
    .registers 2

    .prologue
    .line 4398
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->lastContactIndex_:I

    return v0
.end method

.method public getNumberWithoutPublicProfiles()I
    .registers 2

    .prologue
    .line 4418
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->numberWithoutPublicProfiles_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4516
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->memoizedSerializedSize:I

    .line 4517
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    move v3, v2

    .line 4558
    .end local v2           #size:I
    .local v3, size:I
    :goto_b
    return v3

    .line 4519
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_c
    const/4 v2, 0x0

    .line 4520
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_1a

    .line 4521
    iget-wide v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->serverTime_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 4524
    :cond_1a
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v7, :cond_29

    .line 4525
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4528
    :cond_29
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v8, :cond_37

    .line 4529
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->lastContactIndex_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 4532
    :cond_37
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v9, :cond_44

    .line 4533
    iget-boolean v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->isContiguousSet_:Z

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 4536
    :cond_44
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_54

    .line 4537
    const/4 v4, 0x5

    iget v5, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->numberWithoutPublicProfiles_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 4540
    :cond_54
    const/4 v1, 0x0

    .local v1, i:I
    :goto_55
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6e

    .line 4541
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4540
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 4545
    :cond_6e
    const/4 v0, 0x0

    .line 4546
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_70
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_86

    .line 4547
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 4546
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 4550
    :cond_86
    add-int/2addr v2, v0

    .line 4551
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getInvalidIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 4553
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_a5

    .line 4554
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->getNumber()I

    move-result v4

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 4557
    :cond_a5
    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 4558
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_b
.end method

.method public getServerTime()J
    .registers 3

    .prologue
    .line 4356
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->serverTime_:J

    return-wide v0
.end method

.method public getSyncType()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;
    .registers 2

    .prologue
    .line 4463
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    return-object v0
.end method

.method public hasIsContiguousSet()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4405
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    .line 4363
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

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

.method public hasLastContactIndex()Z
    .registers 3

    .prologue
    .line 4395
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

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

.method public hasNumberWithoutPublicProfiles()Z
    .registers 3

    .prologue
    .line 4415
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

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

.method public hasServerTime()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4353
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSyncType()Z
    .registers 3

    .prologue
    .line 4460
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4478
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->memoizedIsInitialized:B

    .line 4479
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4482
    :goto_8
    return v1

    .line 4479
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4481
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 4565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4487
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getSerializedSize()I

    .line 4488
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_13

    .line 4489
    iget-wide v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->serverTime_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4491
    :cond_13
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_20

    .line 4492
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4494
    :cond_20
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2c

    .line 4495
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->lastContactIndex_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4497
    :cond_2c
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_37

    .line 4498
    iget-boolean v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->isContiguousSet_:Z

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4500
    :cond_37
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_45

    .line 4501
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->numberWithoutPublicProfiles_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4503
    :cond_45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_46
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 4504
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->contact_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4503
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 4506
    :cond_5d
    const/4 v0, 0x0

    :goto_5e
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 4507
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->invalidId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4506
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 4509
    :cond_73
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_84

    .line 4510
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->syncType_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$SyncType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4512
    :cond_84
    return-void
.end method
