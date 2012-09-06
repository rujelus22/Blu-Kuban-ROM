.class Ln/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/aI;


# instance fields
.field final synthetic a:Ln/aF;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Ln/aF;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 574
    iput-object p1, p0, Ln/aJ;->a:Ln/aF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput v0, p0, Ln/aJ;->b:I

    .line 579
    iput v0, p0, Ln/aJ;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ln/aF;Ln/aG;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-direct {p0, p1}, Ln/aJ;-><init>(Ln/aF;)V

    return-void
.end method


# virtual methods
.method public a()Ln/l;
    .registers 4

    .prologue
    .line 588
    iget-object v0, p0, Ln/aJ;->a:Ln/aF;

    invoke-static {v0}, Ln/aF;->b(Ln/aF;)[Ln/l;

    move-result-object v0

    iget v1, p0, Ln/aJ;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ln/aJ;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b()Ln/l;
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Ln/aJ;->a:Ln/aF;

    invoke-static {v0}, Ln/aF;->b(Ln/aF;)[Ln/l;

    move-result-object v0

    iget v1, p0, Ln/aJ;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 604
    iget v0, p0, Ln/aJ;->b:I

    iput v0, p0, Ln/aJ;->c:I

    .line 605
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 609
    iget v0, p0, Ln/aJ;->c:I

    iput v0, p0, Ln/aJ;->b:I

    .line 610
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 583
    iget v0, p0, Ln/aJ;->b:I

    iget-object v1, p0, Ln/aJ;->a:Ln/aF;

    invoke-static {v1}, Ln/aF;->b(Ln/aF;)[Ln/l;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 574
    invoke-virtual {p0}, Ln/aJ;->a()Ln/l;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 594
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
