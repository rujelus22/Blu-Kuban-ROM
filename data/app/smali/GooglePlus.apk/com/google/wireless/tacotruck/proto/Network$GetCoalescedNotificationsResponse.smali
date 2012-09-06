.class public final Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCoalescedNotificationsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private continuationToken_:Ljava/lang/Object;

.field private lastReadTime_:D

.field private latestNotificationTime_:D

.field private latestPushNotificationTime_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;"
        }
    .end annotation
.end field

.field private totalPush_:I

.field private totalUnread_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33228
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    .line 33229
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->initFields()V

    .line 33230
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32521
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32647
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedIsInitialized:B

    .line 32682
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedSerializedSize:I

    .line 32522
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32523
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32647
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedIsInitialized:B

    .line 32682
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedSerializedSize:I

    .line 32523
    return-void
.end method

.method static synthetic access$45100(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32516
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$45102(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$45202(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    return p1
.end method

.method static synthetic access$45302(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    return-wide p1
.end method

.method static synthetic access$45402(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45502(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    return-wide p1
.end method

.method static synthetic access$45602(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    return p1
.end method

.method static synthetic access$45702(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    return-wide p1
.end method

.method static synthetic access$45802(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32516
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    return p1
.end method

.method private getContinuationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32597
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    .line 32598
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32599
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32601
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    .line 32604
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    .registers 1

    .prologue
    .line 32527
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 32639
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    .line 32640
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    .line 32641
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    .line 32642
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    .line 32643
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    .line 32644
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    .line 32645
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    .line 32646
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 1

    .prologue
    .line 32794
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->access$44900()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 32797
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32730
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->access$44800(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContinuationToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32583
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    .line 32584
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32585
    check-cast v1, Ljava/lang/String;

    .line 32593
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32587
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32589
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32590
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32591
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32593
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    .registers 2

    .prologue
    .line 32531
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    return-object v0
.end method

.method public getLastReadTime()D
    .registers 3

    .prologue
    .line 32635
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    return-wide v0
.end method

.method public getLatestNotificationTime()D
    .registers 3

    .prologue
    .line 32573
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    return-wide v0
.end method

.method public getLatestPushNotificationTime()D
    .registers 3

    .prologue
    .line 32615
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    return-wide v0
.end method

.method public getNotification(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 3
    .parameter "index"

    .prologue
    .line 32549
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    return-object v0
.end method

.method public getNotificationCount()I
    .registers 2

    .prologue
    .line 32546
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32539
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotificationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 32553
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotificationOrBuilder;

    return-object v0
.end method

.method public getNotificationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotificationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32543
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 32684
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedSerializedSize:I

    .line 32685
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 32717
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 32687
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 32688
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 32689
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 32688
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 32692
    :cond_24
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_31

    .line 32693
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 32696
    :cond_31
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3f

    .line 32697
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 32700
    :cond_3f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4e

    .line 32701
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 32704
    :cond_4e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5e

    .line 32705
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 32708
    :cond_5e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6e

    .line 32709
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 32712
    :cond_6e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7e

    .line 32713
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 32716
    :cond_7e
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 32717
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getTotalPush()I
    .registers 2

    .prologue
    .line 32625
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    return v0
.end method

.method public getTotalUnread()I
    .registers 2

    .prologue
    .line 32563
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    return v0
.end method

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 32580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

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

.method public hasLastReadTime()Z
    .registers 3

    .prologue
    .line 32632
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

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

.method public hasLatestNotificationTime()Z
    .registers 3

    .prologue
    .line 32570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

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

.method public hasLatestPushNotificationTime()Z
    .registers 3

    .prologue
    .line 32612
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

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

.method public hasTotalPush()Z
    .registers 3

    .prologue
    .line 32622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

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

.method public hasTotalUnread()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32560
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

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

    .line 32649
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedIsInitialized:B

    .line 32650
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 32653
    :goto_8
    return v1

    .line 32650
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 32652
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 2

    .prologue
    .line 32795
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 2

    .prologue
    .line 32799
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

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
    .line 32724
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

    .line 32658
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getSerializedSize()I

    .line 32659
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 32660
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 32659
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 32662
    :cond_1d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_28

    .line 32663
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 32665
    :cond_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_34

    .line 32666
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 32668
    :cond_34
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_41

    .line 32669
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32671
    :cond_41
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4f

    .line 32672
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 32674
    :cond_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5d

    .line 32675
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 32677
    :cond_5d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6b

    .line 32678
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 32680
    :cond_6b
    return-void
.end method
