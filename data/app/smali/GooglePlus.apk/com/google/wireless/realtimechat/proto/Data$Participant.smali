.class public final Lcom/google/wireless/realtimechat/proto/Data$Participant;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ParticipantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Participant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;,
        Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private firstName_:Ljava/lang/Object;

.field private fullName_:Ljava/lang/Object;

.field private lastSeenAt_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantId_:Ljava/lang/Object;

.field private profilePhotoUrl_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 925
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 926
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->initFields()V

    .line 927
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 191
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 411
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->memoizedIsInitialized:B

    .line 443
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->memoizedSerializedSize:I

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;-><init>(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 411
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->memoizedIsInitialized:B

    .line 443
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->memoizedSerializedSize:I

    .line 193
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/realtimechat/proto/Data$Participant;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->lastSeenAt_:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->fullName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->firstName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/wireless/realtimechat/proto/Data$Participant;Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->profilePhotoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/wireless/realtimechat/proto/Data$Participant;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method private getFirstNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 350
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->firstName_:Ljava/lang/Object;

    .line 351
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 352
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 354
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->firstName_:Ljava/lang/Object;

    .line 357
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
    .line 318
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->fullName_:Ljava/lang/Object;

    .line 319
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 320
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 322
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->fullName_:Ljava/lang/Object;

    .line 325
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
    .line 276
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->participantId_:Ljava/lang/Object;

    .line 277
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 278
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 280
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->participantId_:Ljava/lang/Object;

    .line 283
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

.method private getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 392
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->profilePhotoUrl_:Ljava/lang/Object;

    .line 393
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 394
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 396
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->profilePhotoUrl_:Ljava/lang/Object;

    .line 399
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
    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->participantId_:Ljava/lang/Object;

    .line 405
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->lastSeenAt_:J

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->fullName_:Ljava/lang/Object;

    .line 407
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->firstName_:Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->profilePhotoUrl_:Ljava/lang/Object;

    .line 410
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 1

    .prologue
    .line 551
    #calls: Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->access$100()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 554
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 201
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 336
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->firstName_:Ljava/lang/Object;

    .line 337
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 338
    check-cast v1, Ljava/lang/String;

    .line 346
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 340
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 342
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 344
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->firstName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 346
    goto :goto_8
.end method

.method public getFullName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->fullName_:Ljava/lang/Object;

    .line 305
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 306
    check-cast v1, Ljava/lang/String;

    .line 314
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 308
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 310
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 312
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->fullName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 314
    goto :goto_8
.end method

.method public getLastSeenAt()J
    .registers 3

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->lastSeenAt_:J

    return-wide v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 262
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->participantId_:Ljava/lang/Object;

    .line 263
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 264
    check-cast v1, Ljava/lang/String;

    .line 272
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 268
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 270
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->participantId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 272
    goto :goto_8
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 378
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->profilePhotoUrl_:Ljava/lang/Object;

    .line 379
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 380
    check-cast v1, Ljava/lang/String;

    .line 388
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 382
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 384
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 386
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->profilePhotoUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 388
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 445
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->memoizedSerializedSize:I

    .line 446
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 474
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 448
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 449
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 450
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 453
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 454
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->lastSeenAt_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 457
    :cond_27
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 458
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 461
    :cond_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 462
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 465
    :cond_48
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    .line 466
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 469
    :cond_5c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6e

    .line 470
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 473
    :cond_6e
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->memoizedSerializedSize:I

    move v1, v0

    .line 474
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    return-object v0
.end method

.method public hasFirstName()Z
    .registers 3

    .prologue
    .line 333
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

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

.method public hasFullName()Z
    .registers 3

    .prologue
    .line 301
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

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

.method public hasLastSeenAt()Z
    .registers 3

    .prologue
    .line 291
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

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

    .line 259
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfilePhotoUrl()Z
    .registers 3

    .prologue
    .line 375
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 365
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 413
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->memoizedIsInitialized:B

    .line 414
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 417
    :goto_8
    return v1

    .line 414
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 416
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 552
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->toBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .registers 2

    .prologue
    .line 556
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

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
    .line 481
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

    .line 422
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getSerializedSize()I

    .line 423
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 424
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 426
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 427
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->lastSeenAt_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 429
    :cond_1e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 430
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 432
    :cond_2c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 433
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 435
    :cond_3b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 436
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->type_:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 438
    :cond_4d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Participant;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5d

    .line 439
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getProfilePhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 441
    :cond_5d
    return-void
.end method
