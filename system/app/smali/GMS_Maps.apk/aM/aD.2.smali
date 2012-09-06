.class public LaM/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/F;


# instance fields
.field private final a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaM/aD;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, LaM/aD;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 539
    return-void
.end method

.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 569
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 553
    return-void
.end method

.method public a(LaM/aE;)V
    .registers 3
    .parameter

    .prologue
    .line 534
    iget-object v0, p0, LaM/aD;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 3
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, LaM/aD;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/E;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)I
    .registers 2
    .parameter

    .prologue
    .line 578
    return p1
.end method

.method public d()B
    .registers 2

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)LaM/aE;
    .registers 3
    .parameter

    .prologue
    .line 542
    invoke-virtual {p0, p1}, LaM/aD;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, LaM/aE;

    return-object v0
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, LaM/aD;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
