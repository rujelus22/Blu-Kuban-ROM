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
    .line 32620
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    .line 32621
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->initFields()V

    .line 32622
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31913
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32039
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedIsInitialized:B

    .line 32074
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedSerializedSize:I

    .line 31914
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31915
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32039
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedIsInitialized:B

    .line 32074
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedSerializedSize:I

    .line 31915
    return-void
.end method

.method static synthetic access$44400(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31908
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$44402(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$44502(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    return p1
.end method

.method static synthetic access$44602(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    return-wide p1
.end method

.method static synthetic access$44702(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$44802(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    return-wide p1
.end method

.method static synthetic access$44902(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    return p1
.end method

.method static synthetic access$45002(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    return-wide p1
.end method

.method static synthetic access$45102(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31908
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    return p1
.end method

.method private getContinuationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 31989
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    .line 31990
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 31991
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31993
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    .line 31996
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
    .line 31919
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 32031
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    .line 32032
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    .line 32033
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    .line 32034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    .line 32035
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    .line 32036
    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    .line 32037
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    .line 32038
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    .registers 1

    .prologue
    .line 32186
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->access$44200()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

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
    .line 32122
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;->access$44100(Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContinuationToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31975
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    .line 31976
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 31977
    check-cast v1, Ljava/lang/String;

    .line 31985
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 31979
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31981
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31982
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 31983
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->continuationToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 31985
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31908
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;
    .registers 2

    .prologue
    .line 31923
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;

    return-object v0
.end method

.method public getLastReadTime()D
    .registers 3

    .prologue
    .line 32027
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    return-wide v0
.end method

.method public getLatestNotificationTime()D
    .registers 3

    .prologue
    .line 31965
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    return-wide v0
.end method

.method public getLatestPushNotificationTime()D
    .registers 3

    .prologue
    .line 32007
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    return-wide v0
.end method

.method public getNotification(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .registers 3
    .parameter "index"

    .prologue
    .line 31941
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    return-object v0
.end method

.method public getNotificationCount()I
    .registers 2

    .prologue
    .line 31938
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
    .line 31931
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotificationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 31945
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
    .line 31935
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 32076
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedSerializedSize:I

    .line 32077
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 32109
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 32079
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 32080
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 32081
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 32080
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 32084
    :cond_24
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_31

    .line 32085
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 32088
    :cond_31
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3f

    .line 32089
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 32092
    :cond_3f
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4e

    .line 32093
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 32096
    :cond_4e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5e

    .line 32097
    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 32100
    :cond_5e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6e

    .line 32101
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 32104
    :cond_6e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7e

    .line 32105
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 32108
    :cond_7e
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 32109
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getTotalPush()I
    .registers 2

    .prologue
    .line 32017
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    return v0
.end method

.method public getTotalUnread()I
    .registers 2

    .prologue
    .line 31955
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    return v0
.end method

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 31972
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
    .line 32024
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
    .line 31962
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
    .line 32004
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
    .line 32014
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

    .line 31952
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

    .line 32041
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedIsInitialized:B

    .line 32042
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 32045
    :goto_8
    return v1

    .line 32042
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 32044
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->memoizedIsInitialized:B

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
    .line 32116
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

    .line 32050
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getSerializedSize()I

    .line 32051
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 32052
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->notification_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 32051
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 32054
    :cond_1d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_28

    .line 32055
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalUnread_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 32057
    :cond_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_34

    .line 32058
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestNotificationTime_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 32060
    :cond_34
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_41

    .line 32061
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32063
    :cond_41
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4f

    .line 32064
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->latestPushNotificationTime_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 32066
    :cond_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5d

    .line 32067
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->totalPush_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 32069
    :cond_5d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6b

    .line 32070
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsResponse;->lastReadTime_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 32072
    :cond_6b
    return-void
.end method