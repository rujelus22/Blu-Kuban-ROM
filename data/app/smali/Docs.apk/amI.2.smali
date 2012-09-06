.class final LamI;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Lame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 595
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Lame;
    .registers 5
    .parameter

    .prologue
    .line 597
    sget-object v0, LamP;->a:[I

    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v1

    invoke-virtual {v1}, Lana;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 599
    :pswitch_15
    new-instance v0, Lamk;

    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lamk;-><init>(Ljava/lang/String;)V

    .line 623
    :goto_1e
    return-object v0

    .line 601
    :pswitch_1f
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v1

    .line 602
    new-instance v0, Lamk;

    new-instance v2, Lamq;

    invoke-direct {v2, v1}, Lamq;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lamk;-><init>(Ljava/lang/Number;)V

    goto :goto_1e

    .line 604
    :pswitch_2e
    new-instance v0, Lamk;

    invoke-virtual {p1}, LamW;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lamk;-><init>(Ljava/lang/Boolean;)V

    goto :goto_1e

    .line 606
    :pswitch_3c
    invoke-virtual {p1}, LamW;->e()V

    .line 607
    sget-object v0, Lamg;->a:Lamg;

    goto :goto_1e

    .line 609
    :pswitch_42
    new-instance v0, Lamd;

    invoke-direct {v0}, Lamd;-><init>()V

    .line 610
    invoke-virtual {p1}, LamW;->a()V

    .line 611
    :goto_4a
    invoke-virtual {p1}, LamW;->b()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 612
    invoke-virtual {p0, p1}, LamI;->a(LamW;)Lame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamd;->a(Lame;)V

    goto :goto_4a

    .line 614
    :cond_58
    invoke-virtual {p1}, LamW;->b()V

    goto :goto_1e

    .line 617
    :pswitch_5c
    new-instance v0, Lamh;

    invoke-direct {v0}, Lamh;-><init>()V

    .line 618
    invoke-virtual {p1}, LamW;->c()V

    .line 619
    :goto_64
    invoke-virtual {p1}, LamW;->b()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 620
    invoke-virtual {p1}, LamW;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, LamI;->a(LamW;)Lame;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lamh;->a(Ljava/lang/String;Lame;)V

    goto :goto_64

    .line 622
    :cond_76
    invoke-virtual {p1}, LamW;->d()V

    goto :goto_1e

    .line 597
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2e
        :pswitch_15
        :pswitch_3c
        :pswitch_42
        :pswitch_5c
    .end packed-switch
.end method

.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 595
    invoke-virtual {p0, p1}, LamI;->a(LamW;)Lame;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanb;Lame;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 634
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lame;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 635
    :cond_8
    invoke-virtual {p1}, Lanb;->e()Lanb;

    .line 664
    :goto_b
    return-void

    .line 636
    :cond_c
    invoke-virtual {p2}, Lame;->d()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 637
    invoke-virtual {p2}, Lame;->a()Lamk;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lamk;->g()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 639
    invoke-virtual {v0}, Lamk;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanb;->a(Ljava/lang/Number;)Lanb;

    goto :goto_b

    .line 640
    :cond_24
    invoke-virtual {v0}, Lamk;->f()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 641
    invoke-virtual {v0}, Lamk;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lanb;->a(Z)Lanb;

    goto :goto_b

    .line 643
    :cond_32
    invoke-virtual {v0}, Lamk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    goto :goto_b

    .line 646
    :cond_3a
    invoke-virtual {p2}, Lame;->b()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 647
    invoke-virtual {p1}, Lanb;->a()Lanb;

    .line 648
    invoke-virtual {p2}, Lame;->a()Lamd;

    move-result-object v0

    invoke-virtual {v0}, Lamd;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;

    .line 649
    invoke-virtual {p0, p1, v0}, LamI;->a(Lanb;Lame;)V

    goto :goto_4b

    .line 651
    :cond_5b
    invoke-virtual {p1}, Lanb;->b()Lanb;

    goto :goto_b

    .line 653
    :cond_5f
    invoke-virtual {p2}, Lame;->c()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 654
    invoke-virtual {p1}, Lanb;->c()Lanb;

    .line 655
    invoke-virtual {p2}, Lame;->a()Lamh;

    move-result-object v0

    invoke-virtual {v0}, Lamh;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 656
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lanb;->a(Ljava/lang/String;)Lanb;

    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;

    invoke-virtual {p0, p1, v0}, LamI;->a(Lanb;Lame;)V

    goto :goto_74

    .line 659
    :cond_93
    invoke-virtual {p1}, Lanb;->d()Lanb;

    goto/16 :goto_b

    .line 662
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 595
    check-cast p2, Lame;

    invoke-virtual {p0, p1, p2}, LamI;->a(Lanb;Lame;)V

    return-void
.end method
