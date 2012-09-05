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

.field private wagonWhatsHotPromoTimestampMsec_:J

.field private wwMainFlowAckTimestampMsec_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26817
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26818
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->maybeForceBuilderInitialization()V

    .line 26819
    return-void
.end method

.method static synthetic access$36200()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 1

    .prologue
    .line 26812
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 1

    .prologue
    .line 26824
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26822
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 3

    .prologue
    .line 26849
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    .line 26850
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Promo;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26851
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26853
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 6

    .prologue
    .line 26867
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Promo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Promo;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 26868
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Promo;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26869
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 26870
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 26871
    or-int/lit8 v2, v2, 0x1

    .line 26873
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeAndroidAppPromoDismissTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$36402(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 26874
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 26875
    or-int/lit8 v2, v2, 0x2

    .line 26877
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->nativeIphoneAppPromoDismissTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$36502(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 26878
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 26879
    or-int/lit8 v2, v2, 0x4

    .line 26881
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->wwMainFlowAckTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$36602(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 26882
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 26883
    or-int/lit8 v2, v2, 0x8

    .line 26885
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->wagonWhatsHotPromoTimestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$36702(Lcom/google/wireless/tacotruck/proto/Data$Promo;J)J

    .line 26886
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Promo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->access$36802(Lcom/google/wireless/tacotruck/proto/Data$Promo;I)I

    .line 26887
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 26828
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26829
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    .line 26830
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26831
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    .line 26832
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26833
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    .line 26834
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26835
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    .line 26836
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26837
    return-object p0
.end method

.method public clearNativeAndroidAppPromoDismissTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 26969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26970
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    .line 26972
    return-object p0
.end method

.method public clearNativeIphoneAppPromoDismissTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 26990
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26991
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    .line 26993
    return-object p0
.end method

.method public clearWagonWhatsHotPromoTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 27032
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 27033
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    .line 27035
    return-object p0
.end method

.method public clearWwMainFlowAckTimestampMsec()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 27011
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 27012
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    .line 27014
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 3

    .prologue
    .line 26841
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
    .line 26812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26812
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 2

    .prologue
    .line 26845
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAndroidAppPromoDismissTimestampMsec()J
    .registers 3

    .prologue
    .line 26960
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    return-wide v0
.end method

.method public getNativeIphoneAppPromoDismissTimestampMsec()J
    .registers 3

    .prologue
    .line 26981
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    return-wide v0
.end method

.method public getWagonWhatsHotPromoTimestampMsec()J
    .registers 3

    .prologue
    .line 27023
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    return-wide v0
.end method

.method public getWwMainFlowAckTimestampMsec()J
    .registers 3

    .prologue
    .line 27002
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    return-wide v0
.end method

.method public hasNativeAndroidAppPromoDismissTimestampMsec()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26957
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
    .line 26978
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

.method public hasWagonWhatsHotPromoTimestampMsec()Z
    .registers 3

    .prologue
    .line 27020
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

.method public hasWwMainFlowAckTimestampMsec()Z
    .registers 3

    .prologue
    .line 26999
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
    .line 26812
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

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
    .line 26812
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
    .line 26916
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 26917
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 26922
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26924
    :sswitch_d
    return-object p0

    .line 26929
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    goto :goto_0

    .line 26934
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    goto :goto_0

    .line 26939
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26940
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    goto :goto_0

    .line 26944
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26945
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    goto :goto_0

    .line 26917
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 26891
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26904
    :cond_6
    :goto_6
    return-object p0

    .line 26892
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasNativeAndroidAppPromoDismissTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26893
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getNativeAndroidAppPromoDismissTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setNativeAndroidAppPromoDismissTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 26895
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasNativeIphoneAppPromoDismissTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 26896
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getNativeIphoneAppPromoDismissTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setNativeIphoneAppPromoDismissTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 26898
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasWwMainFlowAckTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 26899
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getWwMainFlowAckTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setWwMainFlowAckTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 26901
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->hasWagonWhatsHotPromoTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26902
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getWagonWhatsHotPromoTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->setWagonWhatsHotPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    goto :goto_6
.end method

.method public setNativeAndroidAppPromoDismissTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26964
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeAndroidAppPromoDismissTimestampMsec_:J

    .line 26966
    return-object p0
.end method

.method public setNativeIphoneAppPromoDismissTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26984
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 26985
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->nativeIphoneAppPromoDismissTimestampMsec_:J

    .line 26987
    return-object p0
.end method

.method public setWagonWhatsHotPromoTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27026
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 27027
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wagonWhatsHotPromoTimestampMsec_:J

    .line 27029
    return-object p0
.end method

.method public setWwMainFlowAckTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27005
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->bitField0_:I

    .line 27006
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->wwMainFlowAckTimestampMsec_:J

    .line 27008
    return-object p0
.end method
