.class public Lcom/vlingo/client/vvs/VVServerManager;
.super Ljava/lang/Object;
.source "VVServerManager.java"


# static fields
.field public static final VVSERVER_REQUEST_TIMEOUT:I = 0x4e20


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHelloRequest(Lcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/vvs/VVServerRequest;
    .registers 5
    .parameter "callback"

    .prologue
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Hello PhoneHash=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getPhoneNumberHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, body:Ljava/lang/String;
    const-string v2, "VVHello"

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getHelloURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/http/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3, v0}, Lcom/vlingo/client/vvs/VVServerRequest;->createVVRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/vvs/VVServerRequest;

    move-result-object v1

    .line 27
    .local v1, req:Lcom/vlingo/client/vvs/VVServerRequest;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vlingo/client/vvs/VVServerRequest;->setFailIfNoActions(Z)V

    .line 28
    return-object v1
.end method

.method public static hello(Lcom/vlingo/client/core/http/HttpCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/vlingo/client/vvs/VVServerManager;->getHelloRequest(Lcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/vvs/VVServerRequest;

    move-result-object v0

    .line 38
    .local v0, request:Lcom/vlingo/client/vvs/VVServerRequest;
    invoke-virtual {v0}, Lcom/vlingo/client/vvs/VVServerRequest;->schedule()V

    .line 39
    return-void
.end method
