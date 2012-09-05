.class public Lch/ethz/vppserver/schema/ippclient/AttributeValue;
.super Ljava/lang/Object;
.source "AttributeValue.java"


# instance fields
.field protected description:Ljava/lang/String;

.field protected setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;

.field protected setOfKeyword:Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;

.field protected tag:Ljava/lang/String;

.field protected tagName:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getSetOfEnum()Lch/ethz/vppserver/schema/ippclient/SetOfEnum;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;

    return-object v0
.end method

.method public getSetOfKeyword()Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setOfKeyword:Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 169
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->description:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setSetOfEnum(Lch/ethz/vppserver/schema/ippclient/SetOfEnum;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 85
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;

    .line 86
    return-void
.end method

.method public setSetOfKeyword(Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 64
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setOfKeyword:Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;

    .line 65
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 106
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->tag:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 127
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->tagName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 148
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->value:Ljava/lang/String;

    .line 149
    return-void
.end method
