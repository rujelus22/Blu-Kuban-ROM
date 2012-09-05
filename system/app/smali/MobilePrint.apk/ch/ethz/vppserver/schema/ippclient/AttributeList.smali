.class public Lch/ethz/vppserver/schema/ippclient/AttributeList;
.super Ljava/lang/Object;
.source "AttributeList.java"


# instance fields
.field public attributeGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeGroup()Ljava/util/List;
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
    .line 62
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeList;->attributeGroup:Ljava/util/List;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeList;->attributeGroup:Ljava/util/List;

    .line 65
    :cond_b
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeList;->attributeGroup:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeList;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 85
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeList;->description:Ljava/lang/String;

    .line 86
    return-void
.end method
