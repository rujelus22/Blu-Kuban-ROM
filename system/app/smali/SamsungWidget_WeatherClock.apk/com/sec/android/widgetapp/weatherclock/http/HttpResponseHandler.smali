.class public Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.super Ljava/lang/Object;
.source "HttpResponseHandler.java"


# instance fields
.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()Lorg/apache/http/HttpResponse;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 11
    return-void
.end method

.method public onReceive(IILjava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"
    .parameter "stamp"

    .prologue
    .line 15
    return-void
.end method

.method public setResponse(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->response:Lorg/apache/http/HttpResponse;

    .line 25
    return-void
.end method
