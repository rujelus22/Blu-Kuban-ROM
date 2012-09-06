.class public final Lcom/google/wireless/realtimechat/proto/Client$Migration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$MigrationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Migration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Migration;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private migratedAt_:J

.field private newId_:Ljava/lang/Object;

.field private oldId_:Ljava/lang/Object;

.field private replacedNewId_:Ljava/lang/Object;

.field private replacedOldId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16254
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$Migration;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 16255
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->initFields()V

    .line 16256
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15630
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15789
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->memoizedIsInitialized:B

    .line 15818
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->memoizedSerializedSize:I

    .line 15631
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15625
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration;-><init>(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15632
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15789
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->memoizedIsInitialized:B

    .line 15818
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->memoizedSerializedSize:I

    .line 15632
    return-void
.end method

.method static synthetic access$21502(Lcom/google/wireless/realtimechat/proto/Client$Migration;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15625
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->oldId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21602(Lcom/google/wireless/realtimechat/proto/Client$Migration;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15625
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21702(Lcom/google/wireless/realtimechat/proto/Client$Migration;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15625
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->migratedAt_:J

    return-wide p1
.end method

.method static synthetic access$21802(Lcom/google/wireless/realtimechat/proto/Client$Migration;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15625
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedOldId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21902(Lcom/google/wireless/realtimechat/proto/Client$Migration;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15625
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedNewId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22002(Lcom/google/wireless/realtimechat/proto/Client$Migration;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15625
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 1

    .prologue
    .line 15636
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method private getNewIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15697
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newId_:Ljava/lang/Object;

    .line 15698
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15699
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15701
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newId_:Ljava/lang/Object;

    .line 15704
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

.method private getOldIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15665
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->oldId_:Ljava/lang/Object;

    .line 15666
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15667
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15669
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->oldId_:Ljava/lang/Object;

    .line 15672
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

.method private getReplacedNewIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15771
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedNewId_:Ljava/lang/Object;

    .line 15772
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15773
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15775
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedNewId_:Ljava/lang/Object;

    .line 15778
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

.method private getReplacedOldIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15739
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedOldId_:Ljava/lang/Object;

    .line 15740
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 15741
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15743
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedOldId_:Ljava/lang/Object;

    .line 15746
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
    .line 15783
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->oldId_:Ljava/lang/Object;

    .line 15784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newId_:Ljava/lang/Object;

    .line 15785
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->migratedAt_:J

    .line 15786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedOldId_:Ljava/lang/Object;

    .line 15787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedNewId_:Ljava/lang/Object;

    .line 15788
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 1

    .prologue
    .line 15922
    #calls: Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->access$21300()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15925
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15625
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 15640
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getMigratedAt()J
    .registers 3

    .prologue
    .line 15715
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->migratedAt_:J

    return-wide v0
.end method

.method public getNewId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15683
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newId_:Ljava/lang/Object;

    .line 15684
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15685
    check-cast v1, Ljava/lang/String;

    .line 15693
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15687
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15689
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15690
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15691
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15693
    goto :goto_8
.end method

.method public getOldId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15651
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->oldId_:Ljava/lang/Object;

    .line 15652
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15653
    check-cast v1, Ljava/lang/String;

    .line 15661
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15655
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15657
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15658
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15659
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->oldId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15661
    goto :goto_8
.end method

.method public getReplacedNewId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15757
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedNewId_:Ljava/lang/Object;

    .line 15758
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15759
    check-cast v1, Ljava/lang/String;

    .line 15767
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15761
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15763
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15764
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15765
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedNewId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15767
    goto :goto_8
.end method

.method public getReplacedOldId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 15725
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedOldId_:Ljava/lang/Object;

    .line 15726
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 15727
    check-cast v1, Ljava/lang/String;

    .line 15735
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 15729
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15731
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15732
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 15733
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->replacedOldId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 15735
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15820
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->memoizedSerializedSize:I

    .line 15821
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 15845
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 15823
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 15824
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 15825
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getOldIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15828
    :cond_19
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 15829
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getNewIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15832
    :cond_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 15833
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->migratedAt_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 15836
    :cond_37
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_49

    .line 15837
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getReplacedOldIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15840
    :cond_49
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5b

    .line 15841
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getReplacedNewIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15844
    :cond_5b
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->memoizedSerializedSize:I

    move v1, v0

    .line 15845
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasMigratedAt()Z
    .registers 3

    .prologue
    .line 15712
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

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

.method public hasNewId()Z
    .registers 3

    .prologue
    .line 15680
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

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

.method public hasOldId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 15648
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReplacedNewId()Z
    .registers 3

    .prologue
    .line 15754
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

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

.method public hasReplacedOldId()Z
    .registers 3

    .prologue
    .line 15722
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

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

    .line 15791
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->memoizedIsInitialized:B

    .line 15792
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 15795
    :goto_8
    return v1

    .line 15792
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 15794
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15625
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 2

    .prologue
    .line 15923
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15625
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    .registers 2

    .prologue
    .line 15927
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

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
    .line 15852
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

    .line 15800
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getSerializedSize()I

    .line 15801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 15802
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getOldIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15804
    :cond_12
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 15805
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getNewIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15807
    :cond_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 15808
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->migratedAt_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 15810
    :cond_2c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3c

    .line 15811
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getReplacedOldIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15813
    :cond_3c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$Migration;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4c

    .line 15814
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getReplacedNewIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15816
    :cond_4c
    return-void
.end method
