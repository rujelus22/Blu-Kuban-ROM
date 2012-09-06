.class public final Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PromoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Promo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Promo;",
        "Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PromoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private nativeAndroidAppPromoDismissTimestampMsec_:J

.field private nativeIphoneAppPromoDismissTimestampMsec_:J

.field private wagonPhoneVerificationPromoTimestampMsec_:J

.field private wagonPhotoUploadPromoTimestampMsec_:J

.field private wagonWhatsHotPromoTimestampMsec_:J

.field private whatsHotPromoTimestampMsec_:J

.field private wwMainFlowAckTimestampMsec_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29493
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29494
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->maybeForceBuilderInitialization()V

    .line 29495
    return-void
.end method

.method static synthetic access$39400()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 1

    .prologue
    .line 29488
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 1

    .prologue
    .line 29500
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 29498
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 3

    .prologue
    .line 29531
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    .line 29532
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Promo;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 29533
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 29535
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 6

    .prologue
    .line 29549
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Promo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Promo;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 29550
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Promo;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29551
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 29552
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 29553
    or-int/lit8 v2, v2, 0x1

    .line 29555
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$39602(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 29556
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 29557
    or-int/lit8 v2, v2, 0x2

    .line 29559
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$39702(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 29560
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 29561
    or-int/lit8 v2, v2, 0x4

    .line 29563
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$39802(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 29564
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 29565
    or-int/lit8 v2, v2, 0x8

    .line 29567
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$39902(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 29568
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 29569
    or-int/lit8 v2, v2, 0x10

    .line 29571
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->whatsHotPromoTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->whatsHotPromoTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$40002(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 29572
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 29573
    or-int/lit8 v2, v2, 0x20

    .line 29575
    :cond_4f
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhotoUploadPromoTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhotoUploadPromoTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$40102(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 29576
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 29577
    or-int/lit8 v2, v2, 0x40

    .line 29579
    :cond_5c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhoneVerificationPromoTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonPhoneVerificationPromoTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$40202(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 29580
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$40302(Lcom/google/wireless/tacotruck/proto/Data$Promo;I)I

    .line 29581
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 29504
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 29505
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    .line 29506
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29507
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    .line 29508
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29509
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    .line 29510
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29511
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    .line 29512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29513
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->whatsHotPromoTimestampMsec_:J

    .line 29514
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29515
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhotoUploadPromoTimestampMsec_:J

    .line 29516
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29517
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhoneVerificationPromoTimestampMsec_:J

    .line 29518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29519
    return-object p0
.end method

.method public clearNativeAndroidAppPromoDismissTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 29687
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    .line 29690
    return-object p0
.end method

.method public clearNativeIphoneAppPromoDismissTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 29708
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29709
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    .line 29711
    return-object p0
.end method

.method public clearWagonPhoneVerificationPromoTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 29813
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29814
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhoneVerificationPromoTimestampMsec_:J

    .line 29816
    return-object p0
.end method

.method public clearWagonPhotoUploadPromoTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29793
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhotoUploadPromoTimestampMsec_:J

    .line 29795
    return-object p0
.end method

.method public clearWagonWhatsHotPromoTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29750
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29751
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    .line 29753
    return-object p0
.end method

.method public clearWhatsHotPromoTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 29771
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29772
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->whatsHotPromoTimestampMsec_:J

    .line 29774
    return-object p0
.end method

.method public clearWwMainFlowAckTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 29729
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29730
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    .line 29732
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 29523
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29488
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 2

    .prologue
    .line 29527
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAndroidAppPromoDismissTimestampMsec()J
    .registers 3

    .prologue
    .line 29678
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    return-wide v0
.end method

.method public getNativeIphoneAppPromoDismissTimestampMsec()J
    .registers 3

    .prologue
    .line 29699
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    return-wide v0
.end method

.method public getWagonPhoneVerificationPromoTimestampMsec()J
    .registers 3

    .prologue
    .line 29804
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhoneVerificationPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWagonPhotoUploadPromoTimestampMsec()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29783
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhotoUploadPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWagonWhatsHotPromoTimestampMsec()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29741
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWhatsHotPromoTimestampMsec()J
    .registers 3

    .prologue
    .line 29762
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->whatsHotPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWwMainFlowAckTimestampMsec()J
    .registers 3

    .prologue
    .line 29720
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    return-wide v0
.end method

.method public hasNativeAndroidAppPromoDismissTimestampMsec()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29675
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

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
    .line 29696
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

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
    .line 29801
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

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
    .line 29780
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

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
    .line 29738
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

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
    .line 29759
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

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
    .line 29717
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 29611
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29488
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 29488
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29488
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29619
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 29620
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6a

    .line 29625
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29627
    :sswitch_d
    return-object p0

    .line 29632
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29633
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    goto :goto_0

    .line 29637
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29638
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    goto :goto_0

    .line 29642
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29643
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    goto :goto_0

    .line 29647
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29648
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    goto :goto_0

    .line 29652
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29653
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->whatsHotPromoTimestampMsec_:J

    goto :goto_0

    .line 29657
    :sswitch_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29658
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhotoUploadPromoTimestampMsec_:J

    goto :goto_0

    .line 29662
    :sswitch_5c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29663
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhoneVerificationPromoTimestampMsec_:J

    goto :goto_0

    .line 29620
    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
        0x38 -> :sswitch_5c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 29585
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 29607
    :cond_6
    :goto_6
    return-object p0

    .line 29586
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasNativeAndroidAppPromoDismissTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 29587
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getNativeAndroidAppPromoDismissTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setNativeAndroidAppPromoDismissTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 29589
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasNativeIphoneAppPromoDismissTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 29590
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getNativeIphoneAppPromoDismissTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setNativeIphoneAppPromoDismissTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 29592
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasWwMainFlowAckTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 29593
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getWwMainFlowAckTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setWwMainFlowAckTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 29595
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasWagonWhatsHotPromoTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 29596
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getWagonWhatsHotPromoTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setWagonWhatsHotPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 29598
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasWhatsHotPromoTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 29599
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getWhatsHotPromoTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setWhatsHotPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 29601
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasWagonPhotoUploadPromoTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 29602
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getWagonPhotoUploadPromoTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setWagonPhotoUploadPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 29604
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasWagonPhoneVerificationPromoTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29605
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getWagonPhoneVerificationPromoTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setWagonPhoneVerificationPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    goto :goto_6
.end method

.method public setNativeAndroidAppPromoDismissTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29682
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    .line 29684
    return-object p0
.end method

.method public setNativeIphoneAppPromoDismissTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29702
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29703
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    .line 29705
    return-object p0
.end method

.method public setWagonPhoneVerificationPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29807
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29808
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhoneVerificationPromoTimestampMsec_:J

    .line 29810
    return-object p0
.end method

.method public setWagonPhotoUploadPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29786
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29787
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonPhotoUploadPromoTimestampMsec_:J

    .line 29789
    return-object p0
.end method

.method public setWagonWhatsHotPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29744
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29745
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    .line 29747
    return-object p0
.end method

.method public setWhatsHotPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29765
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29766
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->whatsHotPromoTimestampMsec_:J

    .line 29768
    return-object p0
.end method

.method public setWwMainFlowAckTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29723
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 29724
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    .line 29726
    return-object p0
.end method
