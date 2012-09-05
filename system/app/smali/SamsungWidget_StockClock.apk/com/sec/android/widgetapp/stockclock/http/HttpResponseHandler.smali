.class public Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;
.super Lcom/sec/android/widgetapp/stockclock/http/HttpClient;
.source "HttpResponseHandler.java"


# instance fields
.field private mResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/http/HttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lorg/apache/http/HttpResponse;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->mResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public onReceive(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 12
    return-void
.end method

.method public setResponse(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->mResponse:Lorg/apache/http/HttpResponse;

    .line 22
    return-void
.end method
