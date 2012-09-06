.class LBL;
.super Ljava/lang/Object;
.source "OffsetTreeNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TNodeType;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic a:LBK;


# direct methods
.method constructor <init>(LBK;)V
    .registers 3
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, LBL;->a:LBK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iget-object v0, p0, LBL;->a:LBK;

    iget v0, v0, LBK;->a:I

    iput v0, p0, LBL;->a:I

    return-void
.end method


# virtual methods
.method public a()LBJ;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TNodeType;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, LBL;->hasNext()Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 188
    iget-object v0, p0, LBL;->a:LBK;

    iget-object v0, v0, LBK;->a:LBJ;

    invoke-static {v0}, LBJ;->a(LBJ;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, LBL;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBJ;

    .line 189
    iget v1, p0, LBL;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LBL;->a:I

    .line 190
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 182
    iget v0, p0, LBL;->a:I

    iget-object v1, p0, LBL;->a:LBK;

    iget v1, v1, LBK;->b:I

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, LBL;->a()LBJ;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
