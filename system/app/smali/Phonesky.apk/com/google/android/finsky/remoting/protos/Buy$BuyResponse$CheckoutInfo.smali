.class public final Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckoutInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    }
.end annotation


# instance fields
.field private addInstrumentUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private checkoutOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;",
            ">;"
        }
    .end annotation
.end field

.field private deprecatedCheckoutUrl_:Ljava/lang/String;

.field private eligibleInstrumentFamily_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eligibleInstrument_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private footerHtml_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private footnoteHtml_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasAddInstrumentUrl:Z

.field private hasDeprecatedCheckoutUrl:Z

.field private hasItem:Z

.field private item_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

.field private subItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->item_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 970
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->subItem_:Ljava/util/List;

    .line 1003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption_:Ljava/util/List;

    .line 1037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl_:Ljava/lang/String;

    .line 1054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl_:Ljava/lang/String;

    .line 1070
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml_:Ljava/util/List;

    .line 1103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml_:Ljava/util/List;

    .line 1136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily_:Ljava/util/List;

    .line 1163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument_:Ljava/util/List;

    .line 1256
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->cachedSize:I

    .line 299
    return-void
.end method


# virtual methods
.method public addCheckoutOption(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 1020
    if-nez p1, :cond_8

    .line 1021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1023
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption_:Ljava/util/List;

    .line 1026
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    return-object p0
.end method

.method public addEligibleInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 1180
    if-nez p1, :cond_8

    .line 1181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1183
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument_:Ljava/util/List;

    .line 1186
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    return-object p0
.end method

.method public addEligibleInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 4
    .parameter "value"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily_:Ljava/util/List;

    .line 1153
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    return-object p0
.end method

.method public addFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 1087
    if-nez p1, :cond_8

    .line 1088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1090
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml_:Ljava/util/List;

    .line 1093
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    return-object p0
.end method

.method public addFootnoteHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 1120
    if-nez p1, :cond_8

    .line 1121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1123
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml_:Ljava/util/List;

    .line 1126
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    return-object p0
.end method

.method public addSubItem(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 987
    if-nez p1, :cond_8

    .line 988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 990
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->subItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->subItem_:Ljava/util/List;

    .line 993
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->subItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    return-object p0
.end method

.method public getAddInstrumentUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1259
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 1261
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getSerializedSize()I

    .line 1263
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->cachedSize:I

    return v0
.end method

.method public getCheckoutOptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption_:Ljava/util/List;

    return-object v0
.end method

.method public getDeprecatedCheckoutUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getEligibleInstrumentFamilyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily_:Ljava/util/List;

    return-object v0
.end method

.method public getEligibleInstrumentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument_:Ljava/util/List;

    return-object v0
.end method

.method public getFooterHtmlList()Ljava/util/List;
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
    .line 1073
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml_:Ljava/util/List;

    return-object v0
.end method

.method public getFootnoteHtmlList()Ljava/util/List;
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
    .line 1106
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml_:Ljava/util/List;

    return-object v0
.end method

.method public getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .registers 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->item_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1268
    const/4 v3, 0x0

    .line 1269
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasItem()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1270
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1273
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getSubItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 1274
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    const/4 v4, 0x4

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_19

    .line 1277
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getCheckoutOptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 1278
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_34

    .line 1281
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1282
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getDeprecatedCheckoutUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1285
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1286
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getAddInstrumentUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1290
    :cond_69
    const/4 v0, 0x0

    .line 1291
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1292
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_72

    .line 1295
    .end local v1           #element:Ljava/lang/String;
    :cond_84
    add-int/2addr v3, v0

    .line 1296
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1299
    const/4 v0, 0x0

    .line 1300
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentFamilyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1301
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_99

    .line 1304
    .end local v1           #element:Ljava/lang/Integer;
    :cond_af
    add-int/2addr v3, v0

    .line 1305
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentFamilyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1308
    const/4 v0, 0x0

    .line 1309
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1310
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_c4

    .line 1313
    .end local v1           #element:Ljava/lang/String;
    :cond_d6
    add-int/2addr v3, v0

    .line 1314
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1316
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ea
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 1317
    .local v1, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    const/16 v4, 0x2c

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_ea

    .line 1320
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_fe
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->cachedSize:I

    .line 1321
    return v3
.end method

.method public getSubItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->subItem_:Ljava/util/List;

    return-object v0
.end method

.method public hasAddInstrumentUrl()Z
    .registers 2

    .prologue
    .line 1056
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl:Z

    return v0
.end method

.method public hasDeprecatedCheckoutUrl()Z
    .registers 2

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl:Z

    return v0
.end method

.method public hasItem()Z
    .registers 2

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasItem:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1329
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1330
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_68

    .line 1334
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1335
    :sswitch_d
    return-object p0

    .line 1340
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;-><init>()V

    .line 1341
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1342
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->setItem(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1346
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;-><init>()V

    .line 1347
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1348
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addSubItem(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1352
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;-><init>()V

    .line 1353
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1354
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addCheckoutOption(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1358
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    :sswitch_33
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->setDeprecatedCheckoutUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1362
    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->setAddInstrumentUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1366
    :sswitch_43
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addFooterHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1370
    :sswitch_4b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addEligibleInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1374
    :sswitch_53
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addFootnoteHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1378
    :sswitch_5b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 1379
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1380
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addEligibleInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    goto :goto_0

    .line 1330
    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_d
        0x1a -> :sswitch_e
        0x22 -> :sswitch_1a
        0x2b -> :sswitch_26
        0x52 -> :sswitch_33
        0x5a -> :sswitch_3b
        0xa2 -> :sswitch_43
        0xf8 -> :sswitch_4b
        0x122 -> :sswitch_53
        0x162 -> :sswitch_5b
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
    .line 296
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAddInstrumentUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl:Z

    .line 1059
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl_:Ljava/lang/String;

    .line 1060
    return-object p0
.end method

.method public setDeprecatedCheckoutUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl:Z

    .line 1042
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl_:Ljava/lang/String;

    .line 1043
    return-object p0
.end method

.method public setItem(Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 955
    if-nez p1, :cond_8

    .line 956
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 958
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasItem:Z

    .line 959
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->item_:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 960
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
    .line 1227
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasItem()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1228
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1230
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getSubItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 1231
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_16

    .line 1233
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getCheckoutOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 1234
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2f

    .line 1236
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    :cond_40
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1237
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getDeprecatedCheckoutUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1239
    :cond_4f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1240
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getAddInstrumentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1242
    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFooterHtmlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1243
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_66

    .line 1245
    .end local v0           #element:Ljava/lang/String;
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentFamilyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1246
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_80

    .line 1248
    .end local v0           #element:Ljava/lang/Integer;
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getFootnoteHtmlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1249
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_9e

    .line 1251
    .end local v0           #element:Ljava/lang/String;
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 1252
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    const/16 v2, 0x2c

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_b8

    .line 1254
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_ca
    return-void
.end method
