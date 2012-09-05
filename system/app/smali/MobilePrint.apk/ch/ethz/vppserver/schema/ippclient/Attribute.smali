.class public Lch/ethz/vppserver/schema/ippclient/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field protected attributeValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field protected description:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Attribute;->attributeValue:Ljava/util/List;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Attribute;->attributeValue:Ljava/util/List;

    .line 66
    :cond_b
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Attribute;->attributeValue:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Attribute;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeValue(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, attributeValue:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeValue;>;"
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Attribute;->attributeValue:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 111
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Attribute;->description:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 90
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Attribute;->name:Ljava/lang/String;

    .line 91
    return-void
.end method
