.class public Lcom/sec/android/widgetapp/stockclock/data/StockListItem;
.super Ljava/lang/Object;
.source "StockListItem.java"


# instance fields
.field private exchange:Ljava/lang/String;

.field private mainDisplay:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "symbol"
    .parameter "exchange"
    .parameter "mainDisplay"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->symbol:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->exchange:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->mainDisplay:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getExchange()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getMainDisplay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->mainDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public setExchange(Ljava/lang/String;)V
    .registers 2
    .parameter "exchange"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->exchange:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setMainDisplay(Ljava/lang/String;)V
    .registers 2
    .parameter "mainDisplay"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->mainDisplay:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .registers 2
    .parameter "symbol"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/data/StockListItem;->symbol:Ljava/lang/String;

    .line 42
    return-void
.end method
