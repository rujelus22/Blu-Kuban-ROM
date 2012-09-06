.class LaiI;
.super LahF;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahF",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LaiH;


# direct methods
.method constructor <init>(LaiH;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, LaiI;->a:LaiH;

    invoke-direct {p0, p2}, LahF;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, LaiI;->a:LaiH;

    iget-object v1, p0, LaiI;->a:LaiH;

    iget-object v1, v1, LaiH;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, LaiH;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
