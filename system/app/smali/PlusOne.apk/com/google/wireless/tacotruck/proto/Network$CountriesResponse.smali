.class public final Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CountriesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountriesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49452
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    .line 49453
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->initFields()V

    .line 49454
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 48942
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 49002
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->memoizedIsInitialized:B

    .line 49025
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->memoizedSerializedSize:I

    .line 48943
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48937
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 48944
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 49002
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->memoizedIsInitialized:B

    .line 49025
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->memoizedSerializedSize:I

    .line 48944
    return-void
.end method

.method static synthetic access$69400(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48937
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$69402(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48937
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$69502(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Lcom/google/wireless/tacotruck/proto/Data$Country;)Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48937
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object p1
.end method

.method static synthetic access$69602(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48937
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object p1
.end method

.method static synthetic access$69702(Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48937
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    .registers 1

    .prologue
    .line 48948
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 48998
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    .line 48999
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Country;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    .line 49000
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49001
    return-void
.end method


# virtual methods
.method public getCountry(I)Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 3
    .parameter "index"

    .prologue
    .line 48970
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public getCountryCount()I
    .registers 2

    .prologue
    .line 48967
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

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
    .line 48960
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    return-object v0
.end method

.method public getCountryOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 48974
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;

    return-object v0
.end method

.method public getCountryOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$CountryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48964
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentCountry()Lcom/google/wireless/tacotruck/proto/Data$Country;
    .registers 2

    .prologue
    .line 48984
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48937
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;
    .registers 2

    .prologue
    .line 48952
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;

    return-object v0
.end method

.method public getKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2

    .prologue
    .line 48994
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 49027
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->memoizedSerializedSize:I

    .line 49028
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 49044
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 49030
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 49031
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 49032
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 49031
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 49035
    :cond_23
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 49036
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 49039
    :cond_30
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3e

    .line 49040
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 49043
    :cond_3e
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 49044
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public hasCurrentCountry()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 48981
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasKnownPhoneNumber()Z
    .registers 3

    .prologue
    .line 48991
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 49051
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 49013
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->getSerializedSize()I

    .line 49014
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 49015
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->country_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 49014
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 49017
    :cond_1c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_27

    .line 49018
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->currentCountry_:Lcom/google/wireless/tacotruck/proto/Data$Country;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 49020
    :cond_27
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_33

    .line 49021
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesResponse;->knownPhoneNumber_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 49023
    :cond_33
    return-void
.end method
