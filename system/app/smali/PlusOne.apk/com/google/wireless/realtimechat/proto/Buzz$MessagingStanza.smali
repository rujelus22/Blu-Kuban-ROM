.class public final Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanzaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagingStanza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;,
        Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

.field private compressionType_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

.field private sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

.field private xmppStanza_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2898
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    .line 2899
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->initFields()V

    .line 2900
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2226
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2360
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->memoizedIsInitialized:B

    .line 2409
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->memoizedSerializedSize:I

    .line 2227
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2221
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2228
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2360
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->memoizedIsInitialized:B

    .line 2409
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->memoizedSerializedSize:I

    .line 2228
    return-void
.end method

.method static synthetic access$3602(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->xmppStanza_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2221
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->compressionType_:I

    return p1
.end method

.method static synthetic access$4002(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2221
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;
    .registers 1

    .prologue
    .line 2232
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    return-object v0
.end method

.method private getXmppStanzaBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2322
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->xmppStanza_:Ljava/lang/Object;

    .line 2323
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2324
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2326
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->xmppStanza_:Ljava/lang/Object;

    .line 2329
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
    .line 2354
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2355
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 2356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->xmppStanza_:Ljava/lang/Object;

    .line 2357
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->compressionType_:I

    .line 2358
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 2359
    return-void
.end method


# virtual methods
.method public getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 2

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    return-object v0
.end method

.method public getCompressionType()I
    .registers 2

    .prologue
    .line 2340
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->compressionType_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2221
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;
    .registers 2

    .prologue
    .line 2236
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;

    return-object v0
.end method

.method public getRecipient()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2411
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->memoizedSerializedSize:I

    .line 2412
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 2436
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 2414
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 2415
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 2416
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2419
    :cond_18
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 2420
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2423
    :cond_25
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 2424
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getXmppStanzaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2427
    :cond_35
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 2428
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2431
    :cond_44
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_54

    .line 2432
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->compressionType_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2435
    :cond_54
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->memoizedSerializedSize:I

    move v1, v0

    .line 2436
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getXmppStanza()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2308
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->xmppStanza_:Ljava/lang/Object;

    .line 2309
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2310
    check-cast v1, Ljava/lang/String;

    .line 2318
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2312
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2314
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2315
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2316
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->xmppStanza_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2318
    goto :goto_8
.end method

.method public hasBuzzHeader()Z
    .registers 3

    .prologue
    .line 2347
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

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

.method public hasCompressionType()Z
    .registers 3

    .prologue
    .line 2337
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

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

.method public hasRecipient()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2285
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSender()Z
    .registers 3

    .prologue
    .line 2295
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

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

.method public hasXmppStanza()Z
    .registers 3

    .prologue
    .line 2305
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2443
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

    .line 2391
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getSerializedSize()I

    .line 2392
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 2393
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->recipient_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2395
    :cond_11
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 2396
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2398
    :cond_1c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 2399
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->getXmppStanzaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2401
    :cond_2a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 2402
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2404
    :cond_37
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_45

    .line 2405
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;->compressionType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2407
    :cond_45
    return-void
.end method
