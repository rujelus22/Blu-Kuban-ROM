.class public Lcom/vlingo/client/vvs/VVServerRequest;
.super Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
.source "VVServerRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;
    }
.end annotation


# instance fields
.field protected failIfNoActions:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V
    .registers 6
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/vvs/VVServerRequest;->failIfNoActions:Z

    .line 31
    new-instance v0, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;

    invoke-direct {v0, p0, p2}, Lcom/vlingo/client/vvs/VVServerRequest$ResponseHandler;-><init>(Lcom/vlingo/client/vvs/VVServerRequest;Lcom/vlingo/client/core/http/HttpCallback;)V

    iput-object v0, p0, Lcom/vlingo/client/vvs/VVServerRequest;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    .line 32
    const/16 v0, 0x4e20

    invoke-virtual {p0, v0}, Lcom/vlingo/client/vvs/VVServerRequest;->setTimeout(I)V

    .line 33
    return-void
.end method

.method public static createVVRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/vvs/VVServerRequest;
    .registers 6
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "request"

    .prologue
    .line 36
    new-instance v0, Lcom/vlingo/client/vvs/VVServerRequest;

    invoke-static {p3}, Lcom/vlingo/client/core/util/StringUtils;->convertStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/vlingo/client/vvs/VVServerRequest;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public setFailIfNoActions(Z)V
    .registers 2
    .parameter "failIfNoActions"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vlingo/client/vvs/VVServerRequest;->failIfNoActions:Z

    .line 45
    return-void
.end method
