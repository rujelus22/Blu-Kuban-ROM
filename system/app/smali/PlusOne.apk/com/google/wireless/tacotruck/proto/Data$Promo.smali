.class public final Lcom/google/wireless/tacotruck/proto/Data$Promo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PromoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Promo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nativeAndroidAppPromoDismissTimestampMsec_:J

.field private nativeIphoneAppPromoDismissTimestampMsec_:J

.field private wagonWhatsHotPromoTimestampMsec_:J

.field private wwMainFlowAckTimestampMsec_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27042
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 27043
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->initFields()V

    .line 27044
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26619
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26679
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedIsInitialized:B

    .line 26705
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedSerializedSize:I

    .line 26620
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26614
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26621
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26679
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedIsInitialized:B

    .line 26705
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedSerializedSize:I

    .line 26621
    return-void
.end method

.method static synthetic access$36402(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26614
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$36502(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26614
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$36602(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26614
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$36702(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26614
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$36802(Lcom/google/wireless/tacotruck/proto/Data$Promo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26614
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 1

    .prologue
    .line 26625
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 26674
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    .line 26675
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    .line 26676
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    .line 26677
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    .line 26678
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 1

    .prologue
    .line 26805
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->access$36200()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 26808
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26614
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 2

    .prologue
    .line 26629
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    return-object v0
.end method

.method public getNativeAndroidAppPromoDismissTimestampMsec()J
    .registers 3

    .prologue
    .line 26640
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    return-wide v0
.end method

.method public getNativeIphoneAppPromoDismissTimestampMsec()J
    .registers 3

    .prologue
    .line 26650
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 26707
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedSerializedSize:I

    .line 26708
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 26728
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 26710
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 26711
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 26712
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 26715
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 26716
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 26719
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_33

    .line 26720
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 26723
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 26724
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 26727
    :cond_42
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedSerializedSize:I

    move v1, v0

    .line 26728
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getWagonWhatsHotPromoTimestampMsec()J
    .registers 3

    .prologue
    .line 26670
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWwMainFlowAckTimestampMsec()J
    .registers 3

    .prologue
    .line 26660
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    return-wide v0
.end method

.method public hasNativeAndroidAppPromoDismissTimestampMsec()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26637
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNativeIphoneAppPromoDismissTimestampMsec()Z
    .registers 3

    .prologue
    .line 26647
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

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

.method public hasWagonWhatsHotPromoTimestampMsec()Z
    .registers 3

    .prologue
    .line 26667
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

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

.method public hasWwMainFlowAckTimestampMsec()Z
    .registers 3

    .prologue
    .line 26657
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 26681
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedIsInitialized:B

    .line 26682
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 26685
    :goto_8
    return v1

    .line 26682
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 26684
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedIsInitialized:B

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
    .line 26735
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

    .line 26690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getSerializedSize()I

    .line 26691
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 26692
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26694
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 26695
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26697
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_28

    .line 26698
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26700
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 26701
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26703
    :cond_35
    return-void
.end method
