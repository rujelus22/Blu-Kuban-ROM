.class public Lch/ethz/vppserver/ippclient/IppResult;
.super Ljava/lang/Object;
.source "IppResult.java"


# instance fields
.field _attributeGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;"
        }
    .end annotation
.end field

.field _httpStatusResponse:Ljava/lang/String;

.field _ippStatusResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lch/ethz/vppserver/ippclient/IppResult;->_httpStatusResponse:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lch/ethz/vppserver/ippclient/IppResult;->_ippStatusResponse:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lch/ethz/vppserver/ippclient/IppResult;->_attributeGroupList:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getAttributeGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResult;->_attributeGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getHttpStatusResponse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResult;->_httpStatusResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getIppStatusResponse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResult;->_ippStatusResponse:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeGroupList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, group:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeGroup;>;"
    iput-object p1, p0, Lch/ethz/vppserver/ippclient/IppResult;->_attributeGroupList:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setHttpStatusResponse(Ljava/lang/String;)V
    .registers 2
    .parameter "statusResponse"

    .prologue
    .line 42
    iput-object p1, p0, Lch/ethz/vppserver/ippclient/IppResult;->_httpStatusResponse:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setIppStatusResponse(Ljava/lang/String;)V
    .registers 2
    .parameter "statusResponse"

    .prologue
    .line 58
    iput-object p1, p0, Lch/ethz/vppserver/ippclient/IppResult;->_ippStatusResponse:Ljava/lang/String;

    .line 59
    return-void
.end method
