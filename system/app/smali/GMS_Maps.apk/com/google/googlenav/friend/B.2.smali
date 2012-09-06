.class Lcom/google/googlenav/friend/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cK;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/friend/t;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/t;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/googlenav/friend/B;->b:Lcom/google/googlenav/friend/t;

    iput-object p2, p0, Lcom/google/googlenav/friend/B;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/googlenav/friend/aK;)V
    .registers 3
    .parameter

    .prologue
    .line 625
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/friend/aK;->a(I)V

    .line 626
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->y()V

    .line 627
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 631
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 601
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 602
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    .line 603
    iget-object v2, p0, Lcom/google/googlenav/friend/B;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 604
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/B;->a(Lcom/google/googlenav/friend/aK;)V

    .line 608
    iget-object v2, p0, Lcom/google/googlenav/friend/B;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v2}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v2

    invoke-virtual {v2}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/friend/aM;->a(Ljava/lang/Long;)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_2d

    .line 611
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/B;->a(Lcom/google/googlenav/friend/aK;)V

    .line 601
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 616
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/friend/B;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->J()V

    .line 618
    iget-object v0, p0, Lcom/google/googlenav/friend/B;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaM/X;->a(B)V

    .line 621
    iget-object v0, p0, Lcom/google/googlenav/friend/B;->b:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->e(Lcom/google/googlenav/friend/t;)Lcom/google/googlenav/friend/p;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;J)V

    .line 622
    return-void
.end method
