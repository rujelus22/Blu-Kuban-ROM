.class public final Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParticipantAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private firstName_:Ljava/lang/Object;

.field private fullName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4799
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    .line 4800
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->initFields()V

    .line 4801
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4318
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4433
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedIsInitialized:B

    .line 4456
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedSerializedSize:I

    .line 4319
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4313
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4320
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4433
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedIsInitialized:B

    .line 4456
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedSerializedSize:I

    .line 4320
    return-void
.end method

.method static synthetic access$6202(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4313
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4313
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4313
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4313
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 1

    .prologue
    .line 4324
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method private getFirstNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4417
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    .line 4418
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4419
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4421
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    .line 4424
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

.method private getFullNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4385
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    .line 4386
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4387
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4389
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    .line 4392
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

.method private getParticipantIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4353
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    .line 4354
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4355
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4357
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    .line 4360
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
    .line 4429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    .line 4430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    .line 4431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    .line 4432
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 1

    .prologue
    .line 4552
    #calls: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->access$6000()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4313
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 2

    .prologue
    .line 4328
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4403
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    .line 4404
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4405
    check-cast v1, Ljava/lang/String;

    .line 4413
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4407
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4409
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4410
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4411
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4413
    goto :goto_8
.end method

.method public getFullName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4371
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    .line 4372
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4373
    check-cast v1, Ljava/lang/String;

    .line 4381
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4375
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4377
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4378
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4379
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4381
    goto :goto_8
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4339
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    .line 4340
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4341
    check-cast v1, Ljava/lang/String;

    .line 4349
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4343
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4345
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4346
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4347
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4349
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4458
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedSerializedSize:I

    .line 4459
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4475
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4461
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4462
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 4463
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4466
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 4467
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4470
    :cond_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 4471
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4474
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedSerializedSize:I

    move v1, v0

    .line 4475
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 4400
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

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
    .line 4368
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

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

.method public hasParticipantId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4336
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4435
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedIsInitialized:B

    .line 4436
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4439
    :goto_8
    return v1

    .line 4436
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4438
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedIsInitialized:B

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
    .line 4482
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4444
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getSerializedSize()I

    .line 4445
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 4446
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4448
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 4449
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4451
    :cond_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 4452
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4454
    :cond_2e
    return-void
.end method
