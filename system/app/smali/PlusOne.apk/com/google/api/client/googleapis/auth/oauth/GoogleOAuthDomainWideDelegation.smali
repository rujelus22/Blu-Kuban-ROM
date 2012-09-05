.class public final Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation;
.super Ljava/lang/Object;
.source "GoogleOAuthDomainWideDelegation.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation$Url;
    }
.end annotation


# instance fields
.field public parameters:Lcom/google/api/client/auth/oauth/OAuthParameters;

.field public requestorId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 85
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 86
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .registers 5
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    const-string v1, "xoauth_requestor_id"

    iget-object v2, p0, Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation;->requestorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/GenericUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation;->parameters:Lcom/google/api/client/auth/oauth/OAuthParameters;

    if-eqz v0, :cond_14

    .line 91
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth/GoogleOAuthDomainWideDelegation;->parameters:Lcom/google/api/client/auth/oauth/OAuthParameters;

    invoke-virtual {v0, p1}, Lcom/google/api/client/auth/oauth/OAuthParameters;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 93
    :cond_14
    return-void
.end method
