.class public final Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HangoutStartContext.java"

# interfaces
.implements Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Invitation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

.field private inviterGaiaId_:Ljava/lang/Object;

.field private inviterProfileName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;

.field private shouldAutoAccept_:Z

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 915
    new-instance v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;-><init>(Z)V

    sput-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    .line 916
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    invoke-direct {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->initFields()V

    .line 917
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 252
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 400
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedIsInitialized:B

    .line 440
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedSerializedSize:I

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;-><init>(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 400
    iput-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedIsInitialized:B

    .line 440
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedSerializedSize:I

    .line 254
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    iput-wide p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterProfileName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->shouldAutoAccept_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    iput p1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    .registers 1

    .prologue
    .line 258
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    return-object v0
.end method

.method private getInviterGaiaIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 297
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterGaiaId_:Ljava/lang/Object;

    .line 298
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 299
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 301
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterGaiaId_:Ljava/lang/Object;

    .line 304
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

.method private getInviterProfileNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterProfileName_:Ljava/lang/Object;

    .line 340
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 341
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 343
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterProfileName_:Ljava/lang/Object;

    .line 346
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

.method private getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->phoneNumber_:Ljava/lang/Object;

    .line 382
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 383
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 385
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->phoneNumber_:Ljava/lang/Object;

    .line 388
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
    .line 393
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->timestamp_:J

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterGaiaId_:Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterProfileName_:Ljava/lang/Object;

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->shouldAutoAccept_:Z

    .line 398
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->phoneNumber_:Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 1

    .prologue
    .line 548
    #calls: Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->create()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->access$100()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 551
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;->mergeFrom(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    .registers 2

    .prologue
    .line 262
    sget-object v0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->defaultInstance:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getDefaultInstanceForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v0

    return-object v0
.end method

.method public getInvitationType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    return-object v0
.end method

.method public getInviterGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterGaiaId_:Ljava/lang/Object;

    .line 284
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 285
    check-cast v1, Ljava/lang/String;

    .line 293
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 287
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 289
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 291
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 293
    goto :goto_8
.end method

.method public getInviterProfileName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterProfileName_:Ljava/lang/Object;

    .line 326
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 327
    check-cast v1, Ljava/lang/String;

    .line 335
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 329
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 331
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 333
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->inviterProfileName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 335
    goto :goto_8
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 367
    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->phoneNumber_:Ljava/lang/Object;

    .line 368
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 369
    check-cast v1, Ljava/lang/String;

    .line 377
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 371
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 373
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 375
    iput-object v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 377
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 442
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedSerializedSize:I

    .line 443
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 471
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 445
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 446
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 447
    iget-wide v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 450
    :cond_18
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_27

    .line 451
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInviterGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 454
    :cond_27
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_39

    .line 455
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    invoke-virtual {v3}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 458
    :cond_39
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 459
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInviterProfileNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 462
    :cond_4a
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 463
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->shouldAutoAccept_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 466
    :cond_5a
    iget v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6c

    .line 467
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 470
    :cond_6c
    iput v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedSerializedSize:I

    move v1, v0

    .line 471
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getShouldAutoAccept()Z
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->shouldAutoAccept_:Z

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->timestamp_:J

    return-wide v0
.end method

.method public hasInvitationType()Z
    .registers 3

    .prologue
    .line 312
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

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

.method public hasInviterGaiaId()Z
    .registers 3

    .prologue
    .line 280
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

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

.method public hasInviterProfileName()Z
    .registers 3

    .prologue
    .line 322
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 364
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

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

.method public hasShouldAutoAccept()Z
    .registers 3

    .prologue
    .line 354
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 270
    iget v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    iget-byte v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedIsInitialized:B

    .line 403
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 414
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 403
    goto :goto_9

    .line 405
    :cond_c
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasTimestamp()Z

    move-result v3

    if-nez v3, :cond_16

    .line 406
    iput-byte v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedIsInitialized:B

    move v1, v2

    .line 407
    goto :goto_9

    .line 409
    :cond_16
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasInviterGaiaId()Z

    move-result v3

    if-nez v3, :cond_20

    .line 410
    iput-byte v2, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedIsInitialized:B

    move v1, v2

    .line 411
    goto :goto_9

    .line 413
    :cond_20
    iput-byte v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 2

    .prologue
    .line 549
    invoke-static {}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->newBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->newBuilderForType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;
    .registers 2

    .prologue
    .line 553
    invoke-static {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->newBuilder(Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;)Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->toBuilder()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation$Builder;

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
    .line 478
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

    .line 419
    invoke-virtual {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getSerializedSize()I

    .line 420
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 421
    iget-wide v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 423
    :cond_11
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1e

    .line 424
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInviterGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 426
    :cond_1e
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2e

    .line 427
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->invitationType_:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    invoke-virtual {v1}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 429
    :cond_2e
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 430
    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInviterProfileNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 432
    :cond_3d
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 433
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->shouldAutoAccept_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 435
    :cond_4b
    iget v0, p0, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 436
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 438
    :cond_5b
    return-void
.end method
