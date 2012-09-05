.class public Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;
.super Ljava/lang/Object;
.source "SetOfKeyword.java"


# instance fields
.field protected description:Ljava/lang/String;

.field protected keyword:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Keyword;",
            ">;"
        }
    .end annotation
.end field


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
    .line 74
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Keyword;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;->keyword:Ljava/util/List;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;->keyword:Ljava/util/List;

    .line 64
    :cond_b
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;->keyword:Ljava/util/List;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 85
    iput-object p1, p0, Lch/ethz/vppserver/schema/ippclient/SetOfKeyword;->description:Ljava/lang/String;

    .line 86
    return-void
.end method
