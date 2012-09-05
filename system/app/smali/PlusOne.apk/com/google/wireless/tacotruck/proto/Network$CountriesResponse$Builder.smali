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
    .line 49133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 49274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 49363
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 49406
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49134
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 49135
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 1

    .prologue
    .line 49140
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCountryIsMutable()V
    .registers 3

    .prologue
    .line 49277
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 49278
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 49279
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49281
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 49138
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
    .line 49344
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Country;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 49345
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 49347
    return-object p0
.end method

.method public addCountry(ILcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 49337
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 49338
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49340
    return-object p0
.end method

.method public addCountry(ILcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 49320
    if-nez p2, :cond_8

    .line 49321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49323
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 49324
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49326
    return-object p0
.end method

.method public addCountry(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49330
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 49331
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49333
    return-object p0
.end method

.method public addCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49310
    if-nez p1, :cond_8

    .line 49311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49313
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 49314
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49316
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    .registers 6

    .prologue
    .line 49181
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 49182
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49183
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 49184
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 49185
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 49186
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49188
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$69402(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Ljava/util/List;)Ljava/util/List;

    .line 49189
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 49190
    or-int/lit8 v2, v2, 0x1

    .line 49192
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$69502(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 49193
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 49194
    or-int/lit8 v2, v2, 0x2

    .line 49196
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$69602(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49197
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$69702(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;I)I

    .line 49198
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 49128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 49128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 2

    .prologue
    .line 49144
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 49145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 49146
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49147
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 49148
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49149
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49150
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49151
    return-object p0
.end method

.method public clearCountry()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 2

    .prologue
    .line 49350
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 49351
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49353
    return-object p0
.end method

.method public clearCurrentCountry()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 2

    .prologue
    .line 49399
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 49401
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49402
    return-object p0
.end method

.method public clearKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 2

    .prologue
    .line 49442
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49444
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49445
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 49128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 49128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3

    .prologue
    .line 49155
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
    .line 49128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCountry(I)Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 3
    .parameter "index"

    .prologue
    .line 49290
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public getCountryCount()I
    .registers 2

    .prologue
    .line 49287
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
    .line 49284
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 49368
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 49128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    .registers 2

    .prologue
    .line 49159
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2

    .prologue
    .line 49411
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object v0
.end method

.method public hasCurrentCountry()Z
    .registers 3

    .prologue
    .line 49365
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
    .line 49408
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

.method public mergeCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49387
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49389
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 49395
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49396
    return-object p0

    .line 49392
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
    .line 49128
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

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
    .line 49128
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
    .line 49231
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 49232
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 49237
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49239
    :sswitch_d
    return-object p0

    .line 49244
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    .line 49245
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49246
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->addCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    goto :goto_0

    .line 49250
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    move-result-object v0

    .line 49251
    .restart local v0       #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->hasCurrentCountry()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 49252
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->getCurrentCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;

    .line 49254
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49255
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->setCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    goto :goto_0

    .line 49259
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;
    :sswitch_39
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    .line 49260
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->hasKnownPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 49261
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->getKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    .line 49263
    :cond_4a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49264
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->setKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    goto :goto_0

    .line 49232
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
    .line 49202
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 49219
    :cond_6
    :goto_6
    return-object p0

    .line 49203
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$69400(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 49204
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 49205
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$69400(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    .line 49206
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49213
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->hasCurrentCountry()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 49214
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getCurrentCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    .line 49216
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->hasKnownPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49217
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->mergeKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;

    goto :goto_6

    .line 49208
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 49209
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->access$69400(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49430
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49432
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49438
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49439
    return-object p0

    .line 49435
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    goto :goto_1f
.end method

.method public setCountry(ILcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 49304
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 49305
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49307
    return-object p0
.end method

.method public setCountry(ILcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 49294
    if-nez p2, :cond_8

    .line 49295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49297
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->ensureCountryIsMutable()V

    .line 49298
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->country_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49300
    return-object p0
.end method

.method public setCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49381
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Country$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 49383
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49384
    return-object p0
.end method

.method public setCurrentCountry(Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49371
    if-nez p1, :cond_8

    .line 49372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49374
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 49376
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49377
    return-object p0
.end method

.method public setKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49424
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49426
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49427
    return-object p0
.end method

.method public setKnownPhoneNumber(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49414
    if-nez p1, :cond_8

    .line 49415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49417
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;->bitField0_:I

    .line 49420
    return-object p0
.end method
