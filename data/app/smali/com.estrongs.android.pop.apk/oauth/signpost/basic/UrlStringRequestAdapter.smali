.class public Loauth/signpost/basic/UrlStringRequestAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Loauth/signpost/http/HttpRequest;


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loauth/signpost/basic/UrlStringRequestAdapter;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessagePayload()Ljava/io/InputStream;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "GET"

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Loauth/signpost/basic/UrlStringRequestAdapter;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Loauth/signpost/basic/UrlStringRequestAdapter;->url:Ljava/lang/String;

    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Loauth/signpost/basic/UrlStringRequestAdapter;->url:Ljava/lang/String;

    return-object v0
.end method
