.class public final Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private carrierDiversionCode_:Ljava/lang/Object;

.field private diversionNumber_:Ljava/lang/Object;

.field private diversionType_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private voicemailNumber_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30749
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30876
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30919
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30972
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 31025
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 30750
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 30751
    return-void
.end method

.method static synthetic access$36500()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 1

    .prologue
    .line 30744
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 1

    .prologue
    .line 30756
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30754
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 3

    .prologue
    .line 30783
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    .line 30784
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30785
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30787
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 6

    .prologue
    .line 30791
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 30792
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30793
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30794
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30795
    or-int/lit8 v2, v2, 0x1

    .line 30797
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$36702(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30798
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 30799
    or-int/lit8 v2, v2, 0x2

    .line 30801
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$36802(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30802
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 30803
    or-int/lit8 v2, v2, 0x4

    .line 30805
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$36902(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30806
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 30807
    or-int/lit8 v2, v2, 0x8

    .line 30809
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$37002(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30810
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 30811
    or-int/lit8 v2, v2, 0x10

    .line 30813
    :cond_42
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionType_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionType_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$37102(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;I)I

    .line 30814
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$37202(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;I)I

    .line 30815
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2

    .prologue
    .line 30760
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30761
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30762
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30764
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30766
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30767
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 30768
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30769
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionType_:I

    .line 30770
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30771
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCarrierDiversionCode()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2

    .prologue
    .line 31008
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 31009
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getCarrierDiversionCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 31011
    return-object p0
.end method

.method public clearDiversionNumber()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2

    .prologue
    .line 31061
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 31062
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDiversionNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 31064
    return-object p0
.end method

.method public clearDiversionType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2

    .prologue
    .line 31092
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 31093
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionType_:I

    .line 31095
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2

    .prologue
    .line 30912
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30914
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30915
    return-object p0
.end method

.method public clearVoicemailNumber()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2

    .prologue
    .line 30955
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30956
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30958
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3

    .prologue
    .line 30775
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

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
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierDiversionCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30977
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30978
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30979
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30980
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30983
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getCarrierDiversionCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30988
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30989
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30990
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30992
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30995
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 2

    .prologue
    .line 30779
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30744
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDiversionNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 31030
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 31031
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 31032
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 31033
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 31036
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getDiversionNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 31041
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 31042
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 31043
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31045
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 31048
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

.method public getDiversionType()I
    .registers 2

    .prologue
    .line 31083
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionType_:I

    return v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 30881
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getVoicemailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30924
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30925
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30926
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30927
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30930
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getVoicemailNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30935
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30936
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30937
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30939
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30942
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

.method public hasCarrierDiversionCode()Z
    .registers 3

    .prologue
    .line 30974
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

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

.method public hasDiversionNumber()Z
    .registers 3

    .prologue
    .line 31027
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

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

.method public hasDiversionType()Z
    .registers 3

    .prologue
    .line 31080
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30878
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVoicemailNumber()Z
    .registers 3

    .prologue
    .line 30921
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 30845
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 30853
    :cond_7
    :goto_7
    return v0

    .line 30849
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30853
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 30819
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30841
    :cond_6
    :goto_6
    return-object p0

    .line 30820
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 30821
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    .line 30823
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->hasVoicemailNumber()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 30824
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30825
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$36800(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30828
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->hasCarrierDiversionCode()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 30829
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30830
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$36900(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30833
    :cond_38
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->hasDiversionNumber()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 30834
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30835
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->access$37000(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 30838
    :cond_4a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->hasDiversionType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30839
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDiversionType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->setDiversionType(I)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30860
    const/4 v2, 0x0

    .line 30862
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 30867
    if-eqz v2, :cond_10

    .line 30868
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    .line 30871
    :cond_10
    return-object p0

    .line 30863
    :catch_11
    move-exception v1

    .line 30864
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-object v2, v0

    .line 30865
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 30867
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 30868
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    :cond_21
    throw v3
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
    .line 30744
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30744
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

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
    .line 30744
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 30900
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 30902
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30908
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30909
    return-object p0

    .line 30905
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setCarrierDiversionCode(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30999
    if-nez p1, :cond_8

    .line 31000
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31002
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 31003
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 31005
    return-object p0
.end method

.method public setCarrierDiversionCodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31015
    if-nez p1, :cond_8

    .line 31016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31018
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 31019
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->carrierDiversionCode_:Ljava/lang/Object;

    .line 31021
    return-object p0
.end method

.method public setDiversionNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31052
    if-nez p1, :cond_8

    .line 31053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31055
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 31056
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 31058
    return-object p0
.end method

.method public setDiversionNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31068
    if-nez p1, :cond_8

    .line 31069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31071
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 31072
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionNumber_:Ljava/lang/Object;

    .line 31074
    return-object p0
.end method

.method public setDiversionType(I)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 31086
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 31087
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->diversionType_:I

    .line 31089
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 30894
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30896
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30897
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30884
    if-nez p1, :cond_8

    .line 30885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30887
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30889
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30890
    return-object p0
.end method

.method public setVoicemailNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30946
    if-nez p1, :cond_8

    .line 30947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30949
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30950
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30952
    return-object p0
.end method

.method public setVoicemailNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30962
    if-nez p1, :cond_8

    .line 30963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30965
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->bitField0_:I

    .line 30966
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->voicemailNumber_:Ljava/lang/Object;

    .line 30968
    return-object p0
.end method
