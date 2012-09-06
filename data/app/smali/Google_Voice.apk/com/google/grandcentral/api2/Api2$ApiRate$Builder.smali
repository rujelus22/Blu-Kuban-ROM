.class public final Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiRateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiRate;",
        "Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiRateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private callRate_:I

.field private countryName_:Ljava/lang/Object;

.field private displayableCallRate_:Ljava/lang/Object;

.field private displayableSmsRate_:Ljava/lang/Object;

.field private normalizedNumber_:Ljava/lang/Object;

.field private originalNumber_:Ljava/lang/Object;

.field private responseCode_:I

.field private smsRate_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33144
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33539
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33145
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->maybeForceBuilderInitialization()V

    .line 33146
    return-void
.end method

.method static synthetic access$39300()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 1

    .prologue
    .line 33139
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 1

    .prologue
    .line 33151
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 33149
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 3

    .prologue
    .line 33184
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    .line 33185
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiRate;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 33186
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 33188
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 6

    .prologue
    .line 33192
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiRate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 33193
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiRate;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33194
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33195
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33196
    or-int/lit8 v2, v2, 0x1

    .line 33198
    :cond_10
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->responseCode_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->responseCode_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39502(Lcom/google/grandcentral/api2/Api2$ApiRate;I)I

    .line 33199
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 33200
    or-int/lit8 v2, v2, 0x2

    .line 33202
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39602(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33203
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 33204
    or-int/lit8 v2, v2, 0x4

    .line 33206
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39702(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33207
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 33208
    or-int/lit8 v2, v2, 0x8

    .line 33210
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39802(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33211
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 33212
    or-int/lit8 v2, v2, 0x10

    .line 33214
    :cond_42
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39902(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33215
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 33216
    or-int/lit8 v2, v2, 0x20

    .line 33218
    :cond_4f
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$40002(Lcom/google/grandcentral/api2/Api2$ApiRate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33219
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 33220
    or-int/lit8 v2, v2, 0x40

    .line 33222
    :cond_5c
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->callRate_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->callRate_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$40102(Lcom/google/grandcentral/api2/Api2$ApiRate;I)I

    .line 33223
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 33224
    or-int/lit16 v2, v2, 0x80

    .line 33226
    :cond_69
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->smsRate_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->smsRate_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$40202(Lcom/google/grandcentral/api2/Api2$ApiRate;I)I

    .line 33227
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$40302(Lcom/google/grandcentral/api2/Api2$ApiRate;I)I

    .line 33228
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33155
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 33156
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->responseCode_:I

    .line 33157
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33159
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33160
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33161
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33163
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33165
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33167
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33168
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->callRate_:I

    .line 33169
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33170
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->smsRate_:I

    .line 33171
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33172
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCallRate()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33606
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33607
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->callRate_:I

    .line 33609
    return-object p0
.end method

.method public clearCountryName()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33469
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33470
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getCountryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33472
    return-object p0
.end method

.method public clearDisplayableCallRate()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33363
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33364
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDisplayableCallRate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33366
    return-object p0
.end method

.method public clearDisplayableSmsRate()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33416
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33417
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDisplayableSmsRate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33419
    return-object p0
.end method

.method public clearNormalizedNumber()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33522
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33523
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33525
    return-object p0
.end method

.method public clearOriginalNumber()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33575
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33576
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getOriginalNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33578
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33320
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33321
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->responseCode_:I

    .line 33323
    return-object p0
.end method

.method public clearSmsRate()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 2

    .prologue
    .line 33627
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33628
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->smsRate_:I

    .line 33630
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3

    .prologue
    .line 33176
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

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
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallRate()I
    .registers 2

    .prologue
    .line 33597
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->callRate_:I

    return v0
.end method

.method public getCountryName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33438
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33439
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33440
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33441
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33444
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

.method public getCountryNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33449
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33450
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33451
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33453
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33456
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 2

    .prologue
    .line 33180
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableCallRate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33332
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33333
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33334
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33335
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33338
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

.method public getDisplayableCallRateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33343
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33344
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33345
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33347
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33350
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

.method public getDisplayableSmsRate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33385
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33386
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33387
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33388
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33391
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

.method public getDisplayableSmsRateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33396
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33397
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33398
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33400
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33403
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

.method public getNormalizedNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33491
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33492
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33493
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33494
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33497
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

.method public getNormalizedNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33502
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33503
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33504
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33506
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33509
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

.method public getOriginalNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33544
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33545
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 33546
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 33547
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33550
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

.method public getOriginalNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33555
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33556
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33557
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33559
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33562
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

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 33311
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->responseCode_:I

    return v0
.end method

.method public getSmsRate()I
    .registers 2

    .prologue
    .line 33618
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->smsRate_:I

    return v0
.end method

.method public hasCallRate()Z
    .registers 3

    .prologue
    .line 33594
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

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

.method public hasCountryName()Z
    .registers 3

    .prologue
    .line 33435
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

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

.method public hasDisplayableCallRate()Z
    .registers 3

    .prologue
    .line 33329
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

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

.method public hasDisplayableSmsRate()Z
    .registers 3

    .prologue
    .line 33382
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

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

.method public hasNormalizedNumber()Z
    .registers 3

    .prologue
    .line 33488
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

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

.method public hasOriginalNumber()Z
    .registers 3

    .prologue
    .line 33541
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

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

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33308
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSmsRate()Z
    .registers 3

    .prologue
    .line 33615
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 33271
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->hasResponseCode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 33283
    :cond_7
    :goto_7
    return v0

    .line 33275
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->hasNormalizedNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 33279
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->hasOriginalNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 33283
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 33232
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33267
    :cond_6
    :goto_6
    return-object p0

    .line 33233
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 33234
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getResponseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->setResponseCode(I)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    .line 33236
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasDisplayableCallRate()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 33237
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33238
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableCallRate_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39600(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33241
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasDisplayableSmsRate()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 33242
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33243
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->displayableSmsRate_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39700(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33246
    :cond_38
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasCountryName()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 33247
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33248
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->countryName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39800(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33251
    :cond_4a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasNormalizedNumber()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 33252
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33253
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->normalizedNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$39900(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33256
    :cond_5c
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasOriginalNumber()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 33257
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33258
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRate;->originalNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->access$40000(Lcom/google/grandcentral/api2/Api2$ApiRate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33261
    :cond_6e
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasCallRate()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 33262
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getCallRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->setCallRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    .line 33264
    :cond_7b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->hasSmsRate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33265
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate;->getSmsRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->setSmsRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33290
    const/4 v2, 0x0

    .line 33292
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiRate;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 33297
    if-eqz v2, :cond_10

    .line 33298
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    .line 33301
    :cond_10
    return-object p0

    .line 33293
    :catch_11
    move-exception v1

    .line 33294
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-object v2, v0

    .line 33295
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 33297
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 33298
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

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
    .line 33139
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 33139
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiRate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

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
    .line 33139
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCallRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33600
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33601
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->callRate_:I

    .line 33603
    return-object p0
.end method

.method public setCountryName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33460
    if-nez p1, :cond_8

    .line 33461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33463
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33464
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33466
    return-object p0
.end method

.method public setCountryNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33476
    if-nez p1, :cond_8

    .line 33477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33479
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33480
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->countryName_:Ljava/lang/Object;

    .line 33482
    return-object p0
.end method

.method public setDisplayableCallRate(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33354
    if-nez p1, :cond_8

    .line 33355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33357
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33358
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33360
    return-object p0
.end method

.method public setDisplayableCallRateBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33370
    if-nez p1, :cond_8

    .line 33371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33373
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33374
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableCallRate_:Ljava/lang/Object;

    .line 33376
    return-object p0
.end method

.method public setDisplayableSmsRate(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33407
    if-nez p1, :cond_8

    .line 33408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33410
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33411
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33413
    return-object p0
.end method

.method public setDisplayableSmsRateBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33423
    if-nez p1, :cond_8

    .line 33424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33426
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33427
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->displayableSmsRate_:Ljava/lang/Object;

    .line 33429
    return-object p0
.end method

.method public setNormalizedNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33513
    if-nez p1, :cond_8

    .line 33514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33516
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33517
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33519
    return-object p0
.end method

.method public setNormalizedNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33529
    if-nez p1, :cond_8

    .line 33530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33532
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33533
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->normalizedNumber_:Ljava/lang/Object;

    .line 33535
    return-object p0
.end method

.method public setOriginalNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33566
    if-nez p1, :cond_8

    .line 33567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33569
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33570
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33572
    return-object p0
.end method

.method public setOriginalNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33582
    if-nez p1, :cond_8

    .line 33583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33585
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33586
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->originalNumber_:Ljava/lang/Object;

    .line 33588
    return-object p0
.end method

.method public setResponseCode(I)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33314
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33315
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->responseCode_:I

    .line 33317
    return-object p0
.end method

.method public setSmsRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 33621
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->bitField0_:I

    .line 33622
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->smsRate_:I

    .line 33624
    return-object p0
.end method
