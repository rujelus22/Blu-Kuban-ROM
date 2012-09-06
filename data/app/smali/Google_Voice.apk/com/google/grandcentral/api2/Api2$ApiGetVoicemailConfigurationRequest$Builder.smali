.class public final Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private carrierMccMnc_:Ljava/lang/Object;

.field private clientLoginToken_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30027
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30246
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30028
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 30029
    return-void
.end method

.method static synthetic access$35800()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 1

    .prologue
    .line 30022
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 1

    .prologue
    .line 30034
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30032
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 3

    .prologue
    .line 30057
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    .line 30058
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30059
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30061
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 6

    .prologue
    .line 30065
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 30066
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30067
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30068
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30069
    or-int/lit8 v2, v2, 0x1

    .line 30071
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->access$36002(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30072
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 30073
    or-int/lit8 v2, v2, 0x2

    .line 30075
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->access$36102(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30076
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 30077
    or-int/lit8 v2, v2, 0x4

    .line 30079
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->access$36202(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30080
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->access$36302(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;I)I

    .line 30081
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 2

    .prologue
    .line 30038
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30040
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30042
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30044
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30045
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCarrierMccMnc()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 2

    .prologue
    .line 30229
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30230
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getCarrierMccMnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30232
    return-object p0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 2

    .prologue
    .line 30176
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30177
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30179
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 2

    .prologue
    .line 30282
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30283
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30285
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 3

    .prologue
    .line 30049
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

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
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierMccMnc()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30198
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30199
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30200
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30201
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30204
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

.method public getCarrierMccMncBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30209
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30210
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30211
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30213
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30216
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

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30145
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30146
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30147
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30148
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30151
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30156
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30157
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30158
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30160
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30163
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 2

    .prologue
    .line 30053
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30022
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30251
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30252
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 30253
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 30254
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30257
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

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30262
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30263
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30264
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30266
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30269
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

.method public hasCarrierMccMnc()Z
    .registers 3

    .prologue
    .line 30195
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

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

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30142
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 30248
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 30105
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 30117
    :cond_7
    :goto_7
    return v0

    .line 30109
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->hasCarrierMccMnc()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30113
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30117
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 30085
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30101
    :cond_6
    :goto_6
    return-object p0

    .line 30086
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 30087
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30088
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->access$36000(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30091
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->hasCarrierMccMnc()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 30092
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30093
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->access$36100(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30096
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30097
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30098
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->access$36200(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30124
    const/4 v2, 0x0

    .line 30126
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 30131
    if-eqz v2, :cond_10

    .line 30132
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    .line 30135
    :cond_10
    return-object p0

    .line 30127
    :catch_11
    move-exception v1

    .line 30128
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-object v2, v0

    .line 30129
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 30131
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 30132
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

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
    .line 30022
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30022
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

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
    .line 30022
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCarrierMccMnc(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30220
    if-nez p1, :cond_8

    .line 30221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30223
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30224
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30226
    return-object p0
.end method

.method public setCarrierMccMncBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30236
    if-nez p1, :cond_8

    .line 30237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30239
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30240
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->carrierMccMnc_:Ljava/lang/Object;

    .line 30242
    return-object p0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30167
    if-nez p1, :cond_8

    .line 30168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30170
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30171
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30173
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30183
    if-nez p1, :cond_8

    .line 30184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30186
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30187
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 30189
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30273
    if-nez p1, :cond_8

    .line 30274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30276
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30277
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30279
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30289
    if-nez p1, :cond_8

    .line 30290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30292
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->bitField0_:I

    .line 30293
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 30295
    return-object p0
.end method
