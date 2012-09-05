.class public final Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuyResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;,
        Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    }
.end annotation


# instance fields
.field private baseCheckoutUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

.field private checkoutServiceId_:Ljava/lang/String;

.field private checkoutTokenRequired_:Z

.field private continueViaUrl_:Ljava/lang/String;

.field private deprecatedLibraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

.field private deprecatedTos_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;",
            ">;"
        }
    .end annotation
.end field

.field private hasBaseCheckoutUrl:Z

.field private hasCheckoutInfo:Z

.field private hasCheckoutServiceId:Z

.field private hasCheckoutTokenRequired:Z

.field private hasContinueViaUrl:Z

.field private hasDeprecatedLibraryUpdate:Z

.field private hasIabPermissionError:Z

.field private hasPurchaseCookie:Z

.field private hasPurchaseResponse:Z

.field private hasPurchaseStatusResponse:Z

.field private hasPurchaseStatusUrl:Z

.field private iabPermissionError_:I

.field private purchaseCookie_:Ljava/lang/String;

.field private purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

.field private purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

.field private purchaseStatusUrl_:Ljava/lang/String;

.field private tosCheckboxHtml_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1544
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    .line 1564
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 1584
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 1604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    .line 1621
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    .line 1638
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    .line 1655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    .line 1672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    .line 1688
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->deprecatedTos_:Ljava/util/List;

    .line 1721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    .line 1755
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->iabPermissionError_:I

    .line 1772
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->deprecatedLibraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 1792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseCookie_:Ljava/lang/String;

    .line 1883
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    .line 282
    return-void
.end method


# virtual methods
.method public addDeprecatedTos(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1705
    if-nez p1, :cond_8

    .line 1706
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1708
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->deprecatedTos_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->deprecatedTos_:Ljava/util/List;

    .line 1711
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->deprecatedTos_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1712
    return-object p0
.end method

.method public addTosCheckboxHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1738
    if-nez p1, :cond_8

    .line 1739
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1741
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    .line 1744
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1745
    return-object p0
.end method

.method public getBaseCheckoutUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1885
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 1887
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getSerializedSize()I

    .line 1889
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    return v0
.end method

.method public getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    return-object v0
.end method

.method public getCheckoutServiceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckoutTokenRequired()Z
    .registers 2

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getContinueViaUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeprecatedLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .registers 2

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->deprecatedLibraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object v0
.end method

.method public getDeprecatedTosList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->deprecatedTos_:Ljava/util/List;

    return-object v0
.end method

.method public getIabPermissionError()I
    .registers 2

    .prologue
    .line 1757
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->iabPermissionError_:I

    return v0
.end method

.method public getPurchaseCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .registers 2

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    return-object v0
.end method

.method public getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    return-object v0
.end method

.method public getPurchaseStatusUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1893
    const/4 v3, 0x0

    .line 1894
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1895
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1898
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1899
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1902
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1903
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getContinueViaUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1906
    :cond_32
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1907
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1910
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1911
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1914
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1915
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1918
    :cond_65
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1919
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getBaseCheckoutUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1922
    :cond_76
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getDeprecatedTosList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;

    .line 1923
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    const/16 v4, 0x18

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_7e

    .line 1927
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    :cond_92
    const/4 v0, 0x0

    .line 1928
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1929
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_9b

    .line 1932
    .end local v1           #element:Ljava/lang/String;
    :cond_ad
    add-int/2addr v3, v0

    .line 1933
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1935
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError()Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 1936
    const/16 v4, 0x26

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getIabPermissionError()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1939
    :cond_ca
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 1940
    const/16 v4, 0x27

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1943
    :cond_db
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasDeprecatedLibraryUpdate()Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 1944
    const/16 v4, 0x28

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getDeprecatedLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1947
    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseCookie()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 1948
    const/16 v4, 0x2e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1951
    :cond_fd
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    .line 1952
    return v3
.end method

.method public getTosCheckboxHtmlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    return-object v0
.end method

.method public hasBaseCheckoutUrl()Z
    .registers 2

    .prologue
    .line 1657
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    return v0
.end method

.method public hasCheckoutInfo()Z
    .registers 2

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo:Z

    return v0
.end method

.method public hasCheckoutServiceId()Z
    .registers 2

    .prologue
    .line 1640
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    return v0
.end method

.method public hasCheckoutTokenRequired()Z
    .registers 2

    .prologue
    .line 1623
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public hasContinueViaUrl()Z
    .registers 2

    .prologue
    .line 1606
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    return v0
.end method

.method public hasDeprecatedLibraryUpdate()Z
    .registers 2

    .prologue
    .line 1773
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasDeprecatedLibraryUpdate:Z

    return v0
.end method

.method public hasIabPermissionError()Z
    .registers 2

    .prologue
    .line 1756
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError:Z

    return v0
.end method

.method public hasPurchaseCookie()Z
    .registers 2

    .prologue
    .line 1794
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    return v0
.end method

.method public hasPurchaseResponse()Z
    .registers 2

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse:Z

    return v0
.end method

.method public hasPurchaseStatusResponse()Z
    .registers 2

    .prologue
    .line 1565
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse:Z

    return v0
.end method

.method public hasPurchaseStatusUrl()Z
    .registers 2

    .prologue
    .line 1674
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1959
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1960
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_90

    .line 1964
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1965
    :sswitch_d
    return-object p0

    .line 1970
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;-><init>()V

    .line 1971
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1972
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1976
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;-><init>()V

    .line 1977
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1978
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutInfo(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1982
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setContinueViaUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1986
    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseStatusUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1990
    :sswitch_37
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutServiceId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1994
    :sswitch_3f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1998
    :sswitch_47
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setBaseCheckoutUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 2002
    :sswitch_4f
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;-><init>()V

    .line 2003
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    const/16 v2, 0x18

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 2004
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->addDeprecatedTos(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 2008
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    :sswitch_5d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->addTosCheckboxHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 2012
    :sswitch_65
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setIabPermissionError(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 2016
    :sswitch_6d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;-><init>()V

    .line 2017
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2018
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 2022
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    :sswitch_79
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;-><init>()V

    .line 2023
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2024
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setDeprecatedLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto/16 :goto_0

    .line 2028
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :sswitch_86
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto/16 :goto_0

    .line 1960
    nop

    :sswitch_data_90
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x13 -> :sswitch_1a
        0x42 -> :sswitch_27
        0x4a -> :sswitch_2f
        0x62 -> :sswitch_37
        0x68 -> :sswitch_3f
        0x72 -> :sswitch_47
        0xc3 -> :sswitch_4f
        0x12a -> :sswitch_5d
        0x130 -> :sswitch_65
        0x13a -> :sswitch_6d
        0x142 -> :sswitch_79
        0x172 -> :sswitch_86
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBaseCheckoutUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    .line 1660
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    .line 1661
    return-object p0
.end method

.method public setCheckoutInfo(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1588
    if-nez p1, :cond_8

    .line 1589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1591
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo:Z

    .line 1592
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 1593
    return-object p0
.end method

.method public setCheckoutServiceId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    .line 1643
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    .line 1644
    return-object p0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    .line 1626
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    .line 1627
    return-object p0
.end method

.method public setContinueViaUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    .line 1609
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    .line 1610
    return-object p0
.end method

.method public setDeprecatedLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1776
    if-nez p1, :cond_8

    .line 1777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1779
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasDeprecatedLibraryUpdate:Z

    .line 1780
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->deprecatedLibraryUpdate_:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 1781
    return-object p0
.end method

.method public setIabPermissionError(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError:Z

    .line 1760
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->iabPermissionError_:I

    .line 1761
    return-object p0
.end method

.method public setPurchaseCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    .line 1797
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseCookie_:Ljava/lang/String;

    .line 1798
    return-object p0
.end method

.method public setPurchaseResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1548
    if-nez p1, :cond_8

    .line 1549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1551
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse:Z

    .line 1552
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    .line 1553
    return-object p0
.end method

.method public setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1568
    if-nez p1, :cond_8

    .line 1569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1571
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse:Z

    .line 1572
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 1573
    return-object p0
.end method

.method public setPurchaseStatusUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    .line 1677
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    .line 1678
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1843
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1845
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1846
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1848
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1849
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getContinueViaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1851
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1852
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1854
    :cond_3a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1855
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1857
    :cond_49
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1858
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1860
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1861
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getBaseCheckoutUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1863
    :cond_67
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getDeprecatedTosList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;

    .line 1864
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_6f

    .line 1866
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    :cond_81
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1867
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x25

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_89

    .line 1869
    .end local v0           #element:Ljava/lang/String;
    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 1870
    const/16 v2, 0x26

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getIabPermissionError()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1872
    :cond_aa
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 1873
    const/16 v2, 0x27

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1875
    :cond_b9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasDeprecatedLibraryUpdate()Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 1876
    const/16 v2, 0x28

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getDeprecatedLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1878
    :cond_c8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseCookie()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 1879
    const/16 v2, 0x2e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1881
    :cond_d7
    return-void
.end method
