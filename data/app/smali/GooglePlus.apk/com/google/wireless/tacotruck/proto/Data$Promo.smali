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

.field private wagonPhoneVerificationPromoTimestampMsec_:J

.field private wagonPhotoUploadPromoTimestampMsec_:J

.field private wagonWhatsHotPromoTimestampMsec_:J

.field private whatsHotPromoTimestampMsec_:J

.field private wwMainFlowAckTimestampMsec_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29823
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 29824
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->initFields()V

    .line 29825
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 29241
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 29334
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedIsInitialized:B

    .line 29369
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedSerializedSize:I

    .line 29242
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29243
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29334
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedIsInitialized:B

    .line 29369
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedSerializedSize:I

    .line 29243
    return-void
.end method

.method static synthetic access$39602(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$39702(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$39802(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$39902(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$40002(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->whatsHotPromoTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$40102(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhotoUploadPromoTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$40202(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhoneVerificationPromoTimestampMsec_:J

    return-wide p1
.end method

.method static synthetic access$40302(Lcom/google/wireless/tacotruck/proto/Data$Promo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29236
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 1

    .prologue
    .line 29247
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 29326
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    .line 29327
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    .line 29328
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    .line 29329
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    .line 29330
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->whatsHotPromoTimestampMsec_:J

    .line 29331
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhotoUploadPromoTimestampMsec_:J

    .line 29332
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhoneVerificationPromoTimestampMsec_:J

    .line 29333
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 1

    .prologue
    .line 29481
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->access$39400()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 29484
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
    .line 29236
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 2

    .prologue
    .line 29251
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    return-object v0
.end method

.method public getNativeAndroidAppPromoDismissTimestampMsec()J
    .registers 3

    .prologue
    .line 29262
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    return-wide v0
.end method

.method public getNativeIphoneAppPromoDismissTimestampMsec()J
    .registers 3

    .prologue
    .line 29272
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 29371
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedSerializedSize:I

    .line 29372
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 29404
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 29374
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 29375
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 29376
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29379
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 29380
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29383
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_33

    .line 29384
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29387
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 29388
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29391
    :cond_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 29392
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->whatsHotPromoTimestampMsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29395
    :cond_52
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 29396
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhotoUploadPromoTimestampMsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29399
    :cond_62
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_72

    .line 29400
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhoneVerificationPromoTimestampMsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29403
    :cond_72
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedSerializedSize:I

    move v1, v0

    .line 29404
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getWagonPhoneVerificationPromoTimestampMsec()J
    .registers 3

    .prologue
    .line 29322
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhoneVerificationPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWagonPhotoUploadPromoTimestampMsec()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29312
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhotoUploadPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWagonWhatsHotPromoTimestampMsec()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29292
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWhatsHotPromoTimestampMsec()J
    .registers 3

    .prologue
    .line 29302
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->whatsHotPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWwMainFlowAckTimestampMsec()J
    .registers 3

    .prologue
    .line 29282
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    return-wide v0
.end method

.method public hasNativeAndroidAppPromoDismissTimestampMsec()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29259
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
    .line 29269
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

.method public hasWagonPhoneVerificationPromoTimestampMsec()Z
    .registers 3

    .prologue
    .line 29319
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

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

.method public hasWagonPhotoUploadPromoTimestampMsec()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29309
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

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

.method public hasWagonWhatsHotPromoTimestampMsec()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29289
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

.method public hasWhatsHotPromoTimestampMsec()Z
    .registers 3

    .prologue
    .line 29299
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

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

.method public hasWwMainFlowAckTimestampMsec()Z
    .registers 3

    .prologue
    .line 29279
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

    .line 29336
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedIsInitialized:B

    .line 29337
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 29340
    :goto_8
    return v1

    .line 29337
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 29339
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29236
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 2

    .prologue
    .line 29482
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29236
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 2

    .prologue
    .line 29486
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

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
    .line 29411
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

    .line 29345
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getSerializedSize()I

    .line 29346
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 29347
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29349
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 29350
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29352
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_28

    .line 29353
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29355
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 29356
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29358
    :cond_35
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 29359
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->whatsHotPromoTimestampMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29361
    :cond_43
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 29362
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhotoUploadPromoTimestampMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29364
    :cond_51
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5f

    .line 29365
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhoneVerificationPromoTimestampMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 29367
    :cond_5f
    return-void
.end method
