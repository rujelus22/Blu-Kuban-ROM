.class public final Lcom/google/wireless/contacts/proto/Client$Response;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$Response$Builder;,
        Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$Response;

.field private static final serialVersionUID:J


# instance fields
.field private actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

.field private bitField0_:I

.field private createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

.field private mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

.field private mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

.field private mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

.field private personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

.field private profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

.field private requestId_:Ljava/lang/Object;

.field private responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2684
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$Response;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$Response;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$Response;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$Response;

    .line 2685
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$Response;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$Response;->initFields()V

    .line 2686
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$Response$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1635
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1827
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->memoizedIsInitialized:B

    .line 1877
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->memoizedSerializedSize:I

    .line 1636
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$Response$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$Response;-><init>(Lcom/google/wireless/contacts/proto/Client$Response$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1637
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1827
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->memoizedIsInitialized:B

    .line 1877
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->memoizedSerializedSize:I

    .line 1637
    return-void
.end method

.method static synthetic access$2302(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;)Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/contacts/proto/Client$Response;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->requestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;)Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$PersonResponse;)Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/wireless/contacts/proto/Client$Response;Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/wireless/contacts/proto/Client$Response;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1630
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$Response;
    .registers 1

    .prologue
    .line 1641
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$Response;

    return-object v0
.end method

.method private getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1724
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->requestId_:Ljava/lang/Object;

    .line 1725
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1726
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1728
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->requestId_:Ljava/lang/Object;

    .line 1731
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

.method private initFields()V
    .registers 2

    .prologue
    .line 1816
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    .line 1817
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->requestId_:Ljava/lang/Object;

    .line 1818
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    .line 1819
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 1820
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    .line 1821
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    .line 1822
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 1823
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    .line 1824
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    .line 1825
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    .line 1826
    return-void
.end method


# virtual methods
.method public getActionResponse()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 2

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    return-object v0
.end method

.method public getCreateCircleResponse()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 2

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1630
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$Response;
    .registers 2

    .prologue
    .line 1645
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$Response;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$Response;

    return-object v0
.end method

.method public getMobileCircleMembersResponse()Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    .registers 2

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    return-object v0
.end method

.method public getMobileCirclesResponse()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 2

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    return-object v0
.end method

.method public getMobileContactsResponse()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 2

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    return-object v0
.end method

.method public getMobilePeopleSuggestionsResponse()Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;
    .registers 2

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    return-object v0
.end method

.method public getPersonResponse()Lcom/google/wireless/contacts/proto/Client$PersonResponse;
    .registers 2

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    return-object v0
.end method

.method public getProfileResponse()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 2

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1710
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->requestId_:Ljava/lang/Object;

    .line 1711
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1712
    check-cast v1, Ljava/lang/String;

    .line 1720
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1714
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1716
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1717
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1718
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->requestId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1720
    goto :goto_8
.end method

.method public getResponseCode()Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;
    .registers 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1879
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->memoizedSerializedSize:I

    .line 1880
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 1924
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 1882
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 1883
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 1884
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1887
    :cond_1e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2d

    .line 1888
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$Response;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1891
    :cond_2d
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 1892
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1895
    :cond_3b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 1896
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1899
    :cond_48
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 1900
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1903
    :cond_58
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 1904
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1907
    :cond_68
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_78

    .line 1908
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1911
    :cond_78
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_87

    .line 1912
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1915
    :cond_87
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_98

    .line 1916
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1919
    :cond_98
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a9

    .line 1920
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1923
    :cond_a9
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->memoizedSerializedSize:I

    move v1, v0

    .line 1924
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public hasActionResponse()Z
    .registers 3

    .prologue
    .line 1749
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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
    .line 1769
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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
    .line 1809
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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
    .line 1759
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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
    .line 1779
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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
    .line 1739
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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
    .line 1789
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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
    .line 1799
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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
    .line 1707
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

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

    .line 1697
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1931
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1844
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$Response;->getSerializedSize()I

    .line 1845
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 1846
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->responseCode_:Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$Response$ResponseCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1848
    :cond_17
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_24

    .line 1849
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$Response;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1851
    :cond_24
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 1852
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobilePeopleSuggestionsResponse_:Lcom/google/wireless/contacts/proto/Client$MobilePeopleSuggestionsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1854
    :cond_30
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 1855
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->actionResponse_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1857
    :cond_3b
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 1858
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCirclesResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1860
    :cond_49
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 1861
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->createCircleResponse_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1863
    :cond_57
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_65

    .line 1864
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileContactsResponse_:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1866
    :cond_65
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_72

    .line 1867
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->personResponse_:Lcom/google/wireless/contacts/proto/Client$PersonResponse;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1869
    :cond_72
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_81

    .line 1870
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->profileResponse_:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1872
    :cond_81
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$Response;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_90

    .line 1873
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$Response;->mobileCircleMembersResponse_:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1875
    :cond_90
    return-void
.end method
