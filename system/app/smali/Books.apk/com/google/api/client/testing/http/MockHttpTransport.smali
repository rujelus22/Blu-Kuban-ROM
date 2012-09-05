.class public Lcom/google/api/client/testing/http/MockHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "MockHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SUPPORTED_OPTIONAL_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public supportedOptionalMethods:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/client/http/HttpMethod;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/testing/http/MockHttpTransport;->DEFAULT_SUPPORTED_OPTIONAL_METHODS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 58
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    .line 63
    return-void
.end method


# virtual methods
.method public buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/api/client/testing/http/MockHttpTransport;->supportsHead()Z

    move-result v0

    if-nez v0, :cond_b

    .line 108
    invoke-super {p0, p1}, Lcom/google/api/client/http/HttpTransport;->buildHeadRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v0

    .line 110
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/api/client/testing/http/MockHttpTransport;->supportsPatch()Z

    move-result v0

    if-nez v0, :cond_b

    .line 116
    invoke-super {p0, p1}, Lcom/google/api/client/http/HttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v0

    .line 118
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public supportsHead()Z
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->HEAD:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public supportsPatch()Z
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport;->supportedOptionalMethods:Ljava/util/EnumSet;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PATCH:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
