.class public final Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileCirclesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circle_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;"
        }
    .end annotation
.end field

.field private key_:Ljava/lang/Object;

.field private memberId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:Ljava/lang/Object;

.field private serverTime_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4244
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 4245
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->initFields()V

    .line 4246
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3569
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3717
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memoizedIsInitialized:B

    .line 3746
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memoizedSerializedSize:I

    .line 3570
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3564
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3571
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3717
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memoizedIsInitialized:B

    .line 3746
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memoizedSerializedSize:I

    .line 3571
    return-void
.end method

.method static synthetic access$4702(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->ownerGaiaId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3564
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->serverTime_:J

    return-wide p1
.end method

.method static synthetic access$4902(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3564
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memberId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3564
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 1

    .prologue
    .line 3575
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3646
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->key_:Ljava/lang/Object;

    .line 3647
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3648
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3650
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->key_:Ljava/lang/Object;

    .line 3653
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

.method private getMemberIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3699
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memberId_:Ljava/lang/Object;

    .line 3700
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3701
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3703
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memberId_:Ljava/lang/Object;

    .line 3706
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
    .line 3604
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 3605
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3606
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3608
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 3611
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
    .line 3711
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 3712
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->serverTime_:J

    .line 3713
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->key_:Ljava/lang/Object;

    .line 3714
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    .line 3715
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memberId_:Ljava/lang/Object;

    .line 3716
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 1

    .prologue
    .line 3850
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->access$4500()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3853
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3808
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->access$4400(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircle(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 3
    .parameter "index"

    .prologue
    .line 3671
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    return-object v0
.end method

.method public getCircleCount()I
    .registers 2

    .prologue
    .line 3668
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCircleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3661
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    return-object v0
.end method

.method public getCircleOrBuilder(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircleOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircleOrBuilder;

    return-object v0
.end method

.method public getCircleOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircleOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3665
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 2

    .prologue
    .line 3579
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3632
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->key_:Ljava/lang/Object;

    .line 3633
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3634
    check-cast v1, Ljava/lang/String;

    .line 3642
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3636
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3638
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3639
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3640
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3642
    goto :goto_8
.end method

.method public getMemberId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3685
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memberId_:Ljava/lang/Object;

    .line 3686
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3687
    check-cast v1, Ljava/lang/String;

    .line 3695
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3689
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3691
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3692
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3693
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memberId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3695
    goto :goto_8
.end method

.method public getOwnerGaiaId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3590
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->ownerGaiaId_:Ljava/lang/Object;

    .line 3591
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3592
    check-cast v1, Ljava/lang/String;

    .line 3600
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3594
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3596
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3597
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3598
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->ownerGaiaId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3600
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3748
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memoizedSerializedSize:I

    .line 3749
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 3773
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 3751
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 3752
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 3753
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getOwnerGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3756
    :cond_1a
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_27

    .line 3757
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->serverTime_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 3760
    :cond_27
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_37

    .line 3761
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3764
    :cond_37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_50

    .line 3765
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3764
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 3768
    :cond_50
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_62

    .line 3769
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getMemberIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3772
    :cond_62
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 3773
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getServerTime()J
    .registers 3

    .prologue
    .line 3622
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->serverTime_:J

    return-wide v0
.end method

.method public hasKey()Z
    .registers 3

    .prologue
    .line 3629
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

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

.method public hasMemberId()Z
    .registers 3

    .prologue
    .line 3682
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3587
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasServerTime()Z
    .registers 3

    .prologue
    .line 3619
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3719
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memoizedIsInitialized:B

    .line 3720
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3723
    :goto_8
    return v1

    .line 3720
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3722
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 3851
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 3855
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

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
    .line 3780
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

    .line 3728
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getSerializedSize()I

    .line 3729
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 3730
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getOwnerGaiaIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3732
    :cond_13
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 3733
    iget-wide v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->serverTime_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3735
    :cond_1e
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2c

    .line 3736
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3738
    :cond_2c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 3739
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3738
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 3741
    :cond_43
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_53

    .line 3742
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getMemberIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3744
    :cond_53
    return-void
.end method
