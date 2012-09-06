.class LafB;
.super Lafl;
.source "CharMatcher.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lafl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lafl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0}, Lafl;-><init>()V

    .line 622
    iput-object p1, p0, LafB;->a:Ljava/util/List;

    .line 623
    return-void
.end method


# virtual methods
.method public a(Lafl;)Lafl;
    .registers 4
    .parameter

    .prologue
    .line 635
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LafB;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 636
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v1, LafB;

    invoke-direct {v1, v0}, LafB;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method a(LafA;)V
    .registers 4
    .parameter

    .prologue
    .line 641
    iget-object v0, p0, LafB;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafl;

    .line 642
    invoke-virtual {v0, p1}, Lafl;->a(LafA;)V

    goto :goto_6

    .line 644
    :cond_16
    return-void
.end method

.method public a(C)Z
    .registers 4
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, LafB;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafl;

    .line 627
    invoke-virtual {v0, p1}, Lafl;->a(C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 628
    const/4 v0, 0x1

    .line 631
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
