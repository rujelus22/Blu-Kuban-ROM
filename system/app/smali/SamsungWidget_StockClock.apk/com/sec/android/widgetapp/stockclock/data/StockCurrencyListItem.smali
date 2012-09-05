.class public Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;
.super Ljava/lang/Object;
.source "StockCurrencyListItem.java"


# instance fields
.field private mFirstItem:Ljava/lang/String;

.field private mSecondItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->mFirstItem:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->mSecondItem:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstItem(Ljava/lang/String;)V
    .registers 2
    .parameter "firstItem"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->mFirstItem:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setSecondItem(Ljava/lang/String;)V
    .registers 2
    .parameter "secondItem"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/data/StockCurrencyListItem;->mSecondItem:Ljava/lang/String;

    .line 26
    return-void
.end method
