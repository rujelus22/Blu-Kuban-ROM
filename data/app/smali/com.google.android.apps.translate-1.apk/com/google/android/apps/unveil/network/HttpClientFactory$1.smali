.class final Lcom/google/android/apps/unveil/network/HttpClientFactory$1;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/HttpClientFactory;->makeHttpParams()Lorg/apache/http/params/HttpParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 3
    .parameter "route"

    .prologue
    .line 113
    sget v0, Lcom/google/android/apps/unveil/network/HttpClientFactory;->MAX_CONNECTIONS_PER_ROUTE:I

    return v0
.end method
