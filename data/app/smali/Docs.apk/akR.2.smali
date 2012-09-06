.class LakR;
.super LahF;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahF",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LakQ;


# direct methods
.method constructor <init>(LakQ;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, LakR;->a:LakQ;

    invoke-direct {p0, p2}, LahF;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, LakR;->a:LakQ;

    iget-object v0, v0, LakQ;->a:LakK;

    invoke-static {v0}, LakK;->a(LakK;)[LakN;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, LakN;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
