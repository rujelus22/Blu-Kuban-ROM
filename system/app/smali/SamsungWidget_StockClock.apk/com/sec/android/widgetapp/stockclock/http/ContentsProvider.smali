.class public interface abstract Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;
.super Ljava/lang/Object;
.source "ContentsProvider.java"


# virtual methods
.method public abstract initService(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;)V
.end method

.method public abstract requestCurrency([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end method

.method public abstract requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end method

.method public abstract requestIndices([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end method

.method public abstract requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end method

.method public abstract requestSearch(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
.end method

.method public abstract setCancelState(Z)V
.end method
