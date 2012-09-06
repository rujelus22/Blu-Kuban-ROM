.class public Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;
.super Lcom/googlex/masf/protocol/PlainRequest;
.source "MASFPlainRequest.java"


# instance fields
.field private mux:Lcom/googlex/masf/MobileServiceMux;


# direct methods
.method public constructor <init>(Lcom/googlex/masf/MobileServiceMux;Ljava/lang/String;)V
    .registers 3
    .parameter "mux"
    .parameter "method"

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/googlex/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;->mux:Lcom/googlex/masf/MobileServiceMux;

    .line 26
    return-void
.end method


# virtual methods
.method public submit()V
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;->mux:Lcom/googlex/masf/MobileServiceMux;

    invoke-virtual {v0, p0}, Lcom/googlex/masf/MobileServiceMux;->submitRequest(Lcom/googlex/masf/protocol/Request;)V

    .line 30
    return-void
.end method
