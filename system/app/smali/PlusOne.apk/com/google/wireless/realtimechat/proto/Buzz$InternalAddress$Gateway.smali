.class public final Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$GatewayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gateway"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cookie_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private networkLocation_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 975
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    .line 976
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->initFields()V

    .line 977
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 576
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 658
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedIsInitialized:B

    .line 682
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedSerializedSize:I

    .line 577
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 578
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 658
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedIsInitialized:B

    .line 682
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedSerializedSize:I

    .line 578
    return-void
.end method

.method static synthetic access$1002(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->networkLocation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->cookie_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->bitField0_:I

    return p1
.end method

.method private getCookieBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 643
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->cookie_:Ljava/lang/Object;

    .line 644
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 645
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 647
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->cookie_:Ljava/lang/Object;

    .line 650
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    .registers 1

    .prologue
    .line 582
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    return-object v0
.end method

.method private getNetworkLocationBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 611
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->networkLocation_:Ljava/lang/Object;

    .line 612
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 613
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 615
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->networkLocation_:Ljava/lang/Object;

    .line 618
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
    .line 655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->networkLocation_:Ljava/lang/Object;

    .line 656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->cookie_:Ljava/lang/Object;

    .line 657
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 1

    .prologue
    .line 774
    #calls: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->access$800()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 777
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCookie()Ljava/lang/String;
    .registers 5

    .prologue
    .line 629
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->cookie_:Ljava/lang/Object;

    .line 630
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 631
    check-cast v1, Ljava/lang/String;

    .line 639
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 633
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 635
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 637
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->cookie_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 639
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    .registers 2

    .prologue
    .line 586
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    return-object v0
.end method

.method public getNetworkLocation()Ljava/lang/String;
    .registers 5

    .prologue
    .line 597
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->networkLocation_:Ljava/lang/Object;

    .line 598
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 599
    check-cast v1, Ljava/lang/String;

    .line 607
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 601
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 603
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 605
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->networkLocation_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 607
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 684
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedSerializedSize:I

    .line 685
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 697
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 687
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 688
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 689
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getNetworkLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 692
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 693
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 696
    :cond_2a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedSerializedSize:I

    move v1, v0

    .line 697
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public hasCookie()Z
    .registers 3

    .prologue
    .line 626
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->bitField0_:I

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

.method public hasNetworkLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 594
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->bitField0_:I

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 660
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedIsInitialized:B

    .line 661
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 668
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 661
    goto :goto_9

    .line 663
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->hasNetworkLocation()Z

    move-result v3

    if-nez v3, :cond_16

    .line 664
    iput-byte v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedIsInitialized:B

    move v1, v2

    .line 665
    goto :goto_9

    .line 667
    :cond_16
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->memoizedIsInitialized:B

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
    .line 704
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getSerializedSize()I

    .line 674
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 675
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getNetworkLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 677
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 678
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 680
    :cond_21
    return-void
.end method
