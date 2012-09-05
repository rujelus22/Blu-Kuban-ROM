.class public final Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileProfileResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileProfileResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

.field private static final serialVersionUID:J


# instance fields
.field private albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

.field private bitField0_:I

.field private contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

.field private key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:Ljava/lang/Object;

.field private profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

.field private serverTime_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6948
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 6949
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->initFields()V

    .line 6950
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6255
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6381
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedIsInitialized:B

    .line 6419
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedSerializedSize:I

    .line 6256
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6250
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6257
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6381
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedIsInitialized:B

    .line 6419
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedSerializedSize:I

    .line 6257
    return-void
.end method

.method static synthetic access$8402(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6250
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->ownerGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6250
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->serverTime_:J

    return-wide p1
.end method

.method static synthetic access$8602(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6250
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6250
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileAlbums;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6250
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6250
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6250
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 1

    .prologue
    .line 6261
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6332
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->key_:Ljava/lang/Object;

    .line 6333
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6334
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6336
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->key_:Ljava/lang/Object;

    .line 6339
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

.method private getOwnerGaiaIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6290
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 6291
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6292
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6294
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 6297
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
    .line 6374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 6375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->serverTime_:J

    .line 6376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->key_:Ljava/lang/Object;

    .line 6377
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 6378
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6379
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 6380
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 1

    .prologue
    .line 6527
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->access$8200()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6530
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6485
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->access$8100(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbums()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6360
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    return-object v0
.end method

.method public getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2

    .prologue
    .line 6370
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6250
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 2

    .prologue
    .line 6265
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6318
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->key_:Ljava/lang/Object;

    .line 6319
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6320
    check-cast v1, Ljava/lang/String;

    .line 6328
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6322
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6324
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6325
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6326
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6328
    goto :goto_8
.end method

.method public getOwnerGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6276
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 6277
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6278
    check-cast v1, Ljava/lang/String;

    .line 6286
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6280
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6282
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6283
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6284
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->ownerGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6286
    goto :goto_8
.end method

.method public getProfile()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2

    .prologue
    .line 6350
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6421
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedSerializedSize:I

    .line 6422
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 6450
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 6424
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 6425
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 6426
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getOwnerGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6429
    :cond_1a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 6430
    iget-wide v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->serverTime_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6433
    :cond_27
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 6434
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6437
    :cond_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 6438
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6441
    :cond_46
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_56

    .line 6442
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6445
    :cond_56
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 6446
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6449
    :cond_66
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 6450
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getServerTime()J
    .registers 3

    .prologue
    .line 6308
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->serverTime_:J

    return-wide v0
.end method

.method public hasAlbums()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6357
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

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

.method public hasContact()Z
    .registers 3

    .prologue
    .line 6367
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    .line 6315
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6273
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfile()Z
    .registers 3

    .prologue
    .line 6347
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

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

.method public hasServerTime()Z
    .registers 3

    .prologue
    .line 6305
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6383
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedIsInitialized:B

    .line 6384
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 6393
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 6384
    goto :goto_9

    .line 6386
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasProfile()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 6387
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getProfile()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 6388
    iput-byte v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 6389
    goto :goto_9

    .line 6392
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 6457
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

    .line 6398
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getSerializedSize()I

    .line 6399
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 6400
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getOwnerGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6402
    :cond_13
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 6403
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->serverTime_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6405
    :cond_1e
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 6406
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6408
    :cond_2c
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 6409
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6411
    :cond_39
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 6412
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6414
    :cond_47
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    .line 6415
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6417
    :cond_55
    return-void
.end method
