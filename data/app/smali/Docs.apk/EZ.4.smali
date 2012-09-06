.class LEZ;
.super Ljava/lang/Object;
.source "EvaluableOffsetList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LEY;

.field private a:LFc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LEY;)V
    .registers 3
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, LEZ;->a:LEY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iget-object v0, p0, LEZ;->a:LEY;

    invoke-static {v0}, LEY;->a(LEY;)LFc;

    move-result-object v0

    invoke-static {v0}, LFc;->a(LFc;)LFc;

    move-result-object v0

    iput-object v0, p0, LEZ;->a:LFc;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, LEZ;->a:LFc;

    iget-object v1, p0, LEZ;->a:LEY;

    invoke-static {v1}, LEY;->a(LEY;)LFc;

    move-result-object v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, LEZ;->a:LFc;

    invoke-static {v0}, LFc;->a(LFc;)Ljava/lang/Object;

    move-result-object v0

    .line 535
    iget-object v1, p0, LEZ;->a:LFc;

    invoke-static {v1}, LFc;->a(LFc;)LFc;

    move-result-object v1

    iput-object v1, p0, LEZ;->a:LFc;

    .line 536
    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
