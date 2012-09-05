.class public Lcom/sec/print/mobileprint/df/DiscoveryResult;
.super Ljava/lang/Object;
.source "DiscoveryResult.java"


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private host:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "host"
    .parameter "version"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->host:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->version:I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "host"
    .parameter "exception"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->exception:Ljava/lang/Throwable;

    .line 18
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->host:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->version:I

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "exception"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->exception:Ljava/lang/Throwable;

    .line 27
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2
    .parameter "host"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->host:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryResult;->version:I

    .line 43
    return-void
.end method
