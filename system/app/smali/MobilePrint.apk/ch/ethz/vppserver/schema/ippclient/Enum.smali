.class public Lch/ethz/vppserver/schema/ippclient/Enum;
.super Ljava/lang/Object;
.source "Enum.java"


# instance fields
.field protected description:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Enum;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Enum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Enum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 96
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Enum;->description:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 54
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Enum;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 75
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Enum;->value:Ljava/lang/String;

    .line 76
    return-void
.end method
