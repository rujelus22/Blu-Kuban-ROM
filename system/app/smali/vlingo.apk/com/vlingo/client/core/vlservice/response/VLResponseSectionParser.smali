.class public abstract Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
.super Ljava/lang/Object;
.source "VLResponseSectionParser.java"

# interfaces
.implements Lcom/vlingo/client/core/xml/XmlHandler;


# instance fields
.field protected responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V
    .registers 3
    .parameter "responseParser"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;->responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    .line 19
    iput-object p1, p0, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;->responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    .line 20
    return-void
.end method


# virtual methods
.method public beginDocument()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public characters([C)V
    .registers 2
    .parameter "cData"

    .prologue
    .line 28
    return-void
.end method

.method public endDocument()V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public abstract handlesElement(I)Z
.end method

.method public onParseBegin([C)V
    .registers 2
    .parameter "xml"

    .prologue
    .line 23
    return-void
.end method
