.class public final Lcom/google/wireless/contacts/proto/Client$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$Response;",
        "Lcom/google/wireless/contacts/proto/Client$Response$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$ResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

.field private bitField0_:I

.field private createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

.field private mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

.field private mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

.field private mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

.field private mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

.field private personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

.field private profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

.field private requestId_:Ljava/lang/Object;

.field private responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2013
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2277
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 2301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 2337
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 2380
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 2423
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 2466
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 2509
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 2552
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 2595
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 2638
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 2014
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->maybeForceBuilderInitialization()V

    .line 2015
    return-void
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 1

    .prologue
    .line 2020
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2018
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$Response;
    .registers 6

    .prologue
    .line 2075
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$Response;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$Response;-><init>(Lcom/google/wireless/contacts/proto/Client$Response$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 2076
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$Response;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2077
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2078
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2079
    or-int/lit8 v2, v2, 0x1

    .line 2081
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$2302(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;)Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 2082
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2083
    or-int/lit8 v2, v2, 0x2

    .line 2085
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->requestId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->requestId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$2402(Lcom/google/wireless/contacts/proto/Client$Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 2087
    or-int/lit8 v2, v2, 0x4

    .line 2089
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$2502(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 2090
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 2091
    or-int/lit8 v2, v2, 0x8

    .line 2093
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$2602(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 2094
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 2095
    or-int/lit8 v2, v2, 0x10

    .line 2097
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$2702(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 2098
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 2099
    or-int/lit8 v2, v2, 0x20

    .line 2101
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$2802(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 2102
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 2103
    or-int/lit8 v2, v2, 0x40

    .line 2105
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$2902(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 2106
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 2107
    or-int/lit16 v2, v2, 0x80

    .line 2109
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$3002(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 2110
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 2111
    or-int/lit16 v2, v2, 0x100

    .line 2113
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$3102(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 2114
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 2115
    or-int/lit16 v2, v2, 0x200

    .line 2117
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$Response;->access$3202(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 2118
    #setter for: Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$Response;->access$3302(Lcom/google/wireless/contacts/proto/Client$Response;I)I

    .line 2119
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2024
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2025
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 2026
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 2028
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2029
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 2030
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2031
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 2032
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2033
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 2034
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2035
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 2036
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2037
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 2038
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2039
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 2040
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2041
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 2042
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2043
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 2044
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2045
    return-object p0
.end method

.method public clearActionResponse()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2416
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 2418
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2419
    return-object p0
.end method

.method public clearCreateCircleResponse()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2502
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 2504
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2505
    return-object p0
.end method

.method public clearMobileCircleMembersResponse()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2674
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 2676
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2677
    return-object p0
.end method

.method public clearMobileCirclesResponse()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2459
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 2461
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2462
    return-object p0
.end method

.method public clearMobileContactsResponse()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2545
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 2547
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2548
    return-object p0
.end method

.method public clearMobilePeopleSuggestionsResponse()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2373
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 2375
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2376
    return-object p0
.end method

.method public clearPersonResponse()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2588
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 2590
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2591
    return-object p0
.end method

.method public clearProfileResponse()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2631
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 2633
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2634
    return-object p0
.end method

.method public clearRequestId()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2325
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2326
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Response;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$Response;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 2328
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 2

    .prologue
    .line 2294
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2295
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 2297
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3

    .prologue
    .line 2049
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->create()Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$Response;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

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
    .line 2008
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActionResponse()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 2

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    return-object v0
.end method

.method public getCreateCircleResponse()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 2

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2008
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Response;
    .registers 2

    .prologue
    .line 2053
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Response;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Response;

    move-result-object v0

    return-object v0
.end method

.method public getMobileCircleMembersResponse()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 2

    .prologue
    .line 2643
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    return-object v0
.end method

.method public getMobileCirclesResponse()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 2

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    return-object v0
.end method

.method public getMobileContactsResponse()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 2

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    return-object v0
.end method

.method public getMobilePeopleSuggestionsResponse()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 2

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    return-object v0
.end method

.method public getPersonResponse()Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    .registers 2

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    return-object v0
.end method

.method public getProfileResponse()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 2

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 2307
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2308
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2309
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 2312
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

.method public getResponseCode()Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    .registers 2

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    return-object v0
.end method

.method public hasActionResponse()Z
    .registers 3

    .prologue
    .line 2382
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

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

.method public hasCreateCircleResponse()Z
    .registers 3

    .prologue
    .line 2468
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

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

.method public hasMobileCircleMembersResponse()Z
    .registers 3

    .prologue
    .line 2640
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMobileCirclesResponse()Z
    .registers 3

    .prologue
    .line 2425
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

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

.method public hasMobileContactsResponse()Z
    .registers 3

    .prologue
    .line 2511
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

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

.method public hasMobilePeopleSuggestionsResponse()Z
    .registers 3

    .prologue
    .line 2339
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

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

.method public hasPersonResponse()Z
    .registers 3

    .prologue
    .line 2554
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

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

.method public hasProfileResponse()Z
    .registers 3

    .prologue
    .line 2597
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRequestId()Z
    .registers 3

    .prologue
    .line 2303
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

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

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2279
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeActionResponse(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2404
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2406
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 2412
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2413
    return-object p0

    .line 2409
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    goto :goto_20
.end method

.method public mergeCreateCircleResponse(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2490
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2492
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 2498
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2499
    return-object p0

    .line 2495
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    goto :goto_20
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
    .line 2008
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

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
    .line 2008
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2173
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_114

    .line 2178
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2180
    :sswitch_d
    return-object p0

    .line 2185
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2186
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->valueOf(I)Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    move-result-object v3

    .line 2187
    .local v3, value:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    if-eqz v3, :cond_0

    .line 2188
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2189
    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    goto :goto_0

    .line 2194
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2195
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->requestId_:Ljava/lang/Object;

    goto :goto_0

    .line 2199
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v1

    .line 2200
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->hasMobilePeopleSuggestionsResponse()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2201
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getMobilePeopleSuggestionsResponse()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    .line 2203
    :cond_3f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2204
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setMobilePeopleSuggestionsResponse(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto :goto_0

    .line 2208
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;
    :sswitch_4a
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v1

    .line 2209
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->hasActionResponse()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2210
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getActionResponse()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    .line 2212
    :cond_5b
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2213
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setActionResponse(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto :goto_0

    .line 2217
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    :sswitch_66
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v1

    .line 2218
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->hasMobileCirclesResponse()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 2219
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getMobileCirclesResponse()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    .line 2221
    :cond_77
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2222
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setMobileCirclesResponse(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto/16 :goto_0

    .line 2226
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    :sswitch_83
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v1

    .line 2227
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->hasCreateCircleResponse()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 2228
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getCreateCircleResponse()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    .line 2230
    :cond_94
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2231
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setCreateCircleResponse(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto/16 :goto_0

    .line 2235
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    :sswitch_a0
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v1

    .line 2236
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->hasMobileContactsResponse()Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 2237
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getMobileContactsResponse()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    .line 2239
    :cond_b1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2240
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setMobileContactsResponse(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto/16 :goto_0

    .line 2244
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;
    :sswitch_bd
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v1

    .line 2245
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->hasPersonResponse()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 2246
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getPersonResponse()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    .line 2248
    :cond_ce
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2249
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setPersonResponse(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto/16 :goto_0

    .line 2253
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;
    :sswitch_da
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v1

    .line 2254
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->hasProfileResponse()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 2255
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getProfileResponse()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    .line 2257
    :cond_eb
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2258
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setProfileResponse(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto/16 :goto_0

    .line 2262
    .end local v1           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    :sswitch_f7
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v1

    .line 2263
    .local v1, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->hasMobileCircleMembersResponse()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 2264
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->getMobileCircleMembersResponse()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    .line 2266
    :cond_108
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2267
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setMobileCircleMembersResponse(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto/16 :goto_0

    .line 2173
    :sswitch_data_114
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_4a
        0x2a -> :sswitch_66
        0x32 -> :sswitch_83
        0x3a -> :sswitch_a0
        0x42 -> :sswitch_bd
        0x4a -> :sswitch_da
        0x52 -> :sswitch_f7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$Response;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2123
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$Response;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Response;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2154
    :cond_6
    :goto_6
    return-object p0

    .line 2124
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2125
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getResponseCode()Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setResponseCode(Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2127
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2128
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2130
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasMobilePeopleSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2131
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getMobilePeopleSuggestionsResponse()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeMobilePeopleSuggestionsResponse(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2133
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasActionResponse()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2134
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getActionResponse()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeActionResponse(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2136
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasMobileCirclesResponse()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2137
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getMobileCirclesResponse()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeMobileCirclesResponse(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2139
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasCreateCircleResponse()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2140
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getCreateCircleResponse()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeCreateCircleResponse(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2142
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasMobileContactsResponse()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2143
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getMobileContactsResponse()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeMobileContactsResponse(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2145
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasPersonResponse()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2146
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getPersonResponse()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergePersonResponse(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2148
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasProfileResponse()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2149
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getProfileResponse()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeProfileResponse(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    .line 2151
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->hasMobileCircleMembersResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2152
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$Response;->getMobileCircleMembersResponse()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mergeMobileCircleMembersResponse(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;

    goto/16 :goto_6
.end method

.method public mergeMobileCircleMembersResponse(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2662
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2664
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 2670
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2671
    return-object p0

    .line 2667
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    goto :goto_20
.end method

.method public mergeMobileCirclesResponse(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2447
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2449
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 2455
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2456
    return-object p0

    .line 2452
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    goto :goto_20
.end method

.method public mergeMobileContactsResponse(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2533
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2535
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 2541
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2542
    return-object p0

    .line 2538
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    goto :goto_20
.end method

.method public mergeMobilePeopleSuggestionsResponse(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2361
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 2363
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 2369
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2370
    return-object p0

    .line 2366
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    goto :goto_1f
.end method

.method public mergePersonResponse(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2576
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2578
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 2584
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2585
    return-object p0

    .line 2581
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    goto :goto_20
.end method

.method public mergeProfileResponse(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2619
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2621
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 2627
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2628
    return-object p0

    .line 2624
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    goto :goto_20
.end method

.method public setActionResponse(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2398
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 2400
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2401
    return-object p0
.end method

.method public setActionResponse(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2388
    if-nez p1, :cond_8

    .line 2389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2391
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 2393
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2394
    return-object p0
.end method

.method public setCreateCircleResponse(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2484
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 2486
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2487
    return-object p0
.end method

.method public setCreateCircleResponse(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2474
    if-nez p1, :cond_8

    .line 2475
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2477
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 2479
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2480
    return-object p0
.end method

.method public setMobileCircleMembersResponse(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2656
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 2658
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2659
    return-object p0
.end method

.method public setMobileCircleMembersResponse(Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2646
    if-nez p1, :cond_8

    .line 2647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2649
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 2651
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2652
    return-object p0
.end method

.method public setMobileCirclesResponse(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2441
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 2443
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2444
    return-object p0
.end method

.method public setMobileCirclesResponse(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2431
    if-nez p1, :cond_8

    .line 2432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2434
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 2436
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2437
    return-object p0
.end method

.method public setMobileContactsResponse(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2527
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 2529
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2530
    return-object p0
.end method

.method public setMobileContactsResponse(Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2517
    if-nez p1, :cond_8

    .line 2518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2520
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 2522
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2523
    return-object p0
.end method

.method public setMobilePeopleSuggestionsResponse(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2355
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 2357
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2358
    return-object p0
.end method

.method public setMobilePeopleSuggestionsResponse(Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2345
    if-nez p1, :cond_8

    .line 2346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2348
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 2350
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2351
    return-object p0
.end method

.method public setPersonResponse(Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2570
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$PersonResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 2572
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2573
    return-object p0
.end method

.method public setPersonResponse(Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2560
    if-nez p1, :cond_8

    .line 2561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2563
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 2565
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2566
    return-object p0
.end method

.method public setProfileResponse(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 2613
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 2615
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2616
    return-object p0
.end method

.method public setProfileResponse(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2603
    if-nez p1, :cond_8

    .line 2604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2606
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 2608
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2609
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2316
    if-nez p1, :cond_8

    .line 2317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2319
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2320
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->requestId_:Ljava/lang/Object;

    .line 2322
    return-object p0
.end method

.method public setResponseCode(Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;)Lcom/google/wireless/contacts/proto/Client$Response$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2285
    if-nez p1, :cond_8

    .line 2286
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2288
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->bitField0_:I

    .line 2289
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 2291
    return-object p0
.end method
