.class public Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
.super Ljava/lang/Object;
.source "HttpDataManager.java"


# static fields
.field public static onoff:Z


# instance fields
.field private mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

.field private mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;)V
    .registers 7
    .parameter "context"
    .parameter "dbHelper"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    .line 24
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    .line 25
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    .line 30
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;->initService(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    return-object v0
.end method

.method public static saveStocCurrencykMainInfo(Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Ljava/util/ArrayList;)I
    .registers 9
    .parameter "dbHelper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/widgetapp/stockclock/db/DBHelper;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    const/4 v2, 0x0

    .line 78
    .local v2, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_58

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 81
    .local v1, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_55

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_55

    if-eqz p0, :cond_55

    .line 83
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_27

    .line 84
    const-string v4, ""

    invoke-virtual {v1, v4}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->setExchange(Ljava/lang/String;)V

    .line 85
    :cond_27
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getExchange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addDetailStockCurrencyRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 86
    if-eqz v2, :cond_3b

    move v3, v2

    .line 109
    .end local v1           #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .end local v2           #result:I
    .local v3, result:I
    :goto_3a
    return v3

    .line 90
    .end local v3           #result:I
    .restart local v1       #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .restart local v2       #result:I
    :cond_3b
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasCurrencyMainInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 92
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateStockCurrencyMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I

    move-result v2

    .line 93
    if-eqz v2, :cond_55

    move v3, v2

    .line 95
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_3a

    .line 101
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_4d
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockCurrencyMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I

    move-result v2

    .line 102
    if-eqz v2, :cond_55

    move v3, v2

    .line 104
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_3a

    .line 78
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    :cond_58
    move v3, v2

    .line 109
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_3a
.end method

.method public static saveStocIndicesInfo(Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)I
    .registers 5
    .parameter "dbHelper"
    .parameter "item"

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, result:I
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasIndices(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateIndicesRow(Ljava/util/ArrayList;)I

    move-result v1

    .line 217
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;>;"
    :goto_17
    return v1

    .line 214
    :cond_18
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addIndicesRow(Lcom/sec/android/widgetapp/stockclock/data/StockMajorIndicesItem;)I

    move-result v1

    goto :goto_17
.end method

.method public static saveStockMainInfo(Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Ljava/util/ArrayList;)I
    .registers 9
    .parameter "dbHelper"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/widgetapp/stockclock/db/DBHelper;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/data/StockItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    const/4 v2, 0x0

    .line 46
    .local v2, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3f

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/stockclock/data/StockItem;

    .line 49
    .local v1, item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getArrName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getArrExchange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addDetailStockRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 50
    if-eqz v2, :cond_22

    move v3, v2

    .line 72
    .end local v1           #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .end local v2           #result:I
    .local v3, result:I
    :goto_21
    return v3

    .line 54
    .end local v3           #result:I
    .restart local v1       #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    .restart local v2       #result:I
    :cond_22
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/stockclock/data/StockItem;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->hasMainInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 56
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->updateStockMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I

    move-result v2

    .line 57
    if-eqz v2, :cond_3c

    move v3, v2

    .line 59
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_21

    .line 65
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_34
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/stockclock/db/DBHelper;->addStockMainInfo(Lcom/sec/android/widgetapp/stockclock/data/StockItem;)I

    move-result v2

    .line 66
    if-eqz v2, :cond_3c

    move v3, v2

    .line 68
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_21

    .line 46
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #item:Lcom/sec/android/widgetapp/stockclock/data/StockItem;
    :cond_3f
    move v3, v2

    .line 72
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_21
.end method


# virtual methods
.method public getHttpDataManager()Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    return-object v0
.end method

.method public requestCurrency([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V
    .registers 7
    .parameter "symbol"
    .parameter "defaultsymbol"
    .parameter "owner"
    .parameter "save"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    if-eqz v0, :cond_e

    .line 173
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;

    invoke-direct {v1, p0, p4, p3}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;-><init>(Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;ZLcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;->requestCurrency([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 200
    :cond_e
    return-void
.end method

.method public requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 5
    .parameter "symbol"
    .parameter "range"
    .parameter "owner"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    if-eqz v0, :cond_9

    .line 165
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;->requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 167
    :cond_9
    return-void
.end method

.method public requestIndices([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 5
    .parameter "symbol"
    .parameter "owner"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    if-eqz v0, :cond_b

    .line 157
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    const-string v1, ""

    invoke-interface {v0, p1, v1, p2}, Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;->requestIndices([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 159
    :cond_b
    return-void
.end method

.method public requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V
    .registers 6
    .parameter "symbolArray"
    .parameter "owner"
    .parameter "autoSave"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    if-eqz v0, :cond_11

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->onoff:Z

    .line 117
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$1;-><init>(Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;ZLcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    invoke-interface {v0, p1, v1}, Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;->requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 143
    :cond_11
    return-void
.end method

.method public requestSearch(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 4
    .parameter "stockName"
    .parameter "owner"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;->requestSearch(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V

    .line 151
    :cond_9
    return-void
.end method

.method public setCancelState(Z)V
    .registers 3
    .parameter "canceled"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mContentsProvider:Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;

    invoke-interface {v0, p1}, Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;->setCancelState(Z)V

    .line 36
    return-void
.end method
