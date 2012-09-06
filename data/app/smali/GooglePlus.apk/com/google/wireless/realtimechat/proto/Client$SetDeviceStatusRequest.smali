.class public final Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetDeviceStatusRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private enabled_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;

.field private senderId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31809
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    .line 31810
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->initFields()V

    .line 31811
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31365
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 31458
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->memoizedIsInitialized:B

    .line 31481
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->memoizedSerializedSize:I

    .line 31366
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31360
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31367
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31458
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->memoizedIsInitialized:B

    .line 31481
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->memoizedSerializedSize:I

    .line 31367
    return-void
.end method

.method static synthetic access$43602(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31360
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$43702(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31360
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$43802(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31360
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->enabled_:Z

    return p1
.end method

.method static synthetic access$43902(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31360
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
    .registers 1

    .prologue
    .line 31371
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    return-object v0
.end method

.method private getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 31432
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->phoneNumber_:Ljava/lang/Object;

    .line 31433
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 31434
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31436
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->phoneNumber_:Ljava/lang/Object;

    .line 31439
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

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 31400
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->senderId_:Ljava/lang/Object;

    .line 31401
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 31402
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31404
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->senderId_:Ljava/lang/Object;

    .line 31407
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
    .line 31454
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->senderId_:Ljava/lang/Object;

    .line 31455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->phoneNumber_:Ljava/lang/Object;

    .line 31456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->enabled_:Z

    .line 31457
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 1

    .prologue
    .line 31577
    #calls: Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->access$43400()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 31580
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31360
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;
    .registers 2

    .prologue
    .line 31375
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2

    .prologue
    .line 31450
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->enabled_:Z

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31418
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->phoneNumber_:Ljava/lang/Object;

    .line 31419
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 31420
    check-cast v1, Ljava/lang/String;

    .line 31428
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 31422
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31424
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31425
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 31426
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 31428
    goto :goto_8
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31386
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->senderId_:Ljava/lang/Object;

    .line 31387
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 31388
    check-cast v1, Ljava/lang/String;

    .line 31396
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 31390
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31392
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31393
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 31394
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 31396
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 31483
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->memoizedSerializedSize:I

    .line 31484
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 31500
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 31486
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 31487
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 31488
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31491
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 31492
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31495
    :cond_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 31496
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->enabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31499
    :cond_37
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 31500
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasEnabled()Z
    .registers 3

    .prologue
    .line 31447
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 31415
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 31383
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

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

    .line 31460
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->memoizedIsInitialized:B

    .line 31461
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 31464
    :goto_8
    return v1

    .line 31461
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 31463
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31360
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 2

    .prologue
    .line 31578
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31360
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;
    .registers 2

    .prologue
    .line 31582
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest$Builder;

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
    .line 31507
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

    .line 31469
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getSerializedSize()I

    .line 31470
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 31471
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31473
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 31474
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31476
    :cond_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 31477
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetDeviceStatusRequest;->enabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 31479
    :cond_2c
    return-void
.end method
