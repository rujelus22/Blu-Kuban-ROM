.class public Lch/ethz/vppserver/schema/ippclient/Keyword;
.super Ljava/lang/Object;
.source "Keyword.java"


# instance fields
.field protected description:Ljava/lang/String;

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
    .line 63
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Keyword;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/Keyword;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 74
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Keyword;->description:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 53
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/Keyword;->value:Ljava/lang/String;

    .line 54
    return-void
.end method
