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
    .line 4805
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    .line 4806
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->initFields()V

    .line 4807
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4324
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4439
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedIsInitialized:B

    .line 4462
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedSerializedSize:I

    .line 4325
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4319
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4439
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedIsInitialized:B

    .line 4462
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedSerializedSize:I

    .line 4326
    return-void
.end method

.method static synthetic access$6202(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4319
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4319
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4319
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4319
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 1

    .prologue
    .line 4330
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method private getFirstNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4423
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    .line 4424
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4425
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4427
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    .line 4430
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
    .line 4391
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    .line 4392
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4393
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4395
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    .line 4398
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
    .line 4359
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    .line 4360
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4361
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4363
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    .line 4366
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
    .line 4435
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    .line 4436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    .line 4437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    .line 4438
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 1

    .prologue
    .line 4558
    #calls: Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->access$6000()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4561
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4319
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;
    .registers 2

    .prologue
    .line 4334
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4409
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    .line 4410
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4411
    check-cast v1, Ljava/lang/String;

    .line 4419
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4413
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4415
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4416
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4417
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->firstName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4419
    goto :goto_8
.end method

.method public getFullName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4377
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    .line 4378
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4379
    check-cast v1, Ljava/lang/String;

    .line 4387
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4381
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4383
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4384
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4385
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->fullName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4387
    goto :goto_8
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4345
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    .line 4346
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4347
    check-cast v1, Ljava/lang/String;

    .line 4355
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4349
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4351
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4352
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4353
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->participantId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4355
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4464
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedSerializedSize:I

    .line 4465
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4481
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4467
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4468
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 4469
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4472
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 4473
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4476
    :cond_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 4477
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4480
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedSerializedSize:I

    move v1, v0

    .line 4481
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 4406
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
    .line 4374
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

    .line 4342
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

    .line 4441
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedIsInitialized:B

    .line 4442
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4445
    :goto_8
    return v1

    .line 4442
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4444
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4319
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4559
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4319
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->toBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;
    .registers 2

    .prologue
    .line 4563
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;)Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes$Builder;

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
    .line 4488
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

    .line 4450
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getSerializedSize()I

    .line 4451
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 4452
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4454
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 4455
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4457
    :cond_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 4458
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ParticipantAttributes;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4460
    :cond_2e
    return-void
.end method
