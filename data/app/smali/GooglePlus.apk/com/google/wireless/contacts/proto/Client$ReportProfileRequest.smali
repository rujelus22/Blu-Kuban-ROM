.class public final Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ReportProfileRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportProfileRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;,
        Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

.field private static final serialVersionUID:J


# instance fields
.field private abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

.field private bitField0_:I

.field private fullName_:Ljava/lang/Object;

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13837
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    .line 13838
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->initFields()V

    .line 13839
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13274
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13400
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->memoizedIsInitialized:B

    .line 13426
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->memoizedSerializedSize:I

    .line 13275
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13269
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13276
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13400
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->memoizedIsInitialized:B

    .line 13426
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->memoizedSerializedSize:I

    .line 13276
    return-void
.end method

.method static synthetic access$18202(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13269
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13269
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->fullName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18402(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;)Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13269
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    return-object p1
.end method

.method static synthetic access$18502(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13269
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    return-object p1
.end method

.method static synthetic access$18602(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13269
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    .registers 1

    .prologue
    .line 13280
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    return-object v0
.end method

.method private getFullNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13363
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->fullName_:Ljava/lang/Object;

    .line 13364
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13365
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13367
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->fullName_:Ljava/lang/Object;

    .line 13370
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
    .line 13395
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 13396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->fullName_:Ljava/lang/Object;

    .line 13397
    invoke-static {}, Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    .line 13398
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->UNKNOWN:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    .line 13399
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 1

    .prologue
    .line 13526
    #calls: Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->access$18000()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13529
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAbuse()Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;
    .registers 2

    .prologue
    .line 13381
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13269
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;
    .registers 2

    .prologue
    .line 13284
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13349
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->fullName_:Ljava/lang/Object;

    .line 13350
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13351
    check-cast v1, Ljava/lang/String;

    .line 13359
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13353
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13355
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13356
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13357
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->fullName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13359
    goto :goto_8
.end method

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 13339
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getProfileType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;
    .registers 2

    .prologue
    .line 13391
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13428
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->memoizedSerializedSize:I

    .line 13429
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 13449
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 13431
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 13432
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 13433
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13436
    :cond_18
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 13437
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13440
    :cond_27
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 13441
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13444
    :cond_35
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 13445
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13448
    :cond_48
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 13449
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasAbuse()Z
    .registers 3

    .prologue
    .line 13378
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    .line 13346
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13336
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfileType()Z
    .registers 3

    .prologue
    .line 13388
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 13402
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->memoizedIsInitialized:B

    .line 13403
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13406
    :goto_8
    return v1

    .line 13403
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13405
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13269
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 2

    .prologue
    .line 13527
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13269
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->toBuilder()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;
    .registers 2

    .prologue
    .line 13531
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;)Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$Builder;

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
    .line 13456
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

    .line 13411
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getSerializedSize()I

    .line 13412
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 13413
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13415
    :cond_11
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 13416
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13418
    :cond_1e
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 13419
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->abuse_:Lcom/google/wireless/contacts/proto/Abuse$MobileAbuse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13421
    :cond_2a
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 13422
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest;->profileType_:Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$ReportProfileRequest$ProfileType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13424
    :cond_3b
    return-void
.end method
