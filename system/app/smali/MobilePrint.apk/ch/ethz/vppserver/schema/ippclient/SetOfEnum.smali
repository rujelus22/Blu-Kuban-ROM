.class public Lch/ethz/vppserver/schema/ippclient/SetOfEnum;
.super Ljava/lang/Object;
.source "SetOfEnum.java"


# instance fields
.field protected _enum:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Enum;",
            ">;"
        }
    .end annotation
.end field

.field protected description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnum()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Enum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;->_enum:Ljava/util/List;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;->_enum:Ljava/util/List;

    .line 64
    :cond_b
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;->_enum:Ljava/util/List;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 84
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;->description:Ljava/lang/String;

    .line 85
    return-void
.end method
