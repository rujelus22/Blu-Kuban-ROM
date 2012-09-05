.class public Lch/ethz/vppserver/schema/ippclient/TagList;
.super Ljava/lang/Object;
.source "TagList.java"


# instance fields
.field protected tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/TagList;->tag:Ljava/util/List;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/ethz/vppserver/schema/ippclient/TagList;->tag:Ljava/util/List;

    .line 62
    :cond_b
    iget-object v0, p0, Lch/ethz/vppserver/schema/ippclient/TagList;->tag:Ljava/util/List;

    return-object v0
.end method
