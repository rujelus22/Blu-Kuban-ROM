.class public final Lcom/google/wireless/webapps/Analytics$EventDetails;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$EventDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/webapps/Analytics$EventDetails;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private count_:I

.field private endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

.field private errorCode_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation
.end field

.field private favaRequestId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

.field private target_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3401
    new-instance v0, Lcom/google/wireless/webapps/Analytics$EventDetails;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/webapps/Analytics$EventDetails;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$EventDetails;->defaultInstance:Lcom/google/wireless/webapps/Analytics$EventDetails;

    .line 3402
    sget-object v0, Lcom/google/wireless/webapps/Analytics$EventDetails;->defaultInstance:Lcom/google/wireless/webapps/Analytics$EventDetails;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->initFields()V

    .line 3403
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2594
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2702
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->memoizedIsInitialized:B

    .line 2734
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->memoizedSerializedSize:I

    .line 2595
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;Lcom/google/wireless/webapps/Analytics$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2589
    invoke-direct {p0, p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;-><init>(Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2596
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2702
    iput-byte v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->memoizedIsInitialized:B

    .line 2734
    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->memoizedSerializedSize:I

    .line 2596
    return-void
.end method

.method static synthetic access$3602(Lcom/google/wireless/webapps/Analytics$EventDetails;Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2589
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/wireless/webapps/Analytics$EventDetails;Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2589
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/wireless/webapps/Analytics$EventDetails;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2589
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/wireless/webapps/Analytics$EventDetails;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2589
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->count_:I

    return p1
.end method

.method static synthetic access$4000(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/wireless/webapps/Analytics$EventDetails;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2589
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/wireless/webapps/Analytics$EventDetails;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2589
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/wireless/webapps/Analytics$EventDetails;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2589
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/webapps/Analytics$EventDetails;
    .registers 1

    .prologue
    .line 2600
    sget-object v0, Lcom/google/wireless/webapps/Analytics$EventDetails;->defaultInstance:Lcom/google/wireless/webapps/Analytics$EventDetails;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2695
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2696
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2697
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    .line 2698
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->count_:I

    .line 2699
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    .line 2700
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    .line 2701
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 1

    .prologue
    .line 2847
    #calls: Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->create()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->access$3400()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2850
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->newBuilder()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 2656
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2589
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$EventDetails;
    .registers 2

    .prologue
    .line 2604
    sget-object v0, Lcom/google/wireless/webapps/Analytics$EventDetails;->defaultInstance:Lcom/google/wireless/webapps/Analytics$EventDetails;

    return-object v0
.end method

.method public getEndView()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getErrorCode(I)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 3
    .parameter "index"

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getErrorCodeCount()I
    .registers 2

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getErrorCodeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    return-object v0
.end method

.method public getErrorCodeOrBuilder(I)Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;

    return-object v0
.end method

.method public getErrorCodeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    return-object v0
.end method

.method public getFavaRequestId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFavaRequestIdCount()I
    .registers 2

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFavaRequestIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2736
    iget v2, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->memoizedSerializedSize:I

    .line 2737
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 2770
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 2739
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 2740
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 2741
    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2744
    :cond_18
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_25

    .line 2745
    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2748
    :cond_25
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3f

    .line 2749
    const/4 v5, 0x3

    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2748
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2752
    :cond_3f
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_4c

    .line 2753
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->count_:I

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2756
    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_66

    .line 2757
    const/4 v5, 0x5

    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2756
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 2761
    :cond_66
    const/4 v0, 0x0

    .line 2762
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_68
    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_84

    .line 2763
    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 2762
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 2766
    :cond_84
    add-int/2addr v2, v0

    .line 2767
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getFavaRequestIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2769
    iput v2, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->memoizedSerializedSize:I

    move v3, v2

    .line 2770
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_9
.end method

.method public getStartView()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getTarget(I)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 3
    .parameter "index"

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getTargetCount()I
    .registers 2

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTargetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    return-object v0
.end method

.method public getTargetOrBuilder(I)Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;

    return-object v0
.end method

.method public getTargetOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$UniqueIdOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    return-object v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 2653
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

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

.method public hasEndView()Z
    .registers 3

    .prologue
    .line 2622
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

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

.method public hasStartView()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2612
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

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

    .line 2704
    iget-byte v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->memoizedIsInitialized:B

    .line 2705
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2708
    :goto_8
    return v1

    .line 2705
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2707
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2589
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->newBuilderForType()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 2848
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->newBuilder()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2589
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->toBuilder()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 2852
    invoke-static {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->newBuilder(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

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
    .line 2777
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

    .line 2713
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getSerializedSize()I

    .line 2714
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 2715
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2717
    :cond_11
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1c

    .line 2718
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2720
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 2721
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2720
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2723
    :cond_34
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3f

    .line 2724
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->count_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2726
    :cond_3f
    const/4 v0, 0x0

    :goto_40
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 2727
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2726
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 2729
    :cond_57
    const/4 v0, 0x0

    :goto_58
    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 2730
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2729
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 2732
    :cond_73
    return-void
.end method
