.class Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;
.super Ljava/lang/Object;
.source "HttpDataManager.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->requestCurrency([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

.field final synthetic val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

.field final synthetic val$save:Z


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;ZLcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;->this$0:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    iput-boolean p2, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;->val$save:Z

    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter "methodName"
    .parameter "resultCode"
    .parameter "param"
    .parameter "result"

    .prologue
    .line 178
    if-nez p2, :cond_1e

    move-object v0, p4

    .line 180
    check-cast v0, Ljava/util/ArrayList;

    .line 182
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    iget-boolean v2, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;->val$save:Z

    if-eqz v2, :cond_18

    .line 184
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;->this$0:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    #getter for: Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->mDbHelper:Lcom/sec/android/widgetapp/stockclock/db/DBHelper;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->access$000(Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;)Lcom/sec/android/widgetapp/stockclock/db/DBHelper;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->saveStocCurrencykMainInfo(Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Ljava/util/ArrayList;)I

    move-result v1

    .line 185
    .local v1, saveResult:I
    const/16 v2, -0x5a

    if-ne v1, v2, :cond_18

    .line 187
    const/4 p2, 0x3

    .line 191
    .end local v1           #saveResult:I
    :cond_18
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 197
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    :goto_1d
    return-void

    .line 195
    :cond_1e
    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager$2;->val$owner:Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1d
.end method
