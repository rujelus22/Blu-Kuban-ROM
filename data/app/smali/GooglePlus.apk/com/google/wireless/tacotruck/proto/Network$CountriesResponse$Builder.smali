.class public final Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CountriesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$CountriesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private country_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Country;",
            ">;"
        }
    .end annotation
.end field

.field private currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

.field private knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 50424
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 50513
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 50556
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50284
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 50285
    return-void
.end method

.method static synthetic access$70700()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 1

    .prologue
    .line 50278
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 1

    .prologue
    .line 50290
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCountryIsMutable()V
    .registers 3

    .prologue
    .line 50427
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 50428
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 50429
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50431
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 50288
    return-void
.end method


# virtual methods
.method public addAllCountry(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Country;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 50494
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Country;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 50495
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 50497
    return-object p0
.end method

.method public addCountry(ILcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 50487
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 50488
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50490
    return-object p0
.end method

.method public addCountry(ILcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 50470
    if-nez p2, :cond_8

    .line 50471
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50473
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 50474
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50476
    return-object p0
.end method

.method public addCountry(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50480
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 50481
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50483
    return-object p0
.end method

.method public addCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50460
    if-nez p1, :cond_8

    .line 50461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50463
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 50464
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50466
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    .registers 3

    .prologue
    .line 50313
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    .line 50314
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 50315
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 50317
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    .registers 6

    .prologue
    .line 50331
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 50332
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50333
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 50334
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 50335
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 50336
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50338
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$70902(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Ljava/util/List;)Ljava/util/List;

    .line 50339
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 50340
    or-int/lit8 v2, v2, 0x1

    .line 50342
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$71002(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 50343
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 50344
    or-int/lit8 v2, v2, 0x2

    .line 50346
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$71102(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50347
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$71202(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;I)I

    .line 50348
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 2

    .prologue
    .line 50294
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 50295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 50296
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50297
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 50298
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50299
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50300
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50301
    return-object p0
.end method

.method public clearCountry()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 2

    .prologue
    .line 50500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 50501
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50503
    return-object p0
.end method

.method public clearCurrentCountry()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 2

    .prologue
    .line 50549
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 50551
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50552
    return-object p0
.end method

.method public clearKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 2

    .prologue
    .line 50592
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50595
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3

    .prologue
    .line 50305
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

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
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCountry(I)Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 3
    .parameter "index"

    .prologue
    .line 50440
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public getCountryCount()I
    .registers 2

    .prologue
    .line 50437
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50434
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 50518
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50278
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    .registers 2

    .prologue
    .line 50309
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2

    .prologue
    .line 50561
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object v0
.end method

.method public hasCurrentCountry()Z
    .registers 3

    .prologue
    .line 50515
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

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

.method public hasKnownPhoneNumber()Z
    .registers 3

    .prologue
    .line 50558
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

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
    .line 50373
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50537
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50539
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 50545
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50546
    return-object p0

    .line 50542
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    goto :goto_1f
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
    .line 50278
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 50278
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

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
    .line 50278
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50381
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 50382
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 50387
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50389
    :sswitch_d
    return-object p0

    .line 50394
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    .line 50395
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 50396
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->addCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    goto :goto_0

    .line 50400
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    .line 50401
    .restart local v0       #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->hasCurrentCountry()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->getCurrentCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    .line 50404
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 50405
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->setCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    goto :goto_0

    .line 50409
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    :sswitch_39
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    .line 50410
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->hasKnownPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 50411
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->getKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    .line 50413
    :cond_4a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 50414
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->setKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    goto :goto_0

    .line 50382
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_39
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 50352
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 50369
    :cond_6
    :goto_6
    return-object p0

    .line 50353
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$70900(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 50354
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 50355
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$70900(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 50356
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50363
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->hasCurrentCountry()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 50364
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getCurrentCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    .line 50366
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->hasKnownPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50367
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    goto :goto_6

    .line 50358
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 50359
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$70900(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50582
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50588
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50589
    return-object p0

    .line 50585
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    goto :goto_1f
.end method

.method public setCountry(ILcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 50454
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 50455
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50457
    return-object p0
.end method

.method public setCountry(ILcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 50444
    if-nez p2, :cond_8

    .line 50445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50447
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 50448
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50450
    return-object p0
.end method

.method public setCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50531
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 50533
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50534
    return-object p0
.end method

.method public setCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50521
    if-nez p1, :cond_8

    .line 50522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50524
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 50526
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50527
    return-object p0
.end method

.method public setKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50574
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50576
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50577
    return-object p0
.end method

.method public setKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50564
    if-nez p1, :cond_8

    .line 50565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50567
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 50570
    return-object p0
.end method
