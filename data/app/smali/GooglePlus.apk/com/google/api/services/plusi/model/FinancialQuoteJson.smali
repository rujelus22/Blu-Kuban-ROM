.class public final Lcom/google/api/services/plusi/model/FinancialQuoteJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "FinancialQuoteJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/json/EsJson",
        "<",
        "Lcom/google/api/services/plusi/model/FinancialQuote;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/api/services/plusi/model/FinancialQuoteJson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/api/services/plusi/model/FinancialQuoteJson;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FinancialQuoteJson;-><init>()V

    sput-object v0, Lcom/google/api/services/plusi/model/FinancialQuoteJson;->INSTANCE:Lcom/google/api/services/plusi/model/FinancialQuoteJson;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 21
    const-class v0, Lcom/google/api/services/plusi/model/FinancialQuote;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/api/services/plusi/model/FinancialQuoteJson;->JSON_STRING:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "quoteTimeMs"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "exchange"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "imageUrl"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "priceCurrency"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "priceChange"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "tickerSymbol"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "priceChangeNumber"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "dataSource"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "dataSourceDisclaimerUrl"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "priceChangePercent"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "price"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "quoteTime"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "description"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/google/api/services/plusi/model/FinancialQuoteJson;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/api/services/plusi/model/FinancialQuoteJson;->INSTANCE:Lcom/google/api/services/plusi/model/FinancialQuoteJson;

    return-object v0
.end method


# virtual methods
.method public getValues(Lcom/google/api/services/plusi/model/FinancialQuote;)[Ljava/lang/Object;
    .registers 5
    .parameter "object"

    .prologue
    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->quoteTimeMs:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->exchange:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->priceCurrency:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->priceChange:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->tickerSymbol:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->priceChangeNumber:Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->dataSource:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->dataSourceDisclaimerUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->priceChangePercent:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->price:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->quoteTime:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/google/api/services/plusi/model/FinancialQuote;->description:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Lcom/google/api/services/plusi/model/FinancialQuote;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/api/services/plusi/model/FinancialQuoteJson;->getValues(Lcom/google/api/services/plusi/model/FinancialQuote;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/api/services/plusi/model/FinancialQuote;
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/google/api/services/plusi/model/FinancialQuote;

    invoke-direct {v0}, Lcom/google/api/services/plusi/model/FinancialQuote;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/api/services/plusi/model/FinancialQuoteJson;->newInstance()Lcom/google/api/services/plusi/model/FinancialQuote;

    move-result-object v0

    return-object v0
.end method
