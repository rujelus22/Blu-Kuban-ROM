.class LakJ;
.super LahF;
.source "RegularImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahF",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LakI;


# direct methods
.method constructor <init>(LakI;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, LakJ;->a:LakI;

    invoke-direct {p0, p2, p3}, LahF;-><init>(II)V

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
    .line 130
    iget-object v0, p0, LakJ;->a:LakI;

    invoke-static {v0}, LakI;->a(LakI;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LakJ;->a:LakI;

    invoke-static {v1}, LakI;->a(LakI;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
