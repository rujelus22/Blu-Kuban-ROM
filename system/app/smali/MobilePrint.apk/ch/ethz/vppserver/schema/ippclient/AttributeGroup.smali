.class public Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
.super Ljava/lang/Object;
.source "AttributeGroup.java"


# instance fields
.field protected attribute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected description:Ljava/lang/String;

.field protected tag:Ljava/lang/String;

.field protected tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->attribute:Ljava/util/List;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->attribute:Ljava/util/List;

    .line 68
    :cond_b
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->attribute:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 131
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->description:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 89
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->tag:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 110
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->tagName:Ljava/lang/String;

    .line 111
    return-void
.end method
