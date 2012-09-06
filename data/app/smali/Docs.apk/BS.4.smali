.class LBS;
.super Ljava/lang/Object;
.source "StringTree.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "LBV",
        "<TNodeOwner;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LBQ;

.field a:LBV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBV",
            "<TNodeOwner;>;"
        }
    .end annotation
.end field

.field a:LFr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFr",
            "<",
            "LBW",
            "<TNodeOwner;>;>;"
        }
    .end annotation
.end field

.field a:Z

.field final synthetic b:LBV;

.field final synthetic b:LFr;


# direct methods
.method constructor <init>(LBQ;LBV;LFr;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, LBS;->a:LBQ;

    iput-object p2, p0, LBS;->b:LBV;

    iput-object p3, p0, LBS;->b:LFr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, LBS;->a:Z

    .line 402
    iget-object v0, p0, LBS;->b:LBV;

    iput-object v0, p0, LBS;->a:LBV;

    .line 403
    iget-object v0, p0, LBS;->b:LFr;

    iput-object v0, p0, LBS;->a:LFr;

    return-void
.end method


# virtual methods
.method public a()LBV;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBV",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, LBS;->a:LBV;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v1, p0, LBS;->a:LBV;

    .line 414
    iget-boolean v0, p0, LBS;->a:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, LBS;->a:LBV;

    invoke-virtual {v0}, LBV;->a()LBV;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 415
    iget-object v0, p0, LBS;->a:LBV;

    invoke-virtual {v0}, LBV;->a()LBV;

    move-result-object v0

    iput-object v0, p0, LBS;->a:LBV;

    .line 429
    :cond_1b
    :goto_1b
    return-object v1

    .line 417
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, LBS;->a:Z

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, LBS;->a:LBV;

    .line 419
    :cond_22
    iget-object v0, p0, LBS;->a:LFr;

    iget-object v2, p0, LBS;->a:LBQ;

    invoke-static {v2}, LBQ;->a(LBQ;)LEY;

    move-result-object v2

    invoke-virtual {v2}, LEY;->b()LFb;

    move-result-object v2

    if-eq v0, v2, :cond_1b

    .line 420
    iget-object v0, p0, LBS;->a:LFr;

    invoke-interface {v0}, LFr;->a()LFr;

    move-result-object v0

    iput-object v0, p0, LBS;->a:LFr;

    .line 421
    iget-object v0, p0, LBS;->a:LFr;

    invoke-interface {v0}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBW;

    .line 423
    if-eqz v0, :cond_22

    invoke-virtual {v0}, LBW;->a()LBV;

    move-result-object v2

    invoke-virtual {v2}, LBV;->a()LBW;

    move-result-object v2

    if-ne v2, v0, :cond_22

    .line 424
    iget-object v0, p0, LBS;->a:LFr;

    invoke-interface {v0}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBW;

    invoke-virtual {v0}, LBW;->a()LBV;

    move-result-object v0

    iput-object v0, p0, LBS;->a:LBV;

    goto :goto_1b
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, LBS;->a:LBV;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 400
    invoke-virtual {p0}, LBS;->a()LBV;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 434
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
