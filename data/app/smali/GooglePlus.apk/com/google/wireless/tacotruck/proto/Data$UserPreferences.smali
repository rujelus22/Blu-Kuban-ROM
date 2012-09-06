.class public final Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$UserPreferencesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserPreferences"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cityLevelLocation_:Z

.field private defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private hideLocation_:Z

.field private locationSpeedbumpAcceptedDate_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

.field private streamViewType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29198
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 29199
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->initFields()V

    .line 29200
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28529
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28622
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->memoizedIsInitialized:B

    .line 28654
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->memoizedSerializedSize:I

    .line 28530
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28524
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;-><init>(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28531
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28622
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->memoizedIsInitialized:B

    .line 28654
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->memoizedSerializedSize:I

    .line 28531
    return-void
.end method

.method static synthetic access$38602(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28524
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hideLocation_:Z

    return p1
.end method

.method static synthetic access$38702(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28524
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->cityLevelLocation_:Z

    return p1
.end method

.method static synthetic access$38802(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28524
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->locationSpeedbumpAcceptedDate_:J

    return-wide p1
.end method

.method static synthetic access$38902(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28524
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object p1
.end method

.method static synthetic access$39000(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28524
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$39002(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28524
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$39102(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28524
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    return-object p1
.end method

.method static synthetic access$39202(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28524
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 1

    .prologue
    .line 28535
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28615
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hideLocation_:Z

    .line 28616
    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->cityLevelLocation_:Z

    .line 28617
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->locationSpeedbumpAcceptedDate_:J

    .line 28618
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 28619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    .line 28620
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 28621
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 1

    .prologue
    .line 28762
    #calls: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->access$38400()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28765
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCityLevelLocation()Z
    .registers 2

    .prologue
    .line 28560
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->cityLevelLocation_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28524
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2

    .prologue
    .line 28539
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object v0
.end method

.method public getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 28580
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getHideLocation()Z
    .registers 2

    .prologue
    .line 28550
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hideLocation_:Z

    return v0
.end method

.method public getLocationSpeedbumpAcceptedDate()J
    .registers 3

    .prologue
    .line 28570
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->locationSpeedbumpAcceptedDate_:J

    return-wide v0
.end method

.method public getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 2

    .prologue
    .line 28611
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 28656
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->memoizedSerializedSize:I

    .line 28657
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 28685
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 28659
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 28660
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 28661
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hideLocation_:Z

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 28664
    :cond_18
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_25

    .line 28665
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->cityLevelLocation_:Z

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 28668
    :cond_25
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_33

    .line 28669
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->locationSpeedbumpAcceptedDate_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 28672
    :cond_33
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_42

    .line 28673
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28676
    :cond_42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5c

    .line 28677
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28676
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 28680
    :cond_5c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6c

    .line 28681
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28684
    :cond_6c
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->memoizedSerializedSize:I

    move v2, v1

    .line 28685
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStreamViewType(I)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 3
    .parameter "index"

    .prologue
    .line 28597
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method public getStreamViewTypeCount()I
    .registers 2

    .prologue
    .line 28594
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStreamViewTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28587
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    return-object v0
.end method

.method public getStreamViewTypeOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$StreamViewTypeOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 28601
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewTypeOrBuilder;

    return-object v0
.end method

.method public getStreamViewTypeOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewTypeOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28591
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    return-object v0
.end method

.method public hasCityLevelLocation()Z
    .registers 3

    .prologue
    .line 28557
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

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

.method public hasDefaultPostAudience()Z
    .registers 3

    .prologue
    .line 28577
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

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

.method public hasHideLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28547
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLocationSpeedbumpAcceptedDate()Z
    .registers 3

    .prologue
    .line 28567
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

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

.method public hasPromoData()Z
    .registers 3

    .prologue
    .line 28608
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

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

    .line 28624
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->memoizedIsInitialized:B

    .line 28625
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 28628
    :goto_8
    return v1

    .line 28625
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 28627
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28524
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 28763
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28524
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 28767
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

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
    .line 28692
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

    .line 28633
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getSerializedSize()I

    .line 28634
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 28635
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hideLocation_:Z

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28637
    :cond_11
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1c

    .line 28638
    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->cityLevelLocation_:Z

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28640
    :cond_1c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_28

    .line 28641
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->locationSpeedbumpAcceptedDate_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28643
    :cond_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_35

    .line 28644
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28646
    :cond_35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_36
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 28647
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28646
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 28649
    :cond_4d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5b

    .line 28650
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28652
    :cond_5b
    return-void
.end method
