.class public final Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$PeoplelistRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeoplelistRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;,
        Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private count_:I

.field private key_:Ljava/lang/Object;

.field private lastUpdated_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offset_:I

.field private requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

.field private search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10888
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    .line 10889
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->initFields()V

    .line 10890
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10248
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10393
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->memoizedIsInitialized:B

    .line 10425
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->memoizedSerializedSize:I

    .line 10249
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10243
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10393
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->memoizedIsInitialized:B

    .line 10425
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->memoizedSerializedSize:I

    .line 10250
    return-void
.end method

.method static synthetic access$13902(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10243
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10243
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    return-object p1
.end method

.method static synthetic access$14102(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10243
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->offset_:I

    return p1
.end method

.method static synthetic access$14202(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10243
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->count_:I

    return p1
.end method

.method static synthetic access$14302(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10243
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->lastUpdated_:J

    return-wide p1
.end method

.method static synthetic access$14402(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10243
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14502(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10243
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    .registers 1

    .prologue
    .line 10254
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10374
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->key_:Ljava/lang/Object;

    .line 10375
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10376
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10378
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->key_:Ljava/lang/Object;

    .line 10381
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 10386
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->IN_MY_CIRCLES:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    .line 10387
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 10388
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->offset_:I

    .line 10389
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->count_:I

    .line 10390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->lastUpdated_:J

    .line 10391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->key_:Ljava/lang/Object;

    .line 10392
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 1

    .prologue
    .line 10533
    #calls: Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->access$13700()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10536
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;)Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 10340
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10243
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;
    .registers 2

    .prologue
    .line 10258
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10360
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->key_:Ljava/lang/Object;

    .line 10361
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10362
    check-cast v1, Ljava/lang/String;

    .line 10370
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10364
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10366
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10367
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10368
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10370
    goto :goto_8
.end method

.method public getLastUpdated()J
    .registers 3

    .prologue
    .line 10350
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->lastUpdated_:J

    return-wide v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 10330
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->offset_:I

    return v0
.end method

.method public getRequestType()Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;
    .registers 2

    .prologue
    .line 10310
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    return-object v0
.end method

.method public getSearch()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 2

    .prologue
    .line 10320
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10427
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->memoizedSerializedSize:I

    .line 10428
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 10456
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 10430
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 10431
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 10432
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10435
    :cond_1c
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 10436
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10439
    :cond_29
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 10440
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->offset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10443
    :cond_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 10444
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->count_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10447
    :cond_46
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_56

    .line 10448
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->lastUpdated_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 10451
    :cond_56
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 10452
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10455
    :cond_68
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 10456
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 10337
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

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
    .line 10357
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

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

.method public hasLastUpdated()Z
    .registers 3

    .prologue
    .line 10347
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 10327
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

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

.method public hasRequestType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10307
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSearch()Z
    .registers 3

    .prologue
    .line 10317
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 10395
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->memoizedIsInitialized:B

    .line 10396
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 10399
    :goto_8
    return v1

    .line 10396
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 10398
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->memoizedIsInitialized:B

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
    .line 10463
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10404
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getSerializedSize()I

    .line 10405
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 10406
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->requestType_:Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10408
    :cond_15
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 10409
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10411
    :cond_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 10412
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->offset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10414
    :cond_2c
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 10415
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->count_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10417
    :cond_39
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 10418
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->lastUpdated_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 10420
    :cond_47
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 10421
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PeoplelistRequest;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10423
    :cond_57
    return-void
.end method
