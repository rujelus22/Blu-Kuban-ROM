.class public final Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventThirdPartyInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private parkingInfo_:Ljava/lang/Object;

.field private thirdPartyEventUrl_:Ljava/lang/Object;

.field private ticketSellerUrl_:Ljava/lang/Object;

.field private videoUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1117
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    .line 1118
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->initFields()V

    .line 1119
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 546
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 694
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->memoizedIsInitialized:B

    .line 720
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->memoizedSerializedSize:I

    .line 547
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 548
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 694
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->memoizedIsInitialized:B

    .line 720
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->memoizedSerializedSize:I

    .line 548
    return-void
.end method

.method static synthetic access$1202(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->thirdPartyEventUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->ticketSellerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->parkingInfo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->videoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    .registers 1

    .prologue
    .line 552
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    return-object v0
.end method

.method private getParkingInfoBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 645
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->parkingInfo_:Ljava/lang/Object;

    .line 646
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 647
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 649
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->parkingInfo_:Ljava/lang/Object;

    .line 652
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

.method private getThirdPartyEventUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 581
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->thirdPartyEventUrl_:Ljava/lang/Object;

    .line 582
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 583
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 585
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->thirdPartyEventUrl_:Ljava/lang/Object;

    .line 588
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

.method private getTicketSellerUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 613
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->ticketSellerUrl_:Ljava/lang/Object;

    .line 614
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 615
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 617
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->ticketSellerUrl_:Ljava/lang/Object;

    .line 620
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

.method private getVideoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 677
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->videoUrl_:Ljava/lang/Object;

    .line 678
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 679
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 681
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->videoUrl_:Ljava/lang/Object;

    .line 684
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
    .line 689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->thirdPartyEventUrl_:Ljava/lang/Object;

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->ticketSellerUrl_:Ljava/lang/Object;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->parkingInfo_:Ljava/lang/Object;

    .line 692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->videoUrl_:Ljava/lang/Object;

    .line 693
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 1

    .prologue
    .line 820
    #calls: Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->access$1000()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 823
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    .registers 2

    .prologue
    .line 556
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getParkingInfo()Ljava/lang/String;
    .registers 5

    .prologue
    .line 631
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->parkingInfo_:Ljava/lang/Object;

    .line 632
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 633
    check-cast v1, Ljava/lang/String;

    .line 641
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 635
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 637
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 639
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->parkingInfo_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 641
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 722
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->memoizedSerializedSize:I

    .line 723
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 743
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 725
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 726
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 727
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getThirdPartyEventUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 730
    :cond_1a
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 731
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getTicketSellerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 734
    :cond_29
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 735
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getParkingInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 738
    :cond_39
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 739
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getVideoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 742
    :cond_4a
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 743
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getThirdPartyEventUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 567
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->thirdPartyEventUrl_:Ljava/lang/Object;

    .line 568
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 569
    check-cast v1, Ljava/lang/String;

    .line 577
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 571
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 573
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 575
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->thirdPartyEventUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 577
    goto :goto_8
.end method

.method public getTicketSellerUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 599
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->ticketSellerUrl_:Ljava/lang/Object;

    .line 600
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 601
    check-cast v1, Ljava/lang/String;

    .line 609
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 603
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 605
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 607
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->ticketSellerUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 609
    goto :goto_8
.end method

.method public getVideoUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 663
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->videoUrl_:Ljava/lang/Object;

    .line 664
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 665
    check-cast v1, Ljava/lang/String;

    .line 673
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 667
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 669
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 671
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->videoUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 673
    goto :goto_8
.end method

.method public hasParkingInfo()Z
    .registers 3

    .prologue
    .line 628
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

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

.method public hasThirdPartyEventUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 564
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTicketSellerUrl()Z
    .registers 3

    .prologue
    .line 596
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

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

.method public hasVideoUrl()Z
    .registers 3

    .prologue
    .line 660
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

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

    .line 696
    iget-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->memoizedIsInitialized:B

    .line 697
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 700
    :goto_8
    return v1

    .line 697
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 699
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 2

    .prologue
    .line 821
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 2

    .prologue
    .line 825
    invoke-static {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

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
    .line 750
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

    .line 705
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getSerializedSize()I

    .line 706
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 707
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getThirdPartyEventUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 709
    :cond_13
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 710
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getTicketSellerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 712
    :cond_20
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 713
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getParkingInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 715
    :cond_2e
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 716
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getVideoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 718
    :cond_3d
    return-void
.end method
