.class public Lch/ethz/vppserver/schema/ippclient/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# instance fields
.field protected description:Ljava/lang/String;

.field protected max:Ljava/lang/Short;

.field protected name:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Tag;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()Ljava/lang/Short;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Tag;->max:Ljava/lang/Short;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Tag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Tag;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 98
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Tag;->description:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setMax(Ljava/lang/Short;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 119
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Tag;->max:Ljava/lang/Short;

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 77
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Tag;->name:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 56
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Tag;->value:Ljava/lang/String;

    .line 57
    return-void
.end method
