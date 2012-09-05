.class public final Lcom/google/wireless/webapps/Analytics$Event;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/webapps/Analytics$Event$Builder;,
        Lcom/google/wireless/webapps/Analytics$Event$Step;,
        Lcom/google/wireless/webapps/Analytics$Event$StepOrBuilder;,
        Lcom/google/wireless/webapps/Analytics$Event$EventType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/webapps/Analytics$Event;

.field private static final serialVersionUID:J


# instance fields
.field private action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

.field private bitField0_:I

.field private customValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;"
        }
    .end annotation
.end field

.field private details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

.field private endTimeMsec_:J

.field private endTime_:J

.field private eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private startTimeMsec_:J

.field private startTime_:J

.field private step_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2550
    new-instance v0, Lcom/google/wireless/webapps/Analytics$Event;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/webapps/Analytics$Event;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$Event;->defaultInstance:Lcom/google/wireless/webapps/Analytics$Event;

    .line 2551
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event;->defaultInstance:Lcom/google/wireless/webapps/Analytics$Event;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$Event;->initFields()V

    .line 2552
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/webapps/Analytics$Event$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1035
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1764
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->memoizedIsInitialized:B

    .line 1805
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->memoizedSerializedSize:I

    .line 1036
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/webapps/Analytics$Event$Builder;Lcom/google/wireless/webapps/Analytics$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/google/wireless/webapps/Analytics$Event;-><init>(Lcom/google/wireless/webapps/Analytics$Event$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1037
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1764
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->memoizedIsInitialized:B

    .line 1805
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->memoizedSerializedSize:I

    .line 1037
    return-void
.end method

.method static synthetic access$2302(Lcom/google/wireless/webapps/Analytics$Event;Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$EventType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/webapps/Analytics$Event;Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/webapps/Analytics$Event;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTime_:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/google/wireless/webapps/Analytics$Event;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTime_:J

    return-wide p1
.end method

.method static synthetic access$2702(Lcom/google/wireless/webapps/Analytics$Event;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTimeMsec_:J

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/google/wireless/webapps/Analytics$Event;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTimeMsec_:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/google/wireless/webapps/Analytics$Event;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/wireless/webapps/Analytics$Event;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/wireless/webapps/Analytics$Event;Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/wireless/webapps/Analytics$Event;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/wireless/webapps/Analytics$Event;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/wireless/webapps/Analytics$Event;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/webapps/Analytics$Event;
    .registers 1

    .prologue
    .line 1041
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event;->defaultInstance:Lcom/google/wireless/webapps/Analytics$Event;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1754
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->UNSPECIFIED:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 1755
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 1756
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTime_:J

    .line 1757
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTime_:J

    .line 1758
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTimeMsec_:J

    .line 1759
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTimeMsec_:J

    .line 1760
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    .line 1761
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 1762
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    .line 1763
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    .registers 1

    .prologue
    .line 1925
    #calls: Lcom/google/wireless/webapps/Analytics$Event$Builder;->create()Lcom/google/wireless/webapps/Analytics$Event$Builder;
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->access$2100()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/webapps/Analytics$Event;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1872
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$Event$Builder;

    #calls: Lcom/google/wireless/webapps/Analytics$Event$Builder;->buildParsed()Lcom/google/wireless/webapps/Analytics$Event;
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->access$2000(Lcom/google/wireless/webapps/Analytics$Event$Builder;)Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getCustomValue(I)Lcom/google/wireless/webapps/Analytics$CustomValue;
    .registers 3
    .parameter "index"

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$CustomValue;

    return-object v0
.end method

.method public getCustomValueCount()I
    .registers 2

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCustomValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$CustomValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    return-object v0
.end method

.method public getCustomValueOrBuilder(I)Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;

    return-object v0
.end method

.method public getCustomValueOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$CustomValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event;
    .registers 2

    .prologue
    .line 1045
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event;->defaultInstance:Lcom/google/wireless/webapps/Analytics$Event;

    return-object v0
.end method

.method public getDetails()Lcom/google/wireless/webapps/Analytics$EventDetails;
    .registers 2

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    return-object v0
.end method

.method public getEndTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1678
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTime_:J

    return-wide v0
.end method

.method public getEndTimeMsec()J
    .registers 3

    .prologue
    .line 1698
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTimeMsec_:J

    return-wide v0
.end method

.method public getEventType()Lcom/google/wireless/webapps/Analytics$Event$EventType;
    .registers 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1807
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->memoizedSerializedSize:I

    .line 1808
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 1848
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 1810
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 1811
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1e

    .line 1812
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-virtual {v3}, Lcom/google/wireless/webapps/Analytics$Event$EventType;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1815
    :cond_1e
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2b

    .line 1816
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1819
    :cond_2b
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_39

    .line 1820
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTime_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1823
    :cond_39
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_46

    .line 1824
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTime_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1827
    :cond_46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_47
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_60

    .line 1828
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1827
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1831
    :cond_60
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_70

    .line 1832
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$Event;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1835
    :cond_70
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_80

    .line 1836
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTimeMsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1839
    :cond_80
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_8f

    .line 1840
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTimeMsec_:J

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1843
    :cond_8f
    const/4 v0, 0x0

    :goto_90
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_aa

    .line 1844
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1843
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 1847
    :cond_aa
    iput v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->memoizedSerializedSize:I

    move v2, v1

    .line 1848
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getStartTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1668
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTime_:J

    return-wide v0
.end method

.method public getStartTimeMsec()J
    .registers 3

    .prologue
    .line 1688
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTimeMsec_:J

    return-wide v0
.end method

.method public getStep(I)Lcom/google/wireless/webapps/Analytics$Event$Step;
    .registers 3
    .parameter "index"

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$Event$Step;

    return-object v0
.end method

.method public getStepCount()I
    .registers 2

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStepList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event$Step;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    return-object v0
.end method

.method public getStepOrBuilder(I)Lcom/google/wireless/webapps/Analytics$Event$StepOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$Event$StepOrBuilder;

    return-object v0
.end method

.method public getStepOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$Event$StepOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    return-object v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    .line 1655
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

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

.method public hasDetails()Z
    .registers 3

    .prologue
    .line 1726
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEndTime()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1675
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

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

.method public hasEndTimeMsec()Z
    .registers 3

    .prologue
    .line 1695
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

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

.method public hasEventType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1645
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStartTime()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1665
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

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

.method public hasStartTimeMsec()Z
    .registers 3

    .prologue
    .line 1685
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

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

    .line 1766
    iget-byte v0, p0, Lcom/google/wireless/webapps/Analytics$Event;->memoizedIsInitialized:B

    .line 1767
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1770
    :goto_8
    return v1

    .line 1767
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1769
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->memoizedIsInitialized:B

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
    .line 1855
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1775
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event;->getSerializedSize()I

    .line 1776
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 1777
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->eventType_:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$Event$EventType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1779
    :cond_17
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 1780
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->action_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1782
    :cond_22
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 1783
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1785
    :cond_2e
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_39

    .line 1786
    iget-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTime_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1788
    :cond_39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3a
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 1789
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->step_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1788
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 1791
    :cond_51
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5f

    .line 1792
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/webapps/Analytics$Event;->details_:Lcom/google/wireless/webapps/Analytics$EventDetails;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1794
    :cond_5f
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6d

    .line 1795
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/wireless/webapps/Analytics$Event;->startTimeMsec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1797
    :cond_6d
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7a

    .line 1798
    iget-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->endTimeMsec_:J

    invoke-virtual {p1, v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1800
    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_93

    .line 1801
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event;->customValue_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1800
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 1803
    :cond_93
    return-void
.end method
